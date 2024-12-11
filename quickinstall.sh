#!/bin/sh

FILE_PATH="$HOME/.local/bin/zs"
DOWNLOAD_URL="https://raw.githubusercontent.com/unrizen/zs/refs/heads/dev/zs"

if [ -f "$FILE_PATH" ]; then
    echo "The file $FILE_PATH already exists."
    read -p "Do you want to overwrite it? (y/n): " answer
    case $answer in
        [Yy]* ) 
            echo "Proceeding with download..."
            ;;
        * ) 
            echo "Aborting operation."
            exit 1
            ;;
    esac
fi

echo "Downloading zs."
curl -L -o "$FILE_PATH" "$DOWNLOAD_URL"

if [ $? -eq 0 ]; then
    echo "Download completed successfully."
    chmod +x "$FILE_PATH"
    echo "Made $FILE_PATH executable."
else
    echo "Download failed."
    exit 1
fi
