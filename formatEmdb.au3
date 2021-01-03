$oldList = FileRead(@ScriptDir & "\ReadMe.md")
$newList = StringReplace($oldList, "Cust", "Best", 1, 1)
$str = "# My Movie Database" & @CRLF & "![](cover.jpg)" & @CRLF & "##### How to setup:" & @CRLF & "- Clone (or download as zip)" & @CRLF & "- Download and install EMDB: https://www.emdb.eu/downloads.html" & @CRLF & "- Open EMDB → Options → Database → Browse and select this (cloned) folder (EMDB)" & @CRLF & "#### List of movies I've watched (with ratings):" & @CRLF & "```" & @CRLF & $newList & @CRLF & "```"
FileRecycle(@ScriptDir & "\ReadMe.md")
FileWrite(@ScriptDir & "\ReadMe.md", $str)
FileCopy(@AppDataDir & "\EMDB\emdb.cfg", @ScriptDir & "\emdb_local.cfg", 1 + 8)
