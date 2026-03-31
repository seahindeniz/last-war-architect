#!/usr/bin/env bash
# Cross-platform sound player for Claude Code hooks
# Usage: play.sh <sound_name>  (e.g., play.sh hero, play.sh pop)

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOUND_FILE="$SCRIPT_DIR/$1.wav"

if [ ! -f "$SOUND_FILE" ]; then
    echo "Sound not found: $SOUND_FILE" >&2
    exit 1
fi

case "$(uname -s)" in
    Darwin)
        afplay "$SOUND_FILE" &
        ;;
    Linux)
        if grep -qiE '(microsoft|wsl)' /proc/version 2>/dev/null; then
            # WSL: convert path and use PowerShell
            WIN_PATH="$(wslpath -w "$SOUND_FILE")"
            powershell.exe -NoProfile -Command "(New-Object Media.SoundPlayer '$WIN_PATH').PlaySync()" &
        elif command -v paplay >/dev/null 2>&1; then
            paplay "$SOUND_FILE" &
        elif command -v aplay >/dev/null 2>&1; then
            aplay -q "$SOUND_FILE" &
        fi
        ;;
    MINGW*|MSYS*|CYGWIN*)
        # Git Bash / MSYS2 on Windows
        WIN_PATH="$(cygpath -w "$SOUND_FILE")"
        powershell.exe -NoProfile -Command "(New-Object Media.SoundPlayer '$WIN_PATH').PlaySync()" &
        ;;
esac

exit 0
