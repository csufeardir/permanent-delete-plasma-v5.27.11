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
