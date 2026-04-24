#!/bin/bash
# Double-click this file to preview your site locally with working videos.
# Works on Mac and Linux. On Mac: you may need to right-click → Open → Open anyway (first time).

cd "$(dirname "$0")"
echo "Starting local preview server at http://localhost:8000"
echo "Your site will open in your browser."
echo "Press Ctrl+C in this window to stop the server when you're done."
echo ""

# Try Python 3 first, then Python 2
if command -v python3 &> /dev/null; then
    (sleep 1 && open "http://localhost:8000" 2>/dev/null || xdg-open "http://localhost:8000" 2>/dev/null) &
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    (sleep 1 && open "http://localhost:8000" 2>/dev/null || xdg-open "http://localhost:8000" 2>/dev/null) &
    python -m SimpleHTTPServer 8000
else
    echo "Python is not installed on this computer."
    echo "Install it from python.org, or use another method."
    read -p "Press enter to close..."
fi
