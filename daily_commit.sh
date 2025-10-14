#!/bin/bash
# ===========================================
# Auto GitHub Daily Commit Script (with cleanup)
# ===========================================

# Go to your repository folder
cd ~/daily-updates

# Create today's file
today=$(date +%Y-%m-%d)
echo "Daily update for $today" > "note_$today.txt"

# Delete note files older than 7 days
find . -name "note_*.txt" -type f -mtime +7 -delete

# Add, commit, and push
git add .
git commit -m "Auto daily update: $today"
git push origin main

# Log the activity
echo "Committed on $today" >> history.txt
echo "✅ Commit pushed successfully on $today!"

