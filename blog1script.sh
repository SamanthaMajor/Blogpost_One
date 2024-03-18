#!/bin/bash

# Function to create project directory and files
create_project() {
    folder_name=$1
    mkdir "$folder_name"
    cd "$folder_name" || exit
    mkdir images scripts styles site site/pages site/posts site/comments
    touch index.html styles/style.css scripts/script.js
    echo "<!DOCTYPE html>" > index.html
    echo "<html>" >> index.html
    echo "  <head>" >> index.html
    echo "    <meta charset=\"utf-8\">" >> index.html
    echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> index.html
    echo "    <link rel=\"stylesheet\" href=\"styles/style.css\">" >> index.html
    echo "  </head>" >> index.html
    echo "  <body>" >> index.html
    echo "    <h1>If this is red, it's working.</h1>" >> index.html
    echo "    <script src=\"scripts/script.js\"></script>" >> index.html
    echo "  </body>" >> index.html
    echo "</html>" >> index.html
    echo "h1 {color:red;}" > styles/style.css
    echo "// Add your JavaScript code here" > scripts/script.js
}

# Main function
main() {
    # Check if folder name argument is provided
    if [ $# -eq 0 ]; then
        echo "Error: Folder name argument is missing."
        echo "Usage: $0 <folder_name>"
        exit 1
    fi

    folder_name=$1
    create_project "$folder_name"

    echo "Project '$folder_name' created successfully."
}

# Call main function with command line arguments
main "$@"
