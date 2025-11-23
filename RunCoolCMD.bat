:: Display the current prompt (initially set to "Enter your command:")
Please type "install" to install CoolCMD

:: Prompt the user for input
set /p userInput=

:: Check the user's input and adjust the prompt accordingly
if "!userInput!"=="install" (
timeout -1
tree
echo CoolCMD has been installed successfully.
timeout -1
start CoolCMD.bat "C:\Users\allab\OneDrive\Desktop\CoolCMD\Dependencies"
