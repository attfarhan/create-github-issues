Title: Dark theme rendering is malfunctioning for the Layout, Extension, and Core Components sections on the developer-docs/components/ page

Body:

## Video

https://github.com/user-attachments/assets/a0db8801-4d1f-4c56-8f67-8259e701b9f9

## Description

On the page https://superset.apache.org/developer-docs/components/, the dark mode toggle does not affect the sections under "Layout Components", "Extension Components", or "Core Components". Other documentation pages correctly toggle between dark and light mode, but these component documentation sections remain in light mode regardless of the setting.

**Steps to reproduce:**

1. Visit https://superset.apache.org/developer-docs/components/
2. Try toggling dark mode in your browser or site UI
3. Notice that the main component section content does not switch to dark mode

**Expected behavior:**  
The entire component documentation—including Layout, Extension, and Core Components—should respect the dark mode toggle and update styling accordingly.

**Browser:**  
(e.g. Chrome, Firefox, Edge, etc.)

**Superset version:**  
N/A (applies to public Superset documentation site)

**Additional context:**  
This only appears to occur for component documentation. Other pages/theme toggles work fine.
