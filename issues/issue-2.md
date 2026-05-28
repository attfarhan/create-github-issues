Title: Long "Modified at" timestamps overflow meta cards

Body:

## Screenshot

<img width="1351" height="211" alt="Image" src="https://github.com/user-attachments/assets/952b546d-2440-4c81-b44b-5eaeb3b7126d" />

## Description

The "Modified at %s" (here using the German localization, "Geändert vor %s") metadata labels become partially obscured when the rendered timestamp string exceeds the available horizontal space. Long localized date formats are only partially visible.

## Design input

Questions for design review:

- Should timestamps wrap or truncate?
- If truncated, should full values be exposed via tooltip?
- Are there responsive layout expectations for narrow widths?

Suggested labels:

- `design:review`
