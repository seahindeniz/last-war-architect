#!/bin/bash
#
# Install shared ccstatusline configuration
# This script copies the team's ccstatusline config to your local ~/.config directory
#

set -e  # Exit on error

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}Installing ccstatusline configuration...${NC}"

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_SOURCE="$SCRIPT_DIR/configs/ccstatusline-settings.json"
CONFIG_TARGET="$HOME/.config/ccstatusline/settings.json"

# Check if source config exists
if [ ! -f "$CONFIG_SOURCE" ]; then
    echo -e "${YELLOW}Error: Config file not found at $CONFIG_SOURCE${NC}"
    exit 1
fi

# Create config directory if it doesn't exist
mkdir -p "$HOME/.config/ccstatusline"

# Backup existing config if present
if [ -f "$CONFIG_TARGET" ]; then
    BACKUP_FILE="$HOME/.config/ccstatusline/settings.json.backup.$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}Backing up existing config to: $BACKUP_FILE${NC}"
    cp "$CONFIG_TARGET" "$BACKUP_FILE"
fi

# Copy the config
cp "$CONFIG_SOURCE" "$CONFIG_TARGET"

echo -e "${GREEN}✓ ccstatusline configuration installed successfully!${NC}"
echo ""
echo -e "${BLUE}Your statusline will now show:${NC}"
echo "  Line 1: Model | Version | Output Style | Git Branch | Changes | Worktree"
echo "  Line 2: Tokens (Total/In/Out/Cached) | Context % | Session Time | Cost"
echo ""
echo -e "${BLUE}Restart Claude Code to see the new statusline.${NC}"
