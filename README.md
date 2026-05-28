# Devin Cosmetic Fix Automation

## Overview

This repository contains the scripts for an automated workflow that uses Devin to resolve cosmetic UI bugs in the [attfarhan/superset-auto](https://github.com/attfarhan/superset-auto) repository (a fork of [apache/superset](https://github.com/apache/superset)). The workflow is triggered by creating issues with the `bug:cosmetic` label in the `superset-auto` repository. 

Running `docker compose up --build` in this repo handles that triggering step (see the [Trigger Workflow](#trigger-workflow) section below for full instructions) and kicks off the automation.

The automation will read the issue containing a cosmetic UI bugs, and then start a Devin session and prompt the agent to fix the issue. The agent will then implement a fix, open a PR and include before/after screenshots of the bug in the description. Any iterations that the user wants Devin to make can be triggered by commenting feedback in the PR.

## What's in this repo

In addition to the trigger script, this repo contains copies of the automation scripts for reading purposes. The versions that are actually run live in the [attfarhan/superset-auto](https://github.com/attfarhan/superset-auto) repository and are triggered when `bug:cosmetic` issues are created:

- `scripts/devin_automation.py` — main automation script
- `scripts/devin-cosmetic-fix.yml` — GitHub Actions workflow
- `scripts/devin_prompt.txt` — prompt template for Devin
- `scripts/capture_screenshots.py` — screenshot capture script

## Trigger Workflow

### Prerequisites

- Docker and Docker Compose
- A GitHub personal access token with `issue` scope, and BOTH `read` and `write` permissions

### Issue files

Issues live in the `issues/` directory. There are already 3 pre-written issues in this repository, so there is no need to add additional files. Each file must be named `issue-*.md` and follow this format:

```
Title: Your issue title here

Body:

Your issue body here (supports full Markdown).
```

### Running

Export your GitHub token, then run with Docker Compose:

```bash
export GITHUB_TOKEN=your_token_here
docker compose up --build
```

By default, issues are created in the `attfarhan/superset-auto` repository. To target a different repo:

```bash
GITHUB_REPO=owner/repo docker compose up --build
```

### Running without Docker

```bash
export GITHUB_TOKEN=your_token_here
export ISSUES_DIR=./issues
export GITHUB_REPO=owner/repo  # optional, defaults to attfarhan/superset-auto
bash create_issues.sh
```

The script requires the [GitHub CLI](https://cli.github.com/) (`gh`) to be installed.
