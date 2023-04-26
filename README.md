# SCRIPT - JavaScript String Replacer v1

## Overview
This Github repository includes a script that recursively looks through inputted directory's subdirectories and files for a specific string, to replace utilizing an input new string.

## Setup
1. Make script executable if it is not already: `chmod +x src/javascript_replace_prompt.sh`
2. Navigate to the repository: `cd script-javascript-replacer`
3. Run script: `./src/javascript_replace_prompt`
4. Follow prompts with your original string and new string ready

## Test Steps
1. Run script: `./src/javascript_replace_prompt`
2. Enter original string test (paste following string to 1st prompt): 3000
3. Enter new string (paste following string to 2nd prompt): 5000
4. Enter target directory (paste directory): ./src/assets/
5. Check './src/assets/test1.js': Line 4


# Version 1 (RELEASED): Initialization

## Objectives
1. Utilize user inputs to find original string and new string to replace JavaScript code
2. Check every file and directories for instance of original string
3. Format Strings to remove any possible risk of errors with quotations

# Version 2 (PENDING): Formatting String Continued

## Objectives
1. Modify user inputs to remove errors caused by wrong syntax when implementing quotations