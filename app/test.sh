#!/bin/sh
# Simple test: the application output must contain the student information
OUTPUT=$(sh "$(dirname "$0")/app.sh")
for s in "Name: Medina" "Surname: Didarova" "Group: IT2-2313" "Student ID: 37944" "running successfully"; do
    echo "$OUTPUT" | grep -q "$s" || { echo "TEST FAILED: '$s' not found"; exit 1; }
done
echo "All tests passed!"
