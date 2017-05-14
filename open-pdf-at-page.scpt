#!/usr/bin/osascript
on run argv
    set newPage to item 1 of argv

	tell application "System Events"
	          tell process "Preview"
	                    set frontmost to true
	                    tell menu bar 1
	                              tell menu "go"
	                                        click
	                                        tell menu item "Go to Page…"
	                                                  click
	                                        end tell
	                              end tell
	                    end tell
	                    tell window 1
	                              tell sheet 1
	                                        tell text field 1
	                                                  set value to (newPage as text)
	                                        end tell
	                                        tell button "OK"
	                                                  click
	                                        end tell
	                              end tell
	                    end tell
	          end tell
	end tell

end run
