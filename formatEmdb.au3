$oldList = FileRead(@ScriptDir & "\ReadMe.md")
$newList = StringReplace($oldList, "Cust", "Best", 1, 1)
$str = "# My Movie Database" & @CRLF & "![](cover.jpg)" & @CRLF & "##### Find me:<br/><br/>[IMDB](https://www.imdb.com/user/ur35750288/)<br/>[TV Time](https://www.tvtime.com/en/user/16664345/profile)" & @CRLF & "##### Interested in PC Games? [PC games I played!](https://github.com/tdwns/games)" & @CRLF & "##### How to setup:" & @CRLF & "- Clone (or download as zip)" & @CRLF & "- Download and install EMDB: https://www.emdb.eu/downloads.html" & @CRLF & "- Open EMDB → Options → Database → Browse and select this (cloned/downloaded) folder (EMDB)" & @CRLF & "#### List of movies & TV series I've watched (with ratings):" & @CRLF & "`* marked - best movies / TV series ❤️`" & @CRLF & "```" & @CRLF & $newList & @CRLF & "```"
FileRecycle(@ScriptDir & "\ReadMe.md")
FileWrite(@ScriptDir & "\ReadMe.md", $str)
