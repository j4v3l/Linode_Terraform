#!/bin/bash
cat <<"EOF"
 _ _     _       ___ __  __  ____ 
| (_)___| |_    |_ _|  \/  |/ ___|
| | / __| __|____| || |\/| | |  _ 
| | \__ \ ||_____| || |  | | |_| |
|_|_|___/\__|   |___|_|  |_|\____|
                                  
-----------------------------------------------------
by J4V3L (2023-12)
-----------------------------------------------------
EOF
# Script to Fetch and Display Linode Images

# Load Linode API Key from .env file
if [ -f .env ]; then
  export $(cat .env | xargs)
else
  echo ".env file not found"
  exit 1
fi

# API URL for Linode Images
API_URL="https://api.linode.com/v4/images"

# Function to fetch and display Linode Images
fetch_linode_images() {
  echo "Fetching Linode Images..."
  response=$(curl -s -H "Authorization: Bearer $LINODE_API_KEY" $API_URL)

  if [ -z "$response" ]; then
    echo "No response from API or bad API key."
    return 1
  fi

  echo "Available Linode Images:"
  echo "-------------------------------------------------------------------------------------------"
  printf "%-30s | %-40s | %-10s | %-9s | %-9s\n" "ID" "Label" "Description" "Size (GB)" "Deprecated"
  echo "-------------------------------------------------------------------------------------------"

  # Extract, format, and display each image in a readable format
  echo $response | jq -r '.data[] | "\(.id),\(.label),\(.description),\((.size / 1024 | round)) GB,\(.deprecated)"' | while IFS=, read -r id label desc size deprec; do
    printf "%-30s | %-40s | %-10s | %-9s | %-9s\n" "$id" "$label" "$desc" "$size" "$deprec"
  done
}

# Check if 'jq' is installed (required for parsing JSON)
if ! command -v jq &>/dev/null; then
  echo "This script requires 'jq' for parsing JSON. Please install it first."
  exit 1
fi

# Fetch and display Linode Images
fetch_linode_images
