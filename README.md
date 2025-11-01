# StayStory Landing Page

Modern landing page for StayStory - Digital welcome leaflets for hotels.

## About StayStory

StayStory transforms the traditional hotel welcome leaflet into an engaging, mobile-friendly digital experience. Using a familiar TikTok-style scrolling interface, guests can easily access hotel information, local attractions, and services through a simple QR code or NFC scan.

## Features

- **Responsive Design**: Beautiful landing page optimized for all devices
- **Docker Ready**: Containerized with nginx for easy deployment
- **CI/CD**: Automated build and push to GitHub Container Registry
- **Fast & Lightweight**: Static site served by nginx alpine

## Quick Start

### Running Locally

Simply open `index.html` in your browser:

```bash
open index.html
```

### Running with Docker

Build and run the Docker container:

```bash
# Build the image
docker build -t staystory-landing .

# Run the container (maps port 8080 on host to port 8080 in container)
docker run -p 8080:8080 staystory-landing
```

Then visit `http://localhost:8080` in your browser.

### Pull from GitHub Container Registry

The image is automatically built and published to GitHub Container Registry:

```bash
docker pull ghcr.io/pwlnk/staystory-landing:latest
docker run -p 8080:8080 ghcr.io/pwlnk/staystory-landing:latest
```

## Deployment

The landing page is automatically built and pushed to GitHub Container Registry on every push to the main branch.

The Docker image is available at:
```
ghcr.io/pwlnk/staystory-landing:latest
```

### Docker Compose Example

```yaml
version: '3.8'
services:
  staystory-landing:
    image: ghcr.io/pwlnk/staystory-landing:latest
    ports:
      - "8080:8080"
    restart: unless-stopped
```

## Project Structure

```
.
├── index.html          # Main landing page
├── styles.css          # Styling
├── script.js           # JavaScript for interactions
├── Dockerfile          # Docker configuration
├── nginx.conf          # Nginx server configuration
├── .dockerignore       # Docker ignore file
├── .gitignore          # Git ignore file
└── .github/
    └── workflows/
        └── docker-publish.yml  # CI/CD workflow
```

## Development

The landing page is a static site built with vanilla HTML, CSS, and JavaScript. No build process required.

### Making Changes

1. Edit `index.html`, `styles.css`, or `script.js`
2. Test locally by opening `index.html` in a browser
3. Commit and push changes
4. GitHub Actions will automatically build and push the Docker image

## License

All rights reserved.
