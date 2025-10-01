# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a simple personal portfolio website (juan.gallegoiv.com) served as a static HTML site using nginx in a Docker container. The entire website is a single-page application with no build process or dependencies.

## Architecture

- **Frontend**: Single `index.html` file with inline CSS and SVG icons
- **Web Server**: nginx 1.25.3-alpine serving static files
- **Deployment**: Docker container deployed via Kamal (see `config/deploy.yml`)

## Key Files

- `index.html` - Main website HTML with inline styles
- `404.html` - Custom 404 error page
- `nginx.conf` - nginx server configuration
- `Dockerfile` - Docker build copying static files to nginx
- `config/deploy.yml` - Kamal deployment configuration

## Development Commands

### Local Development

To run the site locally with Docker:
```bash
docker build -t juan-gallegoiv-site .
docker run -p 8080:80 juan-gallegoiv-site
```
Then visit http://localhost:8080

### Deployment

The site uses Kamal for deployment. Configuration is in `config/deploy.yml` (note: contains placeholder values).

## Content Structure

The website includes:
- Header with name and code icon
- Summary section (experience statement)
- Skills section (Ruby on Rails, Docker, CI/CD badges)
- Social links (GitHub, LinkedIn, Mastodon)

## Making Changes

To update content, edit `index.html` directly. The site has no build process - changes to HTML are immediately reflected when the Docker image is rebuilt.
