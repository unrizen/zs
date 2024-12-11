#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p python3Packages.requests

import requests
import json
import sys
import os

ENDPOINT = "https://api.groq.com/openai/v1/chat/completions"
MODEL = "llama-3.3-70b-versatile"
INST = "Complete all TODOs within the supplied code snippet. Respond only with the raw, modified snipped. Your response will replace the original snippet. DO NOT WRAP YOUR RESPONSE IN A CODE BLOCK."

token = os.environ.get("GROQ_API_KEY")
stdin = sys.stdin.read()
data = {
    "model": MODEL,
    "messages": [
        {
            "role": "system",
            "content": INST
        },
        {
            "role": "user",
            "content": stdin 
        }
    ]
}

try:
    response = requests.post(ENDPOINT, json=data, headers={
        'Authorization': f'Bearer {token}'
    })
    response.raise_for_status()
    content = response.json()["choices"][0]["message"]["content"]
    sys.stdout.buffer.write(content.encode('utf-8'))
except Exception as e:
    print(f"// ZS error: {e}\n{stdin}")
    sys.exit(1)
