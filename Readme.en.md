# Brave Browser & Bing Rewards Automation Script - Version 1.0 (Windows Edition)

This script was created by xCryptoPandax and is designed for educational purposes only. It is crucial to note that this script is not intended for malicious use or to violate the Terms of Service of Brave Browser and Bing Rewards. Utilize this script at your own risk, and the author holds no responsibility for any bans or loss of BAT (Basic Attention Tokens) incurred due to the use of this script.

## Overview

The script is designed to mimic human interaction with the Brave Browser and Bing search engine to automate the process of earning rewards. The user needs to input specific mouse coordinates for the script to work correctly, which are used to navigate through various elements of the browser and the Bing search engine.

## Getting Started

1. To get the mouse coordinates, use the following command in PowerShell ISE: `[System.Windows.Forms.Cursor]::Position`.
2. Enter the obtained coordinates into the corresponding variables in the script.

## Core Functionality

1. The script initiates with a counter and enters into an infinite loop, executing a cycle of actions repeatedly.
2. In each cycle:
   - The script launches Brave Browser, navigates to Bing through a bookmark, interacts with articles, performs a search, and finally closes the browser.
   - Mouse clicks are simulated using a custom function `Clic-Souris` which utilizes the `user32.dll` library to send mouse events to the system.
   - A random timer is incorporated to mimic human behavior by pausing for a random duration between actions.
   - The search term in Bing is updated in each cycle with the incremented counter value to simulate a new search query in every cycle.
3. A message is echoed to the PowerShell console indicating the completion of each cycle, along with instructions on how to terminate the script (Ctrl + C).

## Mouse Coordinates Variables

- `IconeBrave_X` & `IconeBrave_Y`: Coordinates for the Brave icon on the taskbar.
- `NouvelOnglet_X` & `NouvelOnglet_Y`: Coordinates for the New Tab button.
- ... (all other coordinate variables follow the same pattern).

## Usage

1. Ensure you have set the correct mouse coordinates.
2. Execute the script in PowerShell.
3. To terminate the script, press Ctrl + C in the PowerShell window.

**Disclaimer:**
This script is for educational purposes only. Any misuse of this script or the information provided herein is strictly prohibited. Ensure you have the rights and permissions to run scripts of this nature on your system and that you comply with any and all applicable terms of service.

