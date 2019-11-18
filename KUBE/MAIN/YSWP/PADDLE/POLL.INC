
<%On Error Resume Next

If Request.Form("poll") <> "" Then
  Session("3mta3") = 69
  End If %>

<%On Error Resume Next

If Session("3mta3") <> 69 then %>

<FORM METHOD=POST ACTION="main.asp">
<!--#include file="text/polloption1.htm"-->
<!--#include file="text/polloption2.htm"-->
<!--#include file="text/polloption3.htm"-->
</TR>
<TR>
            <td align="center"><INPUT NAME="poll" TYPE="radio" value="option1"></TD>
            <td align="center" width=20><IMG SRC="http://www.k2skates.com/sizemeup/images/clearpixel.gif" WIDTH="20">
</td>
            <td align="center"><INPUT NAME="poll" TYPE="radio" value="option2"></TD>
</tr>
<tr>
<td COLSPAN=3>
<center><INPUT TYPE="submit" VALUE="  Cast Your Vote  "></center>
</td>
</FORM>
</TR>
</TABLE>


 <% Else  %>

<FONT FACE="ARIAL">
<H2>Here are the results:</H2>

<%
'first crunch on the input

  if Request.Form("poll") = "option1" then 
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  pollresultfile1 = Server.MapPath ("text") & "\pollresult1.htm"
  Set InStream= FileObject.OpenTextFile (pollresultfile1, 1, True, False)
  result1 = instream.readline
  Set Instream=Nothing
  result1 = result1 + 1
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  polloutfile1 = Server.MapPath ("text") & "\pollresult1.htm"
  Set OutStream= FileObject.CreateTextFile (polloutfile1, True, False)
  OutStream.Write(result1)
  Set Outstream=Nothing


  Elseif Request.Form("poll") = "option2" then 
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  pollresultfile2 = Server.MapPath ("text") & "\pollresult2.htm"
  Set InStream= FileObject.OpenTextFile (pollresultfile2, 1, True, False)
  result2 = instream.readline
  Set Instream=Nothing
  result2 = result2 + 1
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  polloutfile2 = Server.MapPath ("text") & "\pollresult2.htm"
  Set OutStream= FileObject.CreateTextFile (polloutfile2, True, False)
  OutStream.Write(result2)
  Set Outstream=Nothing

  Elseif Request.Form("poll") = "option3" then 
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  pollresultfile3 = Server.MapPath ("text") & "\pollresult3.htm"
  Set InStream= FileObject.OpenTextFile (pollresultfile3, 1, True, False)
  result3 = instream.readline
  Set Instream=Nothing
  result3 = result3 + 1
  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  polloutfile3 = Server.MapPath ("text") & "\pollresult3.htm"
  Set OutStream= FileObject.CreateTextFile (polloutfile3, True, False)
  OutStream.Write(result3)
  Set Outstream=Nothing %>

  <% End If %>

<%   Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  pollresultfile1 = Server.MapPath ("text") & "\pollresult1.htm"
  pollresultfile2 = Server.MapPath ("text") & "\pollresult2.htm"
  pollresultfile3 = Server.MapPath ("text") & "\pollresult3.htm"
  Set InStream = FileObject.OpenTextFile (pollresultfile1, 1, True, False)
  result1 = int(instream.readline)
  Set InStream = FileObject.OpenTextFile (pollresultfile2, 1, True, False)
  result2 = int(instream.readline)
  Set InStream = FileObject.OpenTextFile (pollresultfile3, 1, True, False)
  result3 = int(instream.readline)
  Set Instream=Nothing
  total = result1 + result2 + result3
  avg1 = INT(1000*(result1/total)+.5)/10
  avg2 = INT(1000*(result2/total)+.5)/10
  avg3 = INT(1000*(result3/total)+.5)/10 %>

<!--#include file="text/polloption1.htm"-->
<!--#include file="text/polloption2.htm"-->
<!--#include file="text/polloption3.htm"-->
</TR>
<TR>
            <td align="center"><B><I><%= avg1 %>%</B></I></TD>
            <td align="center" width=20><IMG SRC="http://www.k2skates.com/sizemeup/images/clearpixel.gif" WIDTH="20">
</td>
            <td align="center"><B><I><%= avg2 %>%</B></I></TD>
            <td align="center"></TD>
</TR>
</TABLE>
<% End If %>


