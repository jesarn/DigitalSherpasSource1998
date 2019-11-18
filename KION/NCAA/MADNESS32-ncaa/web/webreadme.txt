WEB-BASED CREATION OF ENTRY FILES FOR MADNESS
---------------------------------------------
The Madness score program has previously accepted entry files
that were created by Windows or Macintosh client programs
distributed to pool players.  As of 1998, web-based entry via 
the Internet or via an Intranet is also possible.

COMPONENTS
----------
1) "entry.cgi" - Perl CGI script for the server (can be re-  
   named)
2) Web page generated from the score program (can be named as 
   desired)
3) Java applet consisting of 4 classes:
   madentry.class
   madgrid.class
   madhelp.class
   maderror.class

REQUIREMENTS
------------

1) Perl must be running CGI scripts on your web server.

2) You must be able to copy the supplied Perl CGI script to a 
location on your web server from which it can be executed by
a web page. 

3) You must modify the CGI script to have the proper path names, 
etc. for your web server's environment.  See the comments in 
the script for more information.  Feel free to modify the 
script, especially the HTML that is returned to the player, 
but be careful to preserve the basic functionality of the 
program.

4) You must establish a directory on the server in which to 
store the entry files, and the system security must be set up 
so that the CGI can write files into this directory.

5) You must also copy the POOL.DAT file used by the score
program into this directory. Do this AFTER this year's teams
and parameters have been entered, as this file is used to 
generate the receipt that is sent back to the player. (You
can test with last year's file, but make sure you replace
it after "Selection Sunday" with a file containing this year's
teams and parameters.
NOTE:Some operating systems are case-sensitive when it comes
to file names.  The CGI script has been written with the
POOL.DAT file name as upper case.  Also, different operating
systems have different end-of-line characters.  Make sure
when you copy the POOL.DAT file to your server that it ends
up with the EOL characters that will work with the version
of Perl on your server.

6) AFTER this year's teams and parameters are entered into 
the MADSCORE program, choose "Create HTML Entry Page" from 
the Edit menu in that program to generate an HTML document 
that will be used for entry.  There are two ways to customize 
this page:
   a) Edit the template file ENTRTMPL.HTM (in the HTML    
      directory with the score program) BEFORE generating the 
      page.
or b) Edit the generated file AFTER it is generated, being    
      careful not to interfere the operation of the Java   
      applet.
In either case, the MOST IMPORTANT THING TO DO is to set the 
"URL" parameter for the applet to point to the CGI script 
mentioned above.

7) Put the generated page and all 4 java class files onto your 
web server in a directory handled by the web server software.

8) After all players have created their entry files, copy
those files to the computer on which you are running the score
program.  Then merge them into the score program, just as any
other files that have been created with the Windows or Macintosh
entry programs.

HOW IT WORKS
------------
The web page consists mostly of a Java (v1.02) applet that
allows point-and-click choice of winners in each round, just
like the Windows and Macintosh client entry programs.  The
score program writes out a web page that has this year's teams
(and other information) as parameters to the applet.  Through
the "URL" parameter, the applet will send the player's choices
to the supplied CGI program, "entry.cgi".  This CGI script
will write the entry to a file on the web server, and return
a confirmation to the browser.  This is important for two
reasons:
1) The player gets feedback that his entry has been recorded.
2) The player can print the returned web page to have a record
   of what was picked.  This is important because due to Java
   security constraints, the player CAN NOT PRINT the contents
   of the Java applet prior to submitting his entry.
   (This is actually good, since no one can print an entry
   that was not submitted -- something that can happen if the
   entry is created with the Windows or Mac entry programs.)

TESTING
-------
Please test this process completely before making the page
available to users.  This should include importing the test
files into the score program. (Some file transfer methods do
strange things to files as they are being transferred.)

If you need assistance, contact me, Doug Harvey, via e-mail at
   dlharvey@erols.com.

PLEASE DO NOT ATTEMPT TO TELEPHONE ME.
If necessary, we can exchange phone numbers via e-mail.
