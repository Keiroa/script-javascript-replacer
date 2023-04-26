#!/bin/bash

echo ". . . . . STARTING SCRIPT FOR RECURSIVE JS REPLACEMENT SCRIPT . . . . ."

string_format() {
  # Format string to be able to be utilized by Bash
  local given_string="${1}"
  local formatted_string=""

    # Loop through each character in the string
    for (( i=0; i<${#given_string} ; i++ )); do
        # Get the current character
        local char="${given_string:i:1}"
        # If the current character is a backslash, add an extra backslash
        if [ "$char" == '\' ]; then
            formatted_string+="\\$char"
        
        # If the current character is a single quote or a forward slash, add a backslash
        elif [[ "$char" == "'" || "$char" == "/" ]]; then
            formatted_string+="\\$char"

        # Otherwise, just add the character as is
        else
            formatted_string+="$char"
        fi
    done

    echo "$formatted_string"
}

string_format_quote() {
  sed "s/\"/'/g"
}

script() {
  # Prompt for user input
  read -p "> Enter the original string you would like replaced: " ORIG_STRING
  read -p "> Enter the new string to replace the original: " NEW_STRING
  FORMATTED_ORIG_STRING=$(string_format "$ORIG_STRING")
  FORMATTED_NEW_STRING=$(string_format "$NEW_STRING")

  read -p "> Enter directory to search for the original string: " search_directory

  # Finds directories in our directory specified, using find command under option -d (directory)
  for directory in $(find "$search_directory" -type d); do
    # Finds files in current active directory
    echo "> - - - DIRECTORY: $directory:"
    for file in $(find "$directory" -name "*.js" -type f); do
      # Search for instances of ORIG_STRING in file
      if grep "$ORIG_STRING" "$file"; then
        # Replace it with NEW_STRING
        sed -i "" "s/$FORMATTED_ORIG_STRING/$FORMATTED_NEW_STRING/g" "$file"
        echo "> - - - - FILE: $file : STRINGS REPLACED - - -"
        fi
    done
  done
}

script
echo ". . . . . END OF SCRIPT . . . . ."