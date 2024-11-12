# PowerShell Installation Script with Animation

This repository contains a PowerShell script designed to animate a custom URL and then automatically install a list of programs using winget (Windows Package Manager).

The script features a unique animation that highlights the URL https://www.nahuelgomez.dev/ in the console and provides feedback as it installs a set of programs on your Windows machine.

## Features

- **Console Animation**: Animates the URL `https://www.nahuelgomez.dev/` by alternating between uppercase and lowercase characters.
- **Program Installation**: Installs the following programs using the Windows Package Manager (`winget`):

- Windows Terminal
- Git
- Node.js
- Visual Studio Code
- Discord
- WhatsApp
- Google Chrome
- Brave Browser
- Steam
- Riot Games Client (for games like League of Legends)

## Requirements

To use this script, make sure you meet the following requirements:

- *Windows 10* version 1809 or later (winget is available in Windows 10 version 1809 and above).
- *winget* (Windows Package Manager) installed on your system. If not installed, you'll need to install the App Installer from the Microsoft Store.
- *PowerShell* version 5.1 or later.

## How to Install winget (if not installed)

1. Open the Microsoft Store and search for "App Installer".
2. Install the App Installer app.
3. After installation, restart your computer to ensure winget is available.

## Usage

1. Clone the repository

```bash
git clone https://github.com/almanoduerme/automated-installation.git
```

2. Open PowerShell as Administrator

For the script to install programs via `winget`, you need to run PowerShell with administrator privileges.

a. Right-click the Start button.

b. Select Windows PowerShell (Admin).

c. In the PowerShell window, navigate to the directory where you cloned the repository.

3. Run the script

In the PowerShell terminal, run the following command:

```bash
.\install_and_animate.ps1
```

This will start the script. Here's what happens:

**Animation begins**: The URL https://www.nahuelgomez.dev/ will be animated in the console, alternating between uppercase and lowercase letters.
**Program Installation**: After the animation completes, the script will begin installing the listed programs using winget.
**Completion message**: After all programs are installed, you will see a success message in the console.

## 4. (Optional) Modify the script

You can modify the list of programs in the script according to your needs. Just update the `$programs` array with the program names available on winget. You can find available programs by running:

```bash
winget search <program_name>
```

## Script Overview

The script has two main sections:

1. Animation Section:

- The `Show-Animation` function animates the URL https://www.nahuelgomez.dev/ by printing the characters in alternating uppercase and lowercase.
- The animation runs for a set duration, after which it displays the URL fully in lowercase.

2. Program Installation Section:

- The script checks if winget is installed. If not, it shows an error message and stops the script.
- The list of programs is defined in the `$programs` array. The script iterates through each program and installs it using the `winget` `install` command.

## Example Output

```bash
Welcome to the amazing installation script!
This script will help you install your favorite programs seamlessly.

Let's start the animation...

hTtP://wWw.nAhUeLgOmEz.dEv/ 
... (animation continues)

Animation complete!

Now, it's time to install your programs!
We are now starting the process to install all your programs through Winget.

Installing Microsoft.WindowsTerminal...
Installing Git.Git...
...

All programs have been installed successfully!

Thank you for using this script.
Created with love by almanoduerme.
Feel free to reach out for any improvements or issues!
```

## Troubleshooting

- winget is not recognized: If winget is not recognized as a command, make sure that winget is installed (via the Microsoft Store's App Installer) and that you're using Windows 10 version 1809 or later.
- Program installation failed: If a specific program fails to install, ensure it is available in the winget repository. You can search for programs using the winget search <program_name> command.

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
