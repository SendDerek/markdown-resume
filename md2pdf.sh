#!/bin/bash

# Script to convert markdown resume to PDF
# Usage: ./md2pdf.sh /path/to/file.md

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No markdown file specified"
    echo "Usage: $0 /path/to/file.md"
    exit 1
fi

# Get the input file
INPUT_FILE="$1"

# Check if file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: File '$INPUT_FILE' not found"
    exit 1
fi

# Check if file has .md extension
if [[ ! "$INPUT_FILE" =~ \.md$ ]]; then
    echo "Warning: File doesn't have .md extension, continuing anyway..."
fi

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Auto-detect if this is a cover letter based on filename
if [[ "$INPUT_FILE" =~ cover.*letter|letter.*cover|cover-letter ]]; then
    CONFIG_FILE="$SCRIPT_DIR/cover-letter-config.json"
    DOC_TYPE="cover letter"
else
    CONFIG_FILE="$SCRIPT_DIR/config.json"
    DOC_TYPE="resume"
fi

# Check if config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Warning: Config file not found at $CONFIG_FILE"
    echo "Running md-to-pdf without config..."
    md-to-pdf "$INPUT_FILE"
else
    echo "Converting $INPUT_FILE to PDF as $DOC_TYPE using $(basename $CONFIG_FILE)..."
    md-to-pdf "$INPUT_FILE" --config-file "$CONFIG_FILE"
fi

# Check if conversion was successful
if [ $? -eq 0 ]; then
    # Get output filename
    OUTPUT_FILE="${INPUT_FILE%.md}.pdf"
    echo "✓ Successfully created: $OUTPUT_FILE"
else
    echo "✗ Conversion failed"
    exit 1
fi
