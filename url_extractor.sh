#!/bin/bash


# Tool Info
TOOL_NAME="URL Extractor | Designed By YogSec"
TOOL_VERSION="1.1"

# Colors
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"

# Show Header Every Time
echo -e "${GREEN}"
cat << "EOF"
#======================================================
#            URL Extractor | Designed By YogSec
#======================================================
EOF
echo -e "${RESET}"

# Show Help
show_help() {
    echo -e "${GREEN}$TOOL_NAME${RESET}"
    echo "Usage: ./url_extractor.sh [options]"
    echo
    echo "Options:"
    echo "  -u <file>     Extract URLs from a single file"
    echo "  -l <folder>   Extract URLs from all files in a folder"
    echo "  -s <file>     Save extracted URLs to specified file"
    echo "  -v            Show tool version"
    echo "  -h            Show help message"
    echo
    exit 0
}

# Show Version
show_version() {
    echo "$TOOL_NAME - Version $TOOL_VERSION"
    exit 0
}

# URL Extraction Logic
extract_urls() {
    grep -Eo 'https?://[a-zA-Z0-9./?=_-]*'
}

# Process Single File
process_single_file() {
    local file="$1"
    if [[ ! -f "$file" ]]; then
        echo -e "${YELLOW}[!] File not found: $file${RESET}"
        exit 1
    fi
    echo -e "${GREEN}Extracting URLs from $file${RESET}"

    if [[ -n "$SAVE_FILE" ]]; then
        extract_urls < "$file" | tee -a "$SAVE_FILE"
    else
        extract_urls < "$file"
    fi
}

# Process Folder with Concurrency
process_folder() {
    local folder="$1"
    if [[ ! -d "$folder" ]]; then
        echo -e "${YELLOW}[!] Folder not found: $folder${RESET}"
        exit 1
    fi

    temp_file=$(mktemp)
    find "$folder" -type f | while read -r file; do
        (
            echo -e "${GREEN}Processing: $file${RESET}"
            if [[ -n "$SAVE_FILE" ]]; then
                extract_urls < "$file" | tee -a "$temp_file"
            else
                extract_urls < "$file"
            fi
        ) &
    done
    wait

    if [[ -n "$SAVE_FILE" ]]; then
        sort -u "$temp_file" >> "$SAVE_FILE"
        rm -f "$temp_file"
    fi
}

# Argument Parsing
if [[ $# -eq 0 ]]; then
    show_help
fi

single_file=""
folder_path=""
SAVE_FILE=""

while getopts ":u:l:s:vh" opt; do
    case $opt in
        u) single_file="$OPTARG";;
        l) folder_path="$OPTARG";;
        s) SAVE_FILE="$OPTARG";;
        v) show_version;;
        h) show_help;;
        *) show_help;;
    esac
done

# Run
if [[ -n "$single_file" ]]; then
    process_single_file "$single_file"
elif [[ -n "$folder_path" ]]; then
    process_folder "$folder_path"
else
    show_help
fi

if [[ -n "$SAVE_FILE" ]]; then
    echo -e "${GREEN}Saved URLs to: $SAVE_FILE${RESET}"
fi
