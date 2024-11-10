#!/bin/bash

# Clear the terminal
clear

# Display "cosmos.lol" in purple
echo -e "\033[1;35mcosmos.lol\033[0m"

# Ask for the key
while true; do
  # Prompt user for input, ensuring it waits for input on the next line
  echo -n "> Enter your Key: "
  read -r key
  echo "> Validating Key..."

  # Replace "ownerkey123" with the actual valid key you want to use
  if [ "$key" == "ownerkey123" ]; then
    echo "> Key Validated"
    # Run the script you want to execute
    python3 -c 'print("Hello")'
    break
  else
    echo "> Key not valid"
  fi
done
