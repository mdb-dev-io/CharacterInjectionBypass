# File Upload Vulnerability Testing Script

This script is designed to aid penetration testers in evaluating the security of web application upload features against file upload attacks. It generates a comprehensive wordlist by combining shell names with various special characters, file extensions, and valid image extensions to test for vulnerabilities related to character injection, reverse extension, and double extension attacks.

## Features

- **Generates permutations of filenames**: Combines shell names with special characters and extensions to create potential malicious filenames.
- **Supports multiple file types**: Includes a variety of file extensions and valid image extensions to simulate different upload scenarios.
- **Customizable parameters**: Allows easy modification of shell names, special characters, and extensions to tailor the wordlist to specific testing needs.

## Usage

  - Setting Up
    - Ensure you have a Bash environment to run the script.
    - Modify the `shell_name`, `special_chars`, `extensions`, and `valid_extensions` variables as needed to fit your testing scenario.

  - Running the Script
    - Make the script executable: `chmod +x filename.sh`
    - Run the script: `./filename.sh`
    - The script will generate a wordlist.txt file with all the permutations.

  - Integrating with Testing Tools
    - Use the generated wordlist.txt with your preferred web application testing tools to assess the upload feature's security.

## Customization

- `shell_name`: Set this to the base name you want to use for the shell or malicious file.
- `special_chars`: Define the list of special characters to test for character injection vulnerabilities.
- `extensions`: Specify the list of file extensions to be tested for reverse extension and double extension vulnerabilities.
- `valid_extensions`: List the valid image extensions that the web application accepts to simulate legitimate file uploads.

## Contributing

Contributions to enhance the script's functionality or extend its capabilities are welcome. Please submit a pull request or open an issue to discuss potential improvements.

## Disclaimer

This script is intended for educational and ethical testing purposes only. Use it responsibly and only on applications for which you have explicit permission to test.
