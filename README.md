permanentdelete is a secure deletion binary with an installer.

# Verify Integrity
You can build it from source code to verify its integrity.

```
pip install pyinstaller
pyinstaller --onefile permanentdelete.py
sha256sum permanentdelete
sha256sum ./dist/permanentdelete
```
You can compare the resulting hashes, belonging to prebuilt binary and your own build respectively.

# Installation
Installer script copies the resulting binary to /usr/bin location and creates the dotfile necessary to update the context menu with Permanent Delete option.

run
```
sudo bash ./install.sh
```
to install

# Notes
This will re-write the data in your disk 3 times, deleted data will be irrecoverable, but using permanent delete excessively will cause your disk to deteriorate faster, this is a valid concern for SSDs.
