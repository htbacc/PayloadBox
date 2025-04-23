#!/bin/bash

# Define file containing input strings
input_file='/home/zman/RedFolder/TinkerLab/Payloads/Adversary Attack Payloads/Injection/SQL/Generic Error Based .txt'

# Define coordinates for the text area and search icon
text_area_x=848  # Replace with the X coordinate of your text area
text_area_y=183  # Replace with the Y coordinate of your text area
search_icon_x=1110 # Replace with the X coordinate of your search button/icon
search_icon_y=177 # Replace with the Y coordinate of your search button/icon
clear_search_x=1073
clear_search_y=207

# Loop through each string in the file
while IFS= read -r line; do
    # Focus on the text area and input the string
    xdotool mousemove "$text_area_x" "$text_area_y" click 1
    xdotool type "$line"

    # Wait for 1 second
    sleep 1

    # Click the search icon
    xdotool mousemove "$search_icon_x" "$search_icon_y" click 1

    # Wait for another second
    sleep 1
    xdotool mousemove "$clear_search_x" "$clear_search_y" click 1
    
done < "$input_file"
