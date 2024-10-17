# URL Shortener

This URL shortener application is built with Node.js, Fastify and PostgreSQL. It serves as a demo on how to use docker and docker compose to run a production build of a Full-stack web app.

![URL Shortener Application](screenshot.png)

## 🟢 Prerequisites

- Prior Node.js development experience.
- Familiarity with the Linux command-line.
- Access to a Linux machine with
  [Docker Engine](https://docs.docker.com/engine/install/) installed.

## Getting started


- Clone this repo to your machine:

```bash
git clone https://github.com/marekzelinka/url-shortener
```

- Execute the command below to start the production server:

```bash
docker compose up --build
```

- Visit http://localhost:5000 in your browser.

## How to use

- Enter a URL into the input field and click **Shorten!**. The shortened URL
  will be displayed on the page.
- Click the **Visit** button to open the shortened URL in a new tab. It should
  redirect you to the original URL.

## Credits

- **Tutorial**:
[A Comprehensive Guide to Dockerizing Node.js Applications](https://betterstack.com/community/guides/scaling-nodejs/dockerize-nodejs/)