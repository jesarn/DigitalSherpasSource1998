<%

  Set FileObject = Server.CreateObject("Scripting.FileSystemObject")
  interrupt = Server.MapPath ("/kionkcbaupdate/text") & "\onrightnow.txt"
  Set InStream= FileObject.OpenTextFile (interrupt, 1, True, False)
  interruptstream = Instream.Readline
  Set Instream=Nothing


if interruptstream <> "" then
	response.write "On KION Right Now:<br><B>" & interruptstream & "</B><br><br>"

else
	if time() < timeserial(2,30,0) or time() > timeserial(5,30,0) then
	
		
		showhour = hour(time)
		showminute = minute(time)
		showampm = lcase(right(time(), 2))
		errormessagepos = 1
		loopcount = 0
	
		if showhour > 12 then
			showhour = showhour - 12
		End If
		
		if showminute < 30 then
			showminute = "00"
		else
			showminute = "30"
		End If
		
		'showhour = "10"
		'showminute = "30"
		'showampm = "am"
		
		do while errormessagepos and loopcount < 11
		showlink = "-DB=kionprogramming.fp3&-Format=tvlinktest.htm&date=" & date() & "&start time=" & 	showhour & ":" & showminute & "&ampm=" & showampm & "&-Max=1&-Find"
		Set HttpObj = Server.CreateObject("AspHTTP.Conn")
		HttpObj.Url = "http://207.66.185.129/kion/FMPro?"
		HttpObj.PostData = showlink
		HttpObj.TimeOut = 10
		HttpObj.RequestMethod = "POST"
		newstrResult = HttpObj.GetURL
		
		errormessagepos = InStr(UCase(newstrResult),  "<HTML>")
		
		if errormessagepos then
		
			if showminute = 00 then
				showminute = 30
		
				if showhour > 1  and showhour < 12 then
					showhour = showhour - 1
				elseif showhour = 12 then
					showhour = showhour - 1
					if showampm = "am" then
						showampm = "pm"
					else
						showampm = "am"
					end if
				else
					showhour = 12
				end if
		
			else
				showminute = "00"
			end if
			loopcount = loopcount + 1
			'if loopcount = 10 then
			'	exit function
			'end if
		end if
		loop
		 %>
		
		<% if loopcount < 11 and newstrResult <> "" then %>
			
		<% response.write "On KION Right Now:<br><B>" & newstrResult & "</B><br><br>"  %>
	
		<% End If %>
	
	<% End If %>

<% End If %>