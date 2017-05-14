#!/usr/bin/osascript
on run argv
    -- set fileName to (item 1 of argv)
	set fileName to POSIX file (item 1 of argv) as alias
    set pageNum to (item 2 of argv) as integer

	tell application "Skim"
	  activate
	  set docs to get documents whose path is (get POSIX path of fileName)
	  if (count of docs) > 0 then revert docs
	  open fileName
      tell document 1 to go to page pageNum
	end tell
end run