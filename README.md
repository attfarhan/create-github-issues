# create-github-issues

Creates GitHub issues from Markdown files using Docker and the GitHub CLI.

## Prerequisites

- Docker and Docker Compose
- A GitHub personal access token with `issue` scope, and BOTH `read` and `write` permissions

## Issue files

Issues live in the `issues/` directory. Each file must be named `issue-*.md` and follow this format:

```
Title: Your issue title here

Body:

Your issue body here (supports full Markdown).
```

Add, edit, or remove files in `issues/` to control what gets created.

## Running

Export your GitHub token, then run with Docker Compose:

```bash
export GITHUB_TOKEN=your_token_here
docker compose up --build
```

By default, issues are created in the `attfarhan/superset-auto` repository. To target a different repo:

```bash
GITHUB_REPO=owner/repo docker compose up --build
```

## Running without Docker

```bash
export GITHUB_TOKEN=your_token_here
export ISSUES_DIR=./issues
export GITHUB_REPO=owner/repo  # optional, defaults to attfarhan/superset-auto
bash create_issues.sh
```

The script requires the [GitHub CLI](https://cli.github.com/) (`gh`) to be installed.
