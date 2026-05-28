FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    gpg \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg \
      | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
      > /etc/apt/sources.list.d/github-cli.list && \
    apt-get update && apt-get install -y gh && \
    rm -rf /var/lib/apt/lists/*

COPY create_issues.sh /usr/local/bin/create_issues.sh
RUN chmod +x /usr/local/bin/create_issues.sh

ENTRYPOINT ["/usr/local/bin/create_issues.sh"]
