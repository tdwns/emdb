$oldList = FileRead(@ScriptDir & "\ReadMe.md")
$newList = StringReplace($oldList, "Cust", "Best", 1, 1)
$str = "# My Movie Database" & @CRLF & "![](cover.jpg)" & @CRLF & "##### Me" & @CRLF & "[IMDB](https://www.imdb.com/user/ur35750288/)" & @CRLF & "[TV Time](https://www.tvtime.com/en/user/16664345/profile)" & @CRLF & "##### How to setup:" & @CRLF & "- Clone (or download as zip)" & @CRLF & "- Download and install EMDB: https://www.emdb.eu/downloads.html" & @CRLF & "- Open EMDB → Options → Database → Browse and select this (cloned/downloaded) folder (EMDB)" & @CRLF & "#### List of movies I've watched (with ratings):" & @CRLF & "```" & @CRLF & $newList & @CRLF & "```"
FileRecycle(@ScriptDir & "\ReadMe.md")
FileWrite(@ScriptDir & "\ReadMe.md", $str)
