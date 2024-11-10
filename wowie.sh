#!/bin/bash

# Clear the terminal
clear

# Display "cosmos.lol" in purple
echo -e "\033[1;35mcosmos.lol\033[0m"

# Function to show loading animation
loading_animation() {
  chars="/-\|"
  for ((i = 0; i < 6; i++)); do
    echo -ne "\r> Validating Key... ${chars:i%4:1}"
    sleep 0.25
  done
  echo -ne "\r> Validating Key...    "  # Clear loading animation
}

# Delay to enhance user experience
sleep 1

# Ask for the key
while true; do
  # Prompt the user for input
  echo -n "> Enter your Key: "
  sleep 0.5  # Brief delay before allowing typing
  read -r key
  echo

  # Display loading animation
  loading_animation

  # Replace "ownerkey123" with the actual valid key you want to use
  if [ "$key" == "ownerkey123" ]; then
    # Show green check mark if key is valid
    echo -e "\r> Key Validated \033[0;32m✔\033[0m"
    # Run the script you want to execute
    python3 -c 'print("Hello")'
    break
  else
    # Show red X if key is invalid
    echo -e "\r> Key not valid \033[0;31m✘\033[0m"
    sleep 1  # Small delay before prompting again
  fi
done
