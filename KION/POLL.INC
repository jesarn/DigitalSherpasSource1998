
<% sub Session_OnStart
	session("3mta3") = 68
End Sub%>

<%On Error Resume Next

If Request.Form("poll") <> "" Then
  Session("3mta3") = 69
End If

Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
option3blankfile = Server.MapPath ("/kionkcbaupdate/text") & "\polloption3.txt"
Set InStream= FileObject.OpenTextFile (option3blankfile, 1, True, False)
option3blank = instream.readline
Set Instream=Nothing
if option3blank = "" then
	option3blank = "yes"
else
	option3blank = "no"
end if
%>
  

<p><strong><!--#include virtual="/kionkcbaupdate/text/pollquestion.txt"--></strong></p>

<%On Error Resume Next

If Session("3mta3") <> 69 and request.form("poll") = "" then %>

<FORM METHOD=POST ACTION="main.asp">
<p><INPUT NAME="poll" TYPE="radio" value="option1"><!--#include virtual="/kionkcbaupdate/text/polloption1.txt"--><BR>

<INPUT NAME="poll" TYPE="radio" value="option2"><!--#include virtual="/kionkcbaupdate/text/polloption2.txt"--><BR>
<% if option3blank = "no" then %>
<INPUT NAME="poll" TYPE="radio" value="option3"><!--#include virtual="/kionkcbaupdate/text/polloption3.txt"--><BR><BR>
<% End If %>
<INPUT TYPE="submit" VALUE="  Cast Your Vote  ">
<input type="Hidden" name="session" value="<%= Session.SessionID %>"></p>
</FORM>



<% Elseif Session("3mta3") = 69 then %>

<p><strong>Current Results:</strong></p>

	<%
	'first crunch on the input
		if Request.Form("session") = Session.SessionID then

		
		  if Request.Form("poll") = "option1" then 
		  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		  pollresultfile1 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult1.txt"
		  Set InStream= FileObject.OpenTextFile (pollresultfile1, 1, True, False)
		  result1 = instream.readline
		  Set Instream=Nothing
		  result1 = result1 + 1
		  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		  polloutfile1 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult1.txt"
		  Set OutStream= FileObject.CreateTextFile (polloutfile1, True, False)
		  OutStream.Write(result1)
		  Set Outstream=Nothing
		  Session("intSessionObjVisit") = 1
		
		
		  Elseif Request.Form("poll") = "option2" then 
		  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		  pollresultfile2 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult2.txt"
		  Set InStream= FileObject.OpenTextFile (pollresultfile2, 1, True, False)
		  result2 = instream.readline
		  Set Instream=Nothing
		  result2 = result2 + 1
		  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		  polloutfile2 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult2.txt"
		  Set OutStream= FileObject.CreateTextFile (polloutfile2, True, False)
		  OutStream.Write(result2)
		  Set Outstream=Nothing
		  Session("intSessionObjVisit") = 1
		
		  Elseif Request.Form("poll") = "option3" then 
		  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		  pollresultfile3 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult3.txt"
		  Set InStream= FileObject.OpenTextFile (pollresultfile3, 1, True, False)
		  result3 = instream.readline
		  Set Instream=Nothing
		  result3 = result3 + 1
		  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
		  polloutfile3 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult3.txt"
		  Set OutStream= FileObject.CreateTextFile (polloutfile3, True, False)
		  OutStream.Write(result3)
	      Set Outstream=Nothing
	      Session("intSessionObjVisit") = 1
	      End If %>
	  <% End If %>
	 
	  <%   Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
	  pollresultfile1 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult1.txt"
	  pollresultfile2 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult2.txt"
	  pollresultfile3 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult3.txt"
	  Set InStream = FileObject.OpenTextFile (pollresultfile1, 1, True, False)
	  result1 = int(instream.readline)
	  Set InStream = FileObject.OpenTextFile (pollresultfile2, 1, True, False)
	  result2 = int(instream.readline)
	  Set InStream = FileObject.OpenTextFile (pollresultfile3, 1, True, False)
	  result3 = int(instream.readline)
	  Set Instream=Nothing
	  total = result1 + result2 + result3
	  avg1 = INT(10000*(result1/total)+.5)/100
	  avg2 = INT(10000*(result2/total)+.5)/100
	  avg3 = INT(10000*(result3/total)+.5)/100 %>
	  <TABLE width=275 CELLSPACING=0 border=0>
	  <TR><TD class=a><!--#include virtual="/kionkcbaupdate/text/polloption1.txt"--><br><br></TD><TD class=a><%= avg1 %>%<br><br></TD></TR>
	  <TR><TD class=a><!--#include virtual="/kionkcbaupdate/text/polloption2.txt"--><br><br></TD><TD class=a><%= avg2 %>%<br><br></TD></TR>
	  <% if option3blank = "no" then %>
	  <TR><TD class=a><!--#include virtual="/kionkcbaupdate/text/polloption3.txt"--><br><br></TD><TD class=a><%= avg3 %>%<br><br></TD></TR>
	  <% End If %>
	  </TABLE>

<% Else  %>
	
<p><strong>Current Results:</strong></p>

<%   Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  pollresultfile1 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult1.txt"
  pollresultfile2 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult2.txt"
  pollresultfile3 = Server.MapPath ("/kionkcbaupdate/text") & "\pollresult3.txt"
  Set InStream = FileObject.OpenTextFile (pollresultfile1, 1, True, False)
  result1 = int(instream.readline)
  Set InStream = FileObject.OpenTextFile (pollresultfile2, 1, True, False)
  result2 = int(instream.readline)
  Set InStream = FileObject.OpenTextFile (pollresultfile3, 1, True, False)
  result3 = int(instream.readline)
  Set Instream=Nothing
  total = result1 + result2 + result3
  avg1 = INT(10000*(result1/total)+.5)/100
  avg2 = INT(10000*(result2/total)+.5)/100
  avg3 = INT(10000*(result3/total)+.5)/100 %>
  <TABLE width=275 CELLSPACING=0 border=0>
  <TR><TD class=a><!--#include virtual="/kionkcbaupdate/text/polloption1.txt"--><br><br></TD><TD class=a><%= avg1 %>%<br><br></TD></TR>
  <TR><TD class=a><!--#include virtual="/kionkcbaupdate/text/polloption2.txt"--><br><br></TD><TD class=a><%= avg2 %>%<br><br></TD></TR>
  <% if option3blank = "no" then %>
  <TR><TD class=a><!--#include virtual="/kionkcbaupdate/text/polloption3.txt"--><br><br></TD><TD class=a><%= avg3 %>%<br><br></TD></TR>
  <% End If %>
  </TABLE>

<% End If %>


