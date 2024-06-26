#!/bin/bash

# Check if a directory is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Read the directory
DIR=$1

# Check if the directory exists
if [ ! -d "$DIR" ]; then
  echo "Directory not found!"
  exit 1
fi

# Check if README.md exists in the directory
FILE="$DIR/README.md"
if [ ! -f "$FILE" ]; then
  echo "README.md not found in the directory!"
  exit 1
fi

# Function to process Markdown
process_markdown() {
  while IFS= read -r line; do
    # Process headers
    if [[ "$line" =~ ^\#{1,6}\  ]]; then
      level=$(echo "$line" | grep -o '^#*' | wc -c)
      level=$((level - 1))
      line=$(echo "$line" | sed 's/^#* //')
      case $level in
        1) echo -e "\033[1;34m$line\033[0m" ;;  # Header 1 (blue)
        2) echo -e "\033[1;32m$line\033[0m" ;;  # Header 2 (green)
        3) echo -e "\033[1;36m$line\033[0m" ;;  # Header 3 (cyan)
        4) echo -e "\033[1;35m$line\033[0m" ;;  # Header 4 (magenta)
        5) echo -e "\033[1;33m$line\033[0m" ;;  # Header 5 (yellow)
        6) echo -e "\033[1;31m$line\033[0m" ;;  # Header 6 (red)
      esac
    
    # Process bold
    elif [[ "$line" =~ \*\* ]]; then
      line=$(echo "$line" | sed -e 's/\*\*\([^\*]*\)\*\*/\x1B[1m\1\x1B[0m/g')
      echo -e "$line"
    
    # Process italics
    elif [[ "$line" =~ \* ]]; then
      line=$(echo "$line" | sed -e 's/\*\([^\*]*\)\*/\x1B[3m\1\x1B[0m/g')
      echo -e "$line"
    
    # Process code blocks
    elif [[ "$line" =~ ^\`\`\` ]]; then
      if [ "$in_code_block" == "true" ]; then
        in_code_block=false
      else
        in_code_block=true
      fi
    elif [ "$in_code_block" == "true" ]; then
      echo -e "\e[7m$line\e[0m"
    
    # Default case, just print the line
    else
      echo "$line"
    fi
  done < "$FILE"
}

# Initial state
in_code_block=false

# Process the README.md file
process_markdown
