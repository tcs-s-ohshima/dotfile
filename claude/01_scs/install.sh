 #!/usr/bin/env bash                                                                                                  
  set -euo pipefail

  SRC_DIR="$(cd "$(dirname "$0")" && pwd)"                                                                             
  SRC_FILE="$SRC_DIR/claude/01_scs/CLAUDE.md"
  DEST_DIR="$HOME/.claude"                                                                                             
  DEST_FILE="$DEST_DIR/CLAUDE.md"
                                                                                                                       
  if [ ! -f "$SRC_FILE" ]; then
    echo "[dotfiles] source not found: $SRC_FILE" >&2                                                                  
    exit 1                                                                                                             
  fi
                                                                                                                       
  mkdir -p "$DEST_DIR"
  cp "$SRC_FILE" "$DEST_FILE"
  echo "[dotfiles] installed -> $DEST_FILE"