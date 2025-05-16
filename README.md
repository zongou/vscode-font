# VSCode Font Extension

- Font for the web version of Visual Studio Code
- A file icon theme based on [Seti](https://github.com/microsoft/vscode/blob/main/extensions/theme-seti/icons/vs-seti-icon-theme.json)

## To apply this font

> settings.json

```json
  "editor.fontFamily": "{config_font_family}",
  "editor.fontLigatures": true,
  "terminal.integrated.fontLigatures.enabled": true,
```

then switch to the font family you prefer by switching 'Font Icon Theme' in Command Palette

## To enable italic and bold style

[syntax-highlight-guide](https://code.visualstudio.com/api/language-extensions/syntax-highlight-guide)

Example:

> settings.json

```json
"editor.tokenColorCustomizations": {
    "textMateRules": [
        {
            // This line should be in italic.
            "scope": [
                "comment.line"
            ],
            "settings": {
                "fontStyle": "italic"
            }
        },
        {
            /* This line should be in bold. */
            "scope": [
                "comment.block"
            ],
            "settings": {
                "fontStyle": "bold"
            }
        },
        {
            /** This line should be in italic bold. */
            "scope": [
                "comment.block.documentation"
            ],
            "settings": {
                "fontStyle": "italic bold"
            }
        }
    ]
}
```
