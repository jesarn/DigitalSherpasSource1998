<table border=0>
<%

'     Steve - put the header and footer above and below this document
   
JamPost = "from=kube"
Set HttpObj = Server.CreateObject("AspHTTP.Conn")
HttpObj.Url = "http://www.jamtv.com/sections/jacked/text/newsdefault.asp?from=kube"
HttpObj.PostData = JamPost
HttpObj.TimeOut = 30
HttpObj.RequestMethod = "POST"
JamContent = HttpObj.GetURL 

If JamContent = "" then
	response.write "We apologize, but this information is not currently available."

Else
JamHeader = InStr(JamContent,  "<!-- articles -->")
FinalJamContent = Mid(JamContent, JamHeader)
JamFooter = InStr(FinalJamContent,  "<!-- copyright notice -->")
FinalJamContent = Left(FinalJamContent, JamFooter -1)

response.write FinalJamContent
End If
%>
</tr></table>