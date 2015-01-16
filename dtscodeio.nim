import jester
import asyncdispatch

include "pagebase.tmpl"

routes:
    get "/":
        resp genHTMLPage(
            "dtscode.io",
            "Hello, world!"
        )

    get "/teamspeak3":
        resp genHTMLPage(
            "dtscode.io :: Teamspeak", 
            "The official Teamspeak3 server for #cplusplus.com"
        )

    get "/teamspeak3/info":
        resp genHTMLPage(
            "dtscode.io :: Teamspeak :: Info",
            "cplusplus.com Teamspeak3 (http://www.teamspeak3.com/) Server Info<br />" &
            "=================================================================<br /><br />" &
            "Server: ts3.dtscode.io<br />" &
            "Admin: dtscode<br />" &
            "Password: cppserver<br /><br />" &
            "Questions, Comments, Concerns? contact dtscode at DTSCode@gmail.com or on irc.freenode.net<br />" &
            "==========================================================================================<br /><br />" &
            "This message has been brought to you by the following<br />" &
            " * TeaBot - because irc without tea isn't the same<br />" &
            " * lightning - C++ without the features and all of the bugs<br />" &
            " * Executable Text Files - Sometimes opening your editor is just too damn hard"
        )

runForever()
