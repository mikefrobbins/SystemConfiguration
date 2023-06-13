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

    _System settings > General > Show scroll bars > Always_

  - Jump to the spot that's clicked in scroll bars

    _System settings > Appearance > Click in the scroll bar to > Jump to the spot that's clicked_

### Accessibility

Simplify moving windows around with the trackpad by enabling three finger drag:

- Three finger drag

  _System settings > Accessibility > Pointer Control > Trackpad Options > Enable dragging > Three
  finger drag_

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
  - Show recent applications in Dock: Off
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

- Press fn key to: Show Emoji & Symbols
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
```

### File system

Make a directory named Developer in your home directory and create two subdirectories named git and
images:

```zsh
cd ~
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
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/mikefrobbins/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- PowerShell

```zsh
brew install --cask powershell
```

To use brew in PowerShell:

```powershell
Add-Content -Path $PROFILE.CurrentUserAllHosts -Value '$(/opt/homebrew/bin/brew shellenv) | Invoke-Expression'
```

- VS Code

```zsh
brew install --cask visual-studio-code
```

- iTerm2

```zsh
brew install --cask iterm2
```

- Rectangle

```zsh
brew install --cask rectangle
```

- Firefox

```zsh
brew install --cask firefox
```

- Microsoft Office

```zsh
brew install --cask microsoft-office
```

- TG Pro

```zsh
brew install --cask tg-pro
```

- Alt Tab

```zsh
brew install --cask alt-tab
```

- Beyond Compare

```zsh
brew install --cask beyond-compare
```

- Obsidian

```zsh
brew install --cask obsidian
```

- Google Chrome

```zsh
brew install --cask google-chrome
```
