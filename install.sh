#!/bin/bash

# Set variables
APP_NAME="PermanentDelete"
BINARY_NAME="permanentdelete"
DESKTOP_FILE_NAME="delete_permanently.desktop"
DESKTOP_FILE_DESTINATION="/usr/share/kio/servicemenus"
DESKTOP_FILE_LOCATION="$DESKTOP_FILE_DESTINATION/$DESKTOP_FILE_NAME"
BIN_LOCATION="/usr/bin"

# Move the binary to the system's binary files location
sudo cp $BINARY_NAME $BIN_LOCATION

# Create the .desktop file
echo "[Desktop Entry]
Type=Service
ServiceTypes=KonqPopupMenu/Plugin
MimeType=application/octet-stream;
Actions=delete_permanently;

[Desktop Action delete_permanently]
Name=Delete Permanently
Icon=edit-delete
Exec=/usr/bin/permanentdelete %U" > $DESKTOP_FILE_NAME

sudo mv $DESKTOP_FILE_NAME $DESKTOP_FILE_DESTINATION

echo "Installation complete. You can now use the 'Delete Permanently' option from the right-click context menu. If it doesn't show up try logging out ang logging in again."
