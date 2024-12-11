# zs - Enter the world of TODO-driven development.

![](https://raw.githubusercontent.com/unrizen/zs/refs/heads/dev/demo.gif)

Designed for use with groq + nixos + vim.

# How to Install
**Setup your $GROQ_API_KEY**

Find it here: [https://console.groq.com/keys](https://console.groq.com/keys)

**Paste this command for a quick install to ~/.local/bin/zs**

```sh
FILE_PATH="$HOME/.local/bin/zs"; DOWNLOAD_URL="https://raw.githubusercontent.com/unrizen/zs/refs/heads/dev/zs"; if [ -f "$FILE_PATH" ]; then echo "The file $FILE_PATH already exists."; read -p "Do you want to overwrite it? (y/n): " answer; case $answer in [Yy]* ) echo "Proceeding with download."; curl -L -o "$FILE_PATH" "$DOWNLOAD_URL" && echo "Download completed successfully." && chmod +x "$FILE_PATH" && echo "Made $FILE_PATH executable." || echo "Download failed.";; * ) echo "Aborting operation.";; esac; else echo "Downloading zs."; curl -L -o "$FILE_PATH" "$DOWNLOAD_URL" && echo "Download completed successfully." && chmod +x "$FILE_PATH" && echo "Made $FILE_PATH executable." || echo "Download failed."; fi
```

# How to Use
Just highlight a snippet of code in vim and pipe it to `zs`. Todo items found within the snippet will be completed and injected back into the buffer.
```
:'<,'>!zs
```

# How to Contribute

Submit an issue is you find any bugs.

Currently accepting PRs for the following issues:
- [ ] [nixos packaging](https://github.com/unrizen/zs/issues/1)
- [ ] [env var validation](https://github.com/unrizen/zs/issues/2)
- [ ] [language-specific error formatting](https://github.com/unrizen/zs/issues/3)

Any help is appreciated ❤️

# Support
[Join the Discord](https://discord.gg/kABMK5pHAA) or [𝕏.com/_unrizen](https://x.com/_unrizen)
