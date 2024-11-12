function Show-Animation {
    $text = "https://www.nahuelgomez.dev/"
    $len = $text.Length
    $i = 0
    $maxIterations = 30  # Number of iterations to control how long the animation runs

    # Get the width of the console window
    $consoleWidth = (Get-Host).UI.RawUI.WindowSize.Width
    # Calculate the number of spaces needed to center the word
    $spaces = [math]::Floor(($consoleWidth - $len) / 2)

    # Introduction with a welcoming message
    Write-Host "`n`nWelcome to the amazing installation script!" -ForegroundColor Cyan
    Start-Sleep -Seconds 1
    Write-Host "This script will help you install your favorite programs seamlessly." -ForegroundColor Cyan
    Start-Sleep -Seconds 1
    Write-Host "`nLet's start the animation..." -ForegroundColor Yellow
    Start-Sleep -Seconds 1

    # Start the animation
    for ($iteration = 0; $iteration -lt $maxIterations; $iteration++) {
        $i++
        $output = ""
        for ($j = 0; $j -lt $len; $j++) {
            # Convert the character to a string and apply ToUpper or ToLower
            if ($j -eq $i % $len) {
                $output += ($text[$j].ToString()).ToUpper()  # Convert char to string and then to uppercase
            } else {
                $output += ($text[$j].ToString()).ToLower()  # Convert char to string and then to lowercase
            }
        }
        
        # Clear the screen and display the centered animation
        Clear-Host
        Write-Host (" " * $spaces) $output  # Add leading spaces to center the word
        Start-Sleep -Milliseconds 150
    }

    # Ensure the final word is in lowercase before finishing
    $finalOutput = $text.ToLower()

    # Display the final output centered
    Clear-Host
    Write-Host (" " * $spaces) $finalOutput

    # Final message after animation ends
    Write-Host "`n`nAnimation complete!" -ForegroundColor Green
    Start-Sleep -Seconds 1
}

# Run the animation
Show-Animation

# Final message before starting the installation
Write-Host "`nNow, it's time to install your programs!" -ForegroundColor Yellow
Write-Host "We are now starting the process to install all your programs through Winget." -ForegroundColor Cyan
Start-Sleep -Seconds 1

# Check if winget is installed
if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "winget is not installed. Please ensure you have Windows Package Manager (winget) installed." -ForegroundColor Red
    Write-Host "You need Windows 10 version 1809 or later with the App Installer from the Microsoft Store." -ForegroundColor Red
    return
}

# List of programs to install via winget
$programs = @(
    "Microsoft.WindowsTerminal",        # Windows Terminal
    "Git.Git",                          # Git
    "OpenJS.NodeJS.LTS",                # Node.js
    "Microsoft.VisualStudioCode",       # Visual Studio Code
    "Discord.Discord",                  # Discord
    "WhatsApp",                         # WhatsApp
    "Google.Chrome",                    # Google Chrome
    "Brave.Brave",                      # Brave Browser
    "Valve.Steam",                      # Steam
    "RiotGames.LeagueOfLegends.LA2"     # Riot Games Client (for games like League of Legends)
)

# Install each program in the list using winget
foreach ($program in $programs) {
    Write-Host "`nInstalling $program..." -ForegroundColor Cyan
    winget install $program
}

Write-Host "`nAll programs have been installed successfully!" -ForegroundColor Green
Write-Host "`n`nThank you for using this script." -ForegroundColor Cyan
Write-Host "Created with love by almanoduerme." -ForegroundColor Yellow
Write-Host "`nFeel free to reach out for any improvements or issues!" -ForegroundColor Cyan
