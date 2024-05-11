import sys
import os
import random

def main():
    # The first argument (index 0) is the name of the script
    # The remaining arguments are the file paths
    file_paths = sys.argv[1:]

    # Process each file path
    for file_path in file_paths:
        # Open the file for writing in binary mode
        with open(file_path, "rb+") as f:
            # Get the size of the file
            file_size = os.path.getsize(file_path)
            
            # Overwrite the file with random data three times
            for _ in range(3):
                # Generate random data of the same size as the file
                random_data = bytearray(random.getrandbits(8) for _ in range(file_size))
                
                # Write the random data to the file
                f.seek(0)
                f.write(random_data)
                f.flush()
                # Flush data to disk
                os.fsync(f.fileno())
            
            # Set the file size to 0
            f.truncate(0)
    
        # Finally, delete the file
        os.remove(file_path)

if __name__ == "__main__":
    main()