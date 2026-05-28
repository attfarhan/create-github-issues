Title: Select dropdown width is too narrow in Edit Role / Permissions

Body:

### Bug description

Superset version: 6.0.0

When editing or creating a role in Superset 6.0.0, the dropdown menu for the **Permissions** field has a fixed/narrow width. Because permission names in Superset can be quite long, the text gets severely truncated (cut off), making it very difficult to distinguish between different permissions (e.g., distinguishing various `can add ...` or `all datasource ...` rules).

The dropdown width should ideally match the width of the input field or dynamically expand to fit the content.

### Screenshots/recordings

<img width="1253" height="669" alt="Image" src="https://github.com/user-attachments/assets/49bdabeb-3da4-41bb-8b91-d98e42f49e5c" />

### Superset version

master / latest-dev

### Python version

3.9

### Node version

16

### Browser

Chrome

### Additional context

_No response_

### Checklist

- [ ] I have searched Superset docs and Slack and didn't find a solution to my problem.
- [ ] I have searched the GitHub issue tracker and didn't find a similar bug report.
- [ ] I have checked Superset's logs for errors and if I found a relevant Python stacktrace, I included it here as text in the "additional context" section.
