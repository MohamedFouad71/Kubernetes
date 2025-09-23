#!/bin/bash

# Check if a directory is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  echo "Example: $0 ./k8s-manifests"
  exit 1
fi

# Store the directory path
DIR="$1"

# Check if the directory exists
if [ ! -d "$DIR" ]; then
  echo "Error: Directory '$DIR' does not exist."
  exit 1
fi

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null; then
  echo "Error: kubectl is not installed. Please install kubectl and try again."
  exit 1
fi

# Check if kubectl can connect to a cluster
if ! kubectl cluster-info &> /dev/null; then
  echo "Error: Unable to connect to a Kubernetes cluster. Please check your kubeconfig and cluster status."
  exit 1
fi

# Find all .yaml and .yml files in the directory and apply them
echo "Applying Kubernetes manifests in directory: $DIR"
for file in "$DIR"/*.y*ml; do
  if [ -f "$file" ]; then
    echo "Applying $file..."
    kubectl apply -f "$file"
    if [ $? -eq 0 ]; then
      echo "Successfully applied $file"
    else
      echo "Error applying $file"
      exit 1
    fi
  else
    echo "No .yaml or .yml files found in $DIR"
    exit 0
  fi
done

echo "All manifests in $DIR have been applied successfully."