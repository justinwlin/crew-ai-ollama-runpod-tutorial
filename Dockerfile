FROM justinrunpod/pod-server-base:1.0

# Set python3.11 as default
RUN ln -sf $(which python3.11) /usr/local/bin/python && \
    ln -sf $(which python3.11) /usr/local/bin/python3

# Install system dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget git libcudnn8 libcudnn8-dev lshw curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip && \
    pip install uv && \
    uv pip install --upgrade -r /requirements.txt --no-cache-dir && \
    uv pip install "langchain-community>=0.0.34" --no-cache-dir && \
    python -c "import crewai; print(f'\nCrewAI version: {crewai.__version__}')" && \
    python -c "import crewai_tools; print('CrewAI Tools import successful')"

# Install specific litellm fork
RUN pip uninstall -y litellm && \
    pip install git+https://github.com/justinwlin/litellm.git@main --no-deps

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Create required directories
RUN mkdir -p /root/.ollama/models

# Download model during build
RUN ollama serve > /dev/null 2>&1 & \
    sleep 25 && \
    ollama pull openhermes && \
    pkill ollama

# Add application files
ADD handler.py .
ADD start.sh /start.sh
RUN chmod +x /start.sh

# Startup script
CMD ["/start.sh"]