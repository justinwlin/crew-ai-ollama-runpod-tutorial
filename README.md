# Overview
Example repository of deploying to Runpod with crewai + ollama for agent workflow.
Referenced off of: https://github.com/runpod-workers/worker-template

## Example Request:
```
{
  "input": {
    "topics": "technology"
  }
}
```

## Example Response
```
{
  "delayTime": 14836,
  "executionTime": 10799,
  "id": "4c04615b-540f-4d82-917d-4eb4256acd96-u1",
  "output": {
    "blog_post": "Title: The Future of Technology: A Promising Horizon\n\nIntroduction:\nTechnology has been a driving force behind human progress, constantly evolving to meet the challenges of our time. In recent years, the pace of technological advancements has accelerated, and we stand on the precipice of an exciting new era. This blog post explores the current state of technology, highlights its most promising trends, and looks forward to what's in store for the future.\n\nMain Points:\n1. The Unrelenting Importance of Technology: As per recent research, 82% of industry leaders consider technology a pivotal area of focus, demonstrating its significance in shaping our world. From healthcare and education to communication and entertainment, technology continues to transform our daily lives.\n2. Rising Research Investments: Last year alone, spending on technology-related research grew by an impressive 34%. This surge in investment highlights the growing belief that technological innovation will be a primary catalyst for economic growth and societal progress.\n3. Soaring Consumer Interest: Consumer interest in technology has soared since 2022, with a staggering 56% increase recorded. This rapid growth is a testament to the increasing role of technology in our lives and its ability to address the evolving needs and desires of individuals worldwide.\n4. A Promising Horizon: Experts predict that the next five years will bring significant advancements in technology. From artificial intelligence and quantum computing to breakthroughs in biotechnology, the future promises a world of endless possibilities and new frontiers to explore.\n\nConclusion:\nThe future of technology is undoubtedly bright, with innovation driving us towards a more connected, efficient, and prosperous society. As we forge ahead into this exciting new era, it's crucial that we continue to invest in research, foster collaboration, and embrace the transformative potential of technology. Our collective commitment to harnessing its power will determine the extent to which we can leverage technology to overcome global challenges and shape a better tomorrow for all.\n\nCall to Action:\nJoin the conversation on social media using #FutureOfTech and share your thoughts about how technology is changing our world. Let's engage in a dialogue that fosters understanding, inspiration, and collective action towards an even brighter future.",
    "status": "success"
  },
  "status": "COMPLETED",
  "workerId": "fy17taoa4pyz2c"
}
```