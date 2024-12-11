# zs
Enter the world of TODO-driven development.

![](https://raw.githubusercontent.com/unrizen/zs/refs/heads/dev/demo.gif)

Designed for use with groq + nixos + vim.

# How to use
**1. Setup your $GROQ_API_KEY**

Find it here: [https://console.groq.com/keys](https://console.groq.com/keys)

**2. Copy+paste this command for a quick install**

```sh
FILE_PATH="$HOME/.local/bin/zs"; DOWNLOAD_URL="https://raw.githubusercontent.com/unrizen/zs/refs/heads/dev/zs"; if [ -f "$FILE_PATH" ]; then echo "The file $FILE_PATH already exists."; read -p "Do you want to overwrite it? (y/n): " answer; case $answer in [Yy]* ) echo "Proceeding with download."; curl -L -o "$FILE_PATH" "$DOWNLOAD_URL" && echo "Download completed successfully." && chmod +x "$FILE_PATH" && echo "Made $FILE_PATH executable." || echo "Download failed.";; * ) echo "Aborting operation.";; esac; else echo "Downloading zs."; curl -L -o "$FILE_PATH" "$DOWNLOAD_URL" && echo "Download completed successfully." && chmod +x "$FILE_PATH" && echo "Made $FILE_PATH executable." || echo "Download failed."; fi
```

**3. Highlight your snippet in vim and send it to `zs`**

```
:'<,'>!zs
```
