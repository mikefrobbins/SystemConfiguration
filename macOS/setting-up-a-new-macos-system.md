# Setting up a new macOS system

## Settings to change

### Apple ID

Store your desktop and documents folders in iCloud Drive so they're available on all your devices.

- Sync Desktop & Documents folder to iCloud Drive

  _System settings > Apple ID > iCloud > iCloud Drive > Desktop & Documents Folders: On_

### General

Set the computer name to something that makes sense to you:

- Name (Computer Name)

  _System settings > General > About > Name_

Simplify the clock so there's no AM or PM by enabling 24-hour time:

- Turn on 24-hour time

  _System settings > General > Date & Time > 24-hour time_

### Appearance

Tweak the scroll bars for enhanced usability:

- Scroll bars

  - Always show scroll bars

    _System settings > Appearance > Show scroll bars > Always_

  - Jump to the spot that's clicked in scroll bars

    _System settings > Appearance > Click in the scroll bar to > Jump to the spot that's clicked_

### Accessibility

Simplify moving windows around with the trackpad by enabling three finger drag:

- Three finger drag

  _System settings > Accessibility > Pointer Control > Trackpad Options > Enable: "Use trackpad for
  dragging" > Dragging style: "Three finger drag"_

### Control Center

Show the battery percentage in the menu bar:

- Show battery percentage

  _System settings > Control Center > Battery > Show percentage_

### Desktop & Dock

Remove apps that aren't used frequently from the dock. Additional tweaks for enhanced usability of
the dock:

- Dock

  _System settings > Desktop & Dock > Dock_

  - Size: ~30% (depending on screen size and resolution)
  - Magnification: ~40% to 50% (depending on screen size and resolution)
  - Minimize windows into application icon: On
  - Show suggested and recent apps in Dock: Off
  - Default web browser: (your web browser of choice)
  - Automatically rearrange Spaces based on most recent use: Off
  - Hot Corners: Bottom right: Desktop

### Wallpaper

Create a custom photo album for desktop backgrounds in your iCloud drive and set this folder as the
source for your desktop backgrounds:

_System settings > Wallpaper > Add Photo Album_ (custom backgrounds photo album)

### Lock Screen

Set the lock screen to require a password immediately when the screen saver begins or the display is
turned off:

_System settings > Lock Screen > Require password after screen saver begins or display is turned off:
immediately_

### Touch ID & Password / Login Password

If you have an Apple Watch, you can use it to unlock your Mac:

_System settings > Touch ID &  Password > Apple Watch_

- Apple Watch
  - Use Apple Watch to unlock your applications and your Mac: On

### Keyboard

_System settings > Keyboard_

- Press fn key to: Do Nothing
- Keyboard navigation: On

### Mouse

_System settings > Mouse_

- Tracking speed: One notch to the left of Fast
- Natural scrolling: Off
- Scrolling speed: 90%

  I prefer to turn off natural scrolling when using a mouse and leave it on when using the trackpad.

### Trackpad

_System settings > Trackpad_

- Tracking speed: Two notches to the left of Fast
- Tap to click: On

## Applications and other system settings

Open Spotlight by pressing **Command** + **Space** and search for Terminal. Open the Terminal
application and run the following commands:

### Configure Git

```zsh
git config --global user.name "Firstname Lastname"
git config --global user.email "githubusername@users.noreply.github.com"
git config --global credential.helper store
git config --global init.defaultBranch main
```

### File system

Make a directory named Developer in your home directory and create two subdirectories named git and
images:

```zsh
cd
mkdir Developer
cd Developer
mkdir git
mkdir images
```

### Screenshot tool

Change default location to save screenshots:

_**Command** + **Shift** + **5** > Options > Other Location > Developer > Images_

### Finder

_Finder > View_

- as List
- Show Tab Bar: On
- Show Path Bar: On
- Show Status Bar: On

_Finder > Settings > Advanced_

- Show all filename extensions: On
- When performing a search: Search the Current Folder

Favorites

- Add Developer folder
- Add Library folder

Drag the Developer folder to Favorites on the left side of the dock. Click **Go** while holding down
the **Option** key and select Library. Drag the Library folder to Favorites on the left side of the
dock.

## Apps to install

Install the following:

- [Homebrew](https://brew.sh/)

  ```zsh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

  Add brew to Path:

  ```zsh
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/mikefrobbins/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  ```

  Disable brew analytics:

  ```zsh
  brew analytics off
  ```

  Update apps installed with brew. Periodically run this command to keep your apps up to date.

  ```zsh
  brew update && brew upgrade && brew cleanup
  ```

- [Alt Tab](https://alt-tab-macos.netlify.app/)

  ```zsh
  brew install --cask alt-tab
  ```

- [Azure CLI](https://learn.microsoft.com/cli/azure/)

  ```zsh
  brew install azure-cli
  ```

- [Beyond Compare](https://www.scootersoftware.com/)

  ```zsh
  brew install --cask beyond-compare
  ```

- [Docker](https://www.docker.com/)

  ```zsh
  brew install docker
  ```

- [Firefox](https://www.mozilla.org/firefox/new/)

  ```zsh
  brew install --cask firefox
  ```

- [Gimp](https://www.gimp.org/)

  ```zsh
  brew install --cask gimp
  ```

- [Git](https://git-scm.com/)

  ```zsh
  brew install  git
  ```

- [GitHub CLI](https://cli.github.com/)

  ```zsh
  brew install gh
  ```

- [Google Chrome](https://www.google.com/chrome/)

  ```zsh
  brew install --cask google-chrome
  ```

- [Hugo](https://gohugo.io/)

  ```zsh
  brew install hugo
  ```

- [iTerm2](https://iterm2.com/)

  ```zsh
  brew install --cask iterm2
  ```

- [JC](https://github.com/kellyjonbrazil/jc) (JSON CLI output utility)

  ```zsh
  brew install jc
  ```

- [JQ](https://github.com/jqlang/jq) (JSON CLI processor)

  ```zsh
  brew install jq
  ```

- [Microsoft 365](https://www.microsoft.com/microsoft-365/microsoft-office) (Microsoft Office)

  ```zsh
  brew install --cask microsoft-office
  ```

- [NCurses Disk Usage Analyzer](https://dev.yorhel.nl/ncdu)

  ```zsh
  brew install ncdu
  ```

- [Obsidian](https://obsidian.md/)

  ```zsh
  brew install --cask obsidian
  ```

- [PowerShell](https://learn.microsoft.com/powershell/)

  ```zsh
  brew install --cask powershell
  ```

  Use brew in PowerShell:

  ```powershell
  Add-Content -Path $PROFILE.CurrentUserAllHosts -Value '$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression'
  ```

- [Rectangle](https://rectangleapp.com/)

  ```zsh
  brew install --cask rectangle
  ```

- [Skopeo](https://github.com/containers/skopeo)

  ```zsh
  brew install skopeo
  ```

- [Slack](https://slack.com/)

  ```zsh
  brew install --cask slack
  ```

- [TG Pro](https://www.tunabellysoftware.com/tgpro/)

  ```zsh
  brew install --cask tg-pro
  ```

- Tree command

  ```zsh
  brew install tree
  ```

- [Vale](https://vale.sh/)

  ```zsh
  brew install vale
  ```

- [VNC Viewer](https://www.realvnc.com/connect/download/viewer/)

  ```zsh
  brew install --cask vnc-viewer
  ```

- [VS Code](https://code.visualstudio.com/)

  ```zsh
  brew install --cask visual-studio-code
  ```

- Wget

  ```zsh
  brew install wget
  ```
