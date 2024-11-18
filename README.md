Permissions Fixer Script

This Bash script is designed to reset file and directory permissions to their default values in Ubuntu-based systems. It recursively changes file permissions to 644 and directory permissions to 755 within a specified directory.
Features

    File Permissions: Changes all files in the specified directory to 644.
    Directory Permissions: Changes all subdirectories in the specified directory to 755.
    Error Handling: Validates the provided directory path and exits with an error if the path is invalid.

Prerequisites

    Linux Environment: The script is designed for Ubuntu or similar Linux distributions.
    Bash Shell: Ensure the script runs in a bash shell.
    Sudo Privileges: Required for changing file and directory permissions.

How to Use

    Clone the Repository:

git clone https://github.com/your-username/permissions-fixer.git
cd permissions-fixer

Make the Script Executable:

chmod +x fix_permissions.sh

Run the Script:

    ./fix_permissions.sh

    Provide the Absolute Path:
    When prompted, enter the absolute path of the directory whose permissions need to be reset.

Example Usage

    If the directory path is /home/user/project, the script will:
        Set all files in /home/user/project to 644.
        Set all subdirectories in /home/user/project to 755.

This is a script to fix permissions. Once executed, it will change the permissions of files and directories to their default Ubuntu values.

Enter the ABSOLUTE PATH to the directory: /home/user/project

Expected Output

    Files:

Changing files permissions to 644 recursively... Done

Directories:

    Changing subdirectories permissions to 755 recursively... Done

Notes

    Default Permission Values:
        644: Read and write permissions for the owner, and read-only for group and others (files).
        755: Read, write, and execute permissions for the owner, and read and execute for group and others (directories).

    Error Handling:
        If the provided path is invalid or not a directory, the script will exit with:

        The PATH entered is invalid...

    Use with Caution:
        The script modifies permissions recursively. Ensure the directory path is correct before execution.

Contributing

Contributions to enhance this script are welcome! Feel free to fork the repository, add improvements, and submit a pull request.
