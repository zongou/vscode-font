# VSCode Font Extension

A file icon theme based on [Seti](https://github.com/microsoft/vscode/blob/main/extensions/theme-seti/icons/vs-seti-icon-theme.json)

With this extension we can:

- Apply this font in the web version of Visual Studio Code.
- Apply this font without installing to system.

---

## To apply this font

```json
  "workbench.iconTheme": "vs-seti-{{FONT_ID}}",
  "editor.fontFamily": "'{{FONT_NAME}}', 'Droid Sans Mono', 'monospace', monospace",
  "editor.fontLigatures": true,
  "terminal.integrated.fontLigatures.enabled": true,
```
