#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	crt.Screen.Send "h" & chr(8) & chr(8) & "ssh -v" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & "V" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D1" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[Ca" & chr(13)
	crt.Screen.WaitForString "Enter file in which to save the key (/home/alex/.ssh/id_rsa): "
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "Enter passphrase (empty for no passphrase): "
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "Enter same passphrase again: "
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cat " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "git pu" & chr(9) & "l" & chr(9) & "o" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git fe" & chr(9) & chr(9) & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git b" & chr(9) & "ra" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "make con" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd " & chr(13)
	crt.Screen.Send "cd w" & chr(9) & chr(9) & "g" & chr(9) & chr(9) & chr(9) & chr(8) & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd m" & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "cd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd win" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd g" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd C" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "make pk" & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "vi z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                 "
	crt.Screen.WaitForString "                                                                                                                                        " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                            "
	crt.Screen.WaitForString "                                                                             " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[23;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                       "
	crt.Screen.WaitForString "                  " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7mzb.cmd                                                                                                                                                                  1,1            All" & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & ":q" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "./z" & chr(9) & "b" & chr(9) & chr(9) & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & "ls -l" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "chmod +x z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "./z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "vi C" & chr(9) & chr(8) & chr(9) & "c" & chr(9) & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                 "
	crt.Screen.WaitForString "                                                                                                                                        " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                            "
	crt.Screen.WaitForString "                                                                             " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[23;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                       "
	crt.Screen.WaitForString "                  " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7mzb.cmd                                                                                                                                                                  8,0-1          All" & chr(27) & "[8;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & chr(27) & "[B" & chr(27) & "dd" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Add" & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls /tf" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[1" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & "cd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "mkdir " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "test" & chr(27) & "[1" & chr(126) & "vi " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[3;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[4;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[5;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[6;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[7;1H" & chr(126) & "                                                      "
	crt.Screen.WaitForString "                                                                                                                                   " & chr(27) & "[8;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[9;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                                                                                   "
	crt.Screen.WaitForString "                                                                      " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                                                                                              "
	crt.Screen.WaitForString "           " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                 "
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[2" & chr(126) & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "ls " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "p" & chr(8) & "vi t" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[3;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[4;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[5;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[6;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[7;1H" & chr(126) & "                                                      "
	crt.Screen.WaitForString "                                                                                                                                   " & chr(27) & "[8;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[9;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                                                                                   "
	crt.Screen.WaitForString "                                                                      " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                                                                                              "
	crt.Screen.WaitForString "           " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[23;1H" & chr(126) & "                                        "
	crt.Screen.WaitForString "                                                                                                                                                 " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7mtest                                                                                                                                                                    0,0-1          All" & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2Ralex@alex-ubuntu" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[Da" & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd wi" & chr(9) & chr(9) & chr(9) & "g" & chr(9) & "C" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "vi z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[8;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[9;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                   "
	crt.Screen.WaitForString "                                                                                                                                      " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                              "
	crt.Screen.WaitForString "                                                                           " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                         "
	crt.Screen.WaitForString "                " & chr(27) & "[23;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7mzb.cmd                                                                                                                                                                  6,0-1          All" & chr(27) & "[6;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[2" & chr(126) & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "tft" & chr(8) & chr(8) & chr(8) & "vi /e" & chr(9) & chr(9) & chr(9) & "y" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString chr(13) & chr(27) & "[K" & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString "--More--"
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m vi /etc/"
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[3;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[4;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[5;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[6;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[7;1H" & chr(126) & "                                                      "
	crt.Screen.WaitForString "                                                                                                                                   " & chr(27) & "[8;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[9;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                                                                                   "
	crt.Screen.WaitForString "                                                                      " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                                                                                              "
	crt.Screen.WaitForString "           " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[23;1H" & chr(126) & "                                        "
	crt.Screen.WaitForString "                                                                                                                                                 " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7m/etc                                                                                                                                                                    0,0-1          All" & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c" & chr(7) & chr(7) & chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[0m" & chr(27) & "[26;176H^@" & chr(27) & "[1;5H" & chr(7) & chr(27) & "[26;176H  " & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.WaitForString chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[26;176H^M" & chr(27) & "[1;5H" & chr(7) & chr(27) & "[26;176H  " & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c" & chr(7) & chr(7) & chr(7) & chr(7) & chr(7) & chr(7) & chr(7) & chr(7) & chr(7) & chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[26;176H^M" & chr(27) & "[1;5H" & chr(7) & chr(27) & "[26;176H  " & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & ":q" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[Bfind ./ -name tftp" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[Ce" & chr(9) & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[Dsudo " & chr(13)
	crt.Screen.WaitForString "[sudo] password for alex: "
	crt.Screen.Send "123456" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A*" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "vi /etc/default/tftpd-hpa" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[8;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[9;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                   "
	crt.Screen.WaitForString "                                                                                                                                      " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                              "
	crt.Screen.WaitForString "                                                                           " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                         "
	crt.Screen.WaitForString "                " & chr(27) & "[23;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7m/etc/default/tftpd-hpa [RO]                                                                                                                                             1,1    "
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & ":q" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B/etc/init/tftpd-hpa.conf" & chr(27) & "[1" & chr(126) & "su" & chr(8) & chr(8) & "vi " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[7m/etc/init/tftpd-hpa.conf [RO]                                                                                                                                           1,1            Top" & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & ":q" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[1" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[1" & chr(126) & "sudo sh " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[Bls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "tft" & chr(9) & chr(9) & chr(9) & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "sudo apt-et" & chr(8) & chr(8) & "get install tftp " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "sudo apt-get install tftp-hpa tftpd-hpa" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "vi " & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[1" & chr(126) & "sudo " & chr(27) & "[4" & chr(126) & "/e" & chr(9) & "ine" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[7m/etc/inetd.conf                                                                                                                                                         1,1            Top" & chr(27) & "[1;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B/tftp" & chr(13)
	crt.Screen.WaitForString chr(13) & chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[1m" & chr(27) & "[31msearch hit BOTTOM, continuing at TOP" & chr(27) & "[0m" & chr(13) & chr(27) & "[1m" & chr(27) & "[37m" & chr(27) & "[41mE486: Pattern not found: tftp" & chr(27) & "[0m" & chr(27) & "[26;30H" & chr(27) & "[K" & chr(27) & "[24;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(8) & chr(8) & chr(8) & chr(8) & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[2" & chr(126) & chr(13)
	crt.Screen.WaitForString chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[0m" & chr(27) & "[19;5H" & chr(27) & "[K" & chr(27) & "[20;5H" & chr(27) & "[1m" & chr(27) & "[36m#:RPC: RPC based services" & chr(27) & "[0m" & chr(27) & "[21;5H" & chr(27) & "[K" & chr(27) & "[22;5H" & chr(27) & "[1m" & chr(27) & "[36m#:HAM-RADIO: amateur-radio services" & chr(27) & "[0m" & chr(27) & "[23;5H" & chr(27) & "[K" & chr(27) & "[24;5H" & chr(27) & "[1m" & chr(27) & "[36m#:OTHER: Other services" & chr(27) & "[0m" & chr(27) & "[25;17H" & chr(27) & "[1m" & chr(27) & "[7m[+]" & chr(27) & "[150C4" & chr(27) & "[13C93%" & chr(27) & "[19;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[0m" & chr(27) & "[20;5H" & chr(27) & "[K" & chr(27) & "[21;5H" & chr(27) & "[1m" & chr(27) & "[36m#:RPC: RPC based services" & chr(27) & "[0m" & chr(27) & "[22;5H" & chr(27) & "[K" & chr(27) & "[23;5H" & chr(27) & "[1m" & chr(27) & "[36m#:HAM-RADIO: amateur-radio services" & chr(27) & "[0m" & chr(27) & "[24;5H" & chr(27) & "[K" & chr(27) & "[25;170H" & chr(27) & "[1m" & chr(27) & "[7m4" & chr(27) & "[13C88" & chr(27) & "[19;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send "tftp dgram udp wait nobody /usr/sbin/tcpd /usr/sbin/in.tftpd /tftproot" & chr(27) & "[A" & chr(27) & "[3" & chr(126) & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "inn" & chr(8) & "e" & chr(9) & chr(9) & chr(9) & "--help" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "server" & chr(8) & chr(8) & "ic" & chr(9) & "restat" & chr(8) & "rt inn" & chr(8) & "etd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "inet resa" & chr(8) & "tr" & chr(8) & "art" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[Dd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "serviv" & chr(9) & chr(8) & chr(9) & chr(9) & "--e" & chr(8) & "he" & chr(8) & chr(8) & chr(8) & "-help" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "xinetd " & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A/usr/sbin/inetd " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "/usr/sbin/inetd " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A--help" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "refresh -s inetd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(13)
	crt.Screen.Send "refresh -s inetd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[Dx" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[1" & chr(126) & "sudo inetd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A resa" & chr(8) & "tart" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "tftp -f -" & chr(8) & chr(8) & chr(8) & chr(8) & chr(13)
	crt.Screen.WaitForString "(to) "
	crt.Screen.Send "192.168.20.35" & chr(13)
	crt.Screen.WaitForString "tftp> "
	crt.Screen.Send "get lig_pk3000" & chr(13)
	crt.Screen.WaitForString "tftp> "
	crt.Screen.Send "q" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send ";" & chr(8) & "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "tm " & chr(8) & chr(8) & chr(8) & "rm l" & chr(9) & "i" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cel" & chr(8) & chr(8) & chr(8) & "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bil" & chr(8) & chr(8) & "ps -A " & chr(124) & " grep ined" & chr(8) & "td" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "kill ``" & chr(27) & "[Dps -A " & chr(124) & " grep inetd" & chr(124) & "awk ''" & chr(27) & "[D" & chr(123) & chr(125) & chr(27) & "[Dprint%" & chr(8) & "$1" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D -2 " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[1" & chr(126) & "sudo " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "in" & chr(9) & "e" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[1" & chr(126) & "sudo " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "sudo service tftpd-hpa restart" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ft" & chr(8) & chr(8) & "tftp -g " & chr(8) & chr(8) & chr(8) & "192.168.20.127" & chr(13)
	crt.Screen.WaitForString "tftp> "
	crt.Screen.Send "get test" & chr(13)
	crt.Screen.WaitForString "tftp> "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(127) & chr(127) & chr(127) & chr(127) & chr(127) & "egt" & chr(8) & chr(8) & chr(127) & chr(127) & chr(127) & chr(127) & chr(127) & chr(127) & chr(127) & chr(127) & chr(127) & "get test" & chr(13)
	crt.Screen.WaitForString "tftp> "
	crt.Screen.Send "q" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "uw" & chr(9) & chr(9) & chr(9) & chr(9) & chr(8) & chr(8) & "uu" & chr(9) & chr(8) & chr(8) & chr(8) & chr(9) & chr(9) & "yf" & chr(9) & chr(9) & "i" & chr(8) & "dis" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[1" & chr(126) & "sudo " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd " & chr(8) & chr(8) & chr(8) & "vi z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[2;1H" & chr(37435) & "?[6n" & chr(27) & "[1;1H  " & chr(27) & "[1;1H"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[2" & chr(126) & "cp " & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "./z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "vi c" & chr(8) & "z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[34m" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[8;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[9;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[10;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[11;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[12;1H" & chr(126) & "                                                   "
	crt.Screen.WaitForString "                                                                                                                                      " & chr(27) & "[13;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[14;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[15;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[16;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[17;1H" & chr(126) & "                                                                                                              "
	crt.Screen.WaitForString "                                                                           " & chr(27) & "[18;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[19;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[20;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[21;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[22;1H" & chr(126) & "                                                                                                                                                                         "
	crt.Screen.WaitForString "                " & chr(27) & "[23;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[24;1H" & chr(126) & "                                                                                                                                                                                         " & chr(27) & "[0m" & chr(27) & "[25;1H" & chr(27) & "[1m" & chr(27) & "[7mzb.cmd                                                                                                                                                                  3,1            All" & chr(27) & "[3;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[2" & chr(126) & " -v APP/pk3000/lig_pk3000 /mnt/nfs/tftpboot" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[33m  7 " & chr(27) & "[0m" & chr(27) & "[7;5H" & chr(27) & "[K" & chr(27) & "[25;169H" & chr(27) & "[1m" & chr(27) & "[7m4,1 " & chr(27) & "[4;5H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "./z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "./z" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "rm te" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git co -- WEB/thttpd/www/*.html " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git com" & chr(9) & "-a" & chr(13)
	crt.Screen.WaitForString chr(27) & "[2;1H" & chr(37435) & "?[6n" & chr(27) & "[1;1H  " & chr(27) & "[1;1H"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[2" & chr(126) & "feat()" & chr(27) & "[Dpk3000" & chr(27) & "[C: add route commadn" & chr(8) & chr(8) & "nd" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[33m 13 " & chr(27) & "[0m" & chr(27) & "[1m" & chr(27) & "[36m#" & chr(27) & "[0m" & chr(27) & "[13;6H" & chr(27) & "[K" & chr(27) & "[25;169H" & chr(27) & "[1m" & chr(27) & "[7m2,8-15" & chr(27) & "[2;19H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(8) & chr(8) & chr(8) & chr(8) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[33m 14 " & chr(27) & "[0m" & chr(27) & "[1m" & chr(27) & "[36m#" & chr(27) & "[0m" & chr(27) & "[14;6H" & chr(27) & "[K" & chr(27) & "[25;169H" & chr(27) & "[1m" & chr(27) & "[7m3,8-15" & chr(27) & "[3;19H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(8) & chr(8) & "Ref:#63 switch command" & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "gti " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git com" & chr(9) & "-a" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[2;1H" & chr(37435) & "?[6n" & chr(27) & "[1;1H  " & chr(27) & "[1;1H"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[2" & chr(126) & "fix()" & chr(27) & "[Dpk3000-routw" & chr(8) & "e" & chr(27) & "[C: tian" & chr(8) & chr(8) & chr(8) & chr(8) & chr(28155) & chr(21152) & chr(21629) & chr(20196) & chr(32034) & chr(24341) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[33m 13 " & chr(27) & "[0m" & chr(27) & "[1m" & chr(27) & "[36m#" & chr(27) & "[0m" & chr(27) & "[13;6H" & chr(27) & "[K" & chr(27) & "[25;169H" & chr(27) & "[1m" & chr(27) & "[7m2,6-20 " & chr(27) & "[2;24H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m" & chr(27) & "[33m 14 " & chr(27) & "[0m" & chr(27) & "[1m" & chr(27) & "[36m#" & chr(27) & "[0m" & chr(27) & "[14;6H" & chr(27) & "[K" & chr(27) & "[25;169H" & chr(27) & "[1m" & chr(27) & "[7m3,6-20" & chr(27) & "[3;24H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send chr(8) & chr(8) & chr(8) & "Ref:63" & chr(27) & "[D" & chr(27) & "[D#" & chr(27) & ":wq" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[B" & chr(32473) & chr(8) & "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & "pus" & chr(9) & "o" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send " git config --global push.default simple" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "remote" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bgit config --global push.default remote" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "origin" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bgit config --global push.default simple" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & "ll" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[Agit st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git co -- WEB/thttpd/www/*.html " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git la" & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & "o" & chr(9) & chr(13)
	crt.Screen.WaitForString ":" & chr(27) & "[K"
	crt.Screen.Send chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bq" & chr(27) & "[A" & chr(8) & chr(8) & chr(8) & "g" & chr(13)
	crt.Screen.WaitForString ":" & chr(27) & "[K"
	crt.Screen.Send chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27)
	crt.Screen.Send "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bqgit st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git co fun" & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "g" & chr(8) & "gi" & chr(8) & chr(8) & "git co " & chr(9) & chr(9) & chr(9) & "4" & chr(9) & chr(8) & chr(8) & " f" & chr(9) & "4" & chr(9) & "2" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git ba" & chr(8) & chr(8) & "pill" & chr(9) & chr(8) & chr(8) & chr(8) & "ull" & chr(9) & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[Ad" & chr(9) & chr(8) & ":" & chr(9) & "fun" & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "igt " & chr(8) & chr(8) & chr(8) & chr(8) & "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "gti " & chr(8) & chr(8) & chr(8) & chr(8) & "git reset " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git reset HEAD" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git " & chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D--hard " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "git l" & chr(9) & "o" & chr(9) & chr(13)
	crt.Screen.WaitForString ":" & chr(27) & "[K"
	crt.Screen.Send "qgit reste " & chr(8) & chr(8) & chr(8) & "et HE" & chr(8) & chr(8) & "--hae" & chr(8) & "rd c08c21da416ed37d5d484a89e1fd704aaec6414f" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "gti" & chr(8) & chr(8) & "it lo" & chr(9) & chr(13)
	crt.Screen.WaitForString ":" & chr(27) & "[K"
	crt.Screen.Send "q" & chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & "pul" & chr(9) & "o" & chr(9) & "d" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git " & chr(8) & chr(8) & chr(8) & chr(8) & "git reset --hare" & chr(8) & "d HEAD" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "git " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "gi " & chr(8) & chr(8) & chr(8) & "git co" & chr(9) & " d" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git co -- APP/lig_keyboard/src/lig_key_menu_src/lig_menu_analize_press.c APP/lig_keyboard/src/lig_key_menu_src/lig_menu_analize_press.h APP/lig_keyboard/src/lig_key_menu_src/lig_menu_audio.cAPP/lig_keyboard/src/lig_key_menu_src/lig_menu_audio.h" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bgit st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "rm APP/lig_keyboard/src/lig_key_menu_src/lig_menu_analize_press.c  APP/lig_keyboard/src/lig_key_menu_src/lig_menu_analize_press.h  APP/lig_keyboard/src/lig_key_menu_src/lig_menu_audio.c" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "gt " & chr(8) & chr(8) & "it rm APP/lig_keyboard/src" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A " & chr(9) & chr(9) & chr(27) & "[A" & chr(27) & "[B" & chr(27) & "[1" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git reset --haed" & chr(8) & chr(8) & chr(8) & "ard HEAD" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "rm         " & chr(34) & "APP/matrix_app_kramer/src/Makefile" & chr(13)
	crt.Screen.WaitForString "  "
	crt.Screen.Send "        APP/matrix_app_kramer/src/db/Makefile" & chr(13)
	crt.Screen.WaitForString "> "
	crt.Screen.Send "        APP/matrix_app_kramer/src/lig_MatrixManager.c" & chr(13)
	crt.Screen.WaitForString "> "
	crt.Screen.Send "        APP/matrix_app_kramer/src/lig_MatrixManager.h" & chr(13)
	crt.Screen.WaitForString "> "
	crt.Screen.Send "        APP/pk3000/src/lig_k3_matrix_switch_operation.c" & chr(13)
	crt.Screen.WaitForString "> "
	crt.Screen.Send "        APP/pk3000/src/lig_k3_matrix_video_parameter.c" & chr(13)
	crt.Screen.WaitForString "> "
	crt.Screen.Send "        Script/3-2and3Test.sh" & chr(13)
	crt.Screen.WaitForString "> "
	crt.Screen.Send "        Script/matrix_db_show.sh" & chr(34) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "rm APP/matrix_app_kramer/src/db/Makefile" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git pu" & chr(9) & "l" & chr(9) & "o" & chr(9) & "d" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git " & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "ls" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git e" & chr(8) & "fe" & chr(9) & "o" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[A" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git rm " & chr(8) & chr(8) & chr(8) & chr(8) & " bra" & chr(9) & chr(9) & chr(9) & chr(9) & "-D  origin/func/4_2_1.FACTOR_RESET_#61 " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git co fun" & chr(9) & "4" & chr(9) & "2" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git ba" & chr(8) & "ea" & chr(8) & chr(8) & "ra" & chr(9) & chr(9) & chr(9) & "--hrlp" & chr(8) & chr(8) & chr(8) & "elp" & chr(13)
	crt.Screen.WaitForString chr(27) & "[7m Manual page git-branch(1) line 1 (press h for help or q to quit)" & chr(27) & "[27m" & chr(27) & "[K"
	crt.Screen.Send chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[B" & chr(27) & "[Bqgit push origin --delete <BranchName>" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & " " & chr(9) & chr(9) & chr(9) & "re" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[3" & chr(126) & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "bra" & chr(9) & "-r -D o" & chr(9) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "r" & chr(9) & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D-D " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "cd " & chr(8) & chr(8) & chr(8) & "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git co -- WEB/thttpd/www/*.html " & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "git st" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "gti" & chr(8) & chr(8) & chr(8) & "git com" & chr(9) & "-a" & chr(13)
	crt.Screen.WaitForString chr(27) & "[2;1H" & chr(37435) & "?[6n" & chr(27) & "[1;1H  " & chr(27) & "[1;1H"
	crt.Screen.Send chr(27) & "[2;2R" & chr(27) & "[A" & chr(27) & "[A" & chr(27) & "[2" & chr(126) & "feat()" & chr(27) & "[D" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[C" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & "[D" & chr(27) & ":q" & chr(13)
	crt.Screen.WaitForString chr(13) & chr(27) & "[?25l" & chr(27) & "[?1c" & chr(27) & "[1m" & chr(27) & "[37m" & chr(27) & "[41mE37: No write since last change (add ! to override)" & chr(27) & "[1;9H" & chr(27) & "[?25h" & chr(27) & "[?0c"
	crt.Screen.Send ":q!" & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(27) & "[A" & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & chr(8) & "git sts" & chr(9) & chr(8) & "a" & chr(9) & "s" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "ti" & chr(8) & chr(8) & "git co d" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send "gi " & chr(8) & "t pu" & chr(9) & "l" & chr(9) & "o" & chr(9) & chr(13)
	crt.Screen.WaitForString chr(27) & "[1m>>>" & chr(27) & "[0m "
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
	crt.Screen.Send chr(13)
End Sub
