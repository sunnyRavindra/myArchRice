# myArchRice

Welcome to the "myArchRice" repository! This repository contains my personal rice for Arch Linux, including configurations for DWM, ST (Simple Terminal), and dmenu. Additionally, it includes a handy script folder to automate committing changes to Git.
Repository Structure

## The repository is organized as follows:

1. dwm/: Contains the DWM window manager configuration files. This directory includes the entire DWM source code, forked from the original repository, along with my custom configuration files.

2. st/: Holds the configuration files for the ST (Simple Terminal) emulator. Similar to the DWM directory, it includes the entire ST source code, forked from the original repository, alongside my custom configuration files.

3. dmenu/: Contains my customized configuration for dmenu, a dynamic menu for X.

4. scripts/: Includes a helpful script folder to automate the process of committing changes to Git repositories. The commit-and-push-all-loop.sh script inside this folder automatically checks for unstaged changes in all repositories, stages, commits, and pushes them to their respective branches on GitHub. The script runs every 3 minutes to ensure timely synchronization.

## Usage

Feel free to explore the various directories and files to understand my customized Arch Linux rice. You can make modifications or use them as a reference for creating your own personalized setup.

### To use the commit script located in the scripts/ folder, follow these steps:

1. Make sure you have Git installed on your system.

2. Ensure the script has executable permissions. If it doesn't, run chmod +x scripts/commit-and-push-all-loop.sh.

3. Modify the script to specify the correct paths to your Git repositories, if necessary. The script assumes the repositories are located in the ~/code directory. If your repositories are stored elsewhere, update the repo_dir variable in the script.

4. Run the script by executing scripts/commit-and-push-all-loop.sh. The script will automatically check for unstaged changes in your repositories, stage, commit, and push them to their respective branches on GitHub. The process repeats every 3 minutes to keep your repositories up to date.

## Contributions

Contributions to this repository are not currently accepted, as it represents my personal Arch Linux rice. However, feel free to fork this repository and adapt it to suit your own needs. If you encounter any issues or have suggestions, please feel free to open an issue on the repository page.
License

This repository is provided under the MIT License. Feel free to use the code and configuration files within this repository, but please be aware of the license and provide appropriate attribution if you use them in your own projects.
Acknowledgements

I would like to express my gratitude to the developers and maintainers of DWM, ST, and dmenu for their fantastic work. Without their efforts, my customized Arch Linux rice would not have been possible.

