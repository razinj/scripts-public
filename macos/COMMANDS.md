# MacOS Commands

- Add spacer in Dock:

  `defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}' && killall Dock`

- Change screenshot image type:

  `defaults write com.apple.screencapture type jpg`
