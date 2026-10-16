#!/bin/sh
# DevOps student application - reads data from environment variables
NAME="${STUDENT_NAME:-Medina}"
SURNAME="${STUDENT_SURNAME:-Didarova}"
GROUP="${STUDENT_GROUP:-IT2-2313}"
ID="${STUDENT_ID:-37944}"

echo "================================"
echo "DevOps Student Application"
echo "================================"
echo
echo "Name: $NAME"
echo "Surname: $SURNAME"
echo "Group: $GROUP"
echo "Student ID: $ID"
echo
echo "Application is running successfully!"

# Keep the container alive when KEEP_ALIVE=true (used by docker compose / docker exec demo)
if [ "$KEEP_ALIVE" = "true" ]; then
    echo "Container is running. Press Ctrl+C or run 'docker stop' to stop."
    while true; do sleep 30; done
fi
