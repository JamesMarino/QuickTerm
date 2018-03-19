tell application "Finder" to set p to POSIX path of (insertion location as alias)
tell application "Terminal"
	if (exists window 1) and not busy of window 1 then
		do script "cd " & quoted form of p in window 1
	else
		do script "cd " & quoted form of p
	end if
	activate
end tell
