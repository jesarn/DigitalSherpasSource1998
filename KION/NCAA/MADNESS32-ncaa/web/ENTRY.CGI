#!/usr/bin/perl
#
#---------------------------------------------------------------
# On most Unix (& Linux) systems, the first line of this
# file should be a COMMENT with an exclamation point
# followed by a full path to the Perl interpreter.
#
# On NT that first line does nothing, but an association must be
# set up in the registry between the file extension of this file
# and the Perl interpreter.  You can re-name this file
# (including extension), but make sure it matches the filename
# in the URL parameter in the applet of the form on the HTML page.
#---------------------------------------------------------------

#Date of last modification:980212

#---------------------------------------------------------------
# This program needs to read the POOL.DAT file that is created
# by the Madness SCORE program.  This file contains the names
# of the teams in this year's tournament and other pool
# parameters.  It should be copied to the same directory that
# will be used for storing entry files.
#---------------------------------------------------------------

#---------------------------------------------------------------
# $file_path must contain a full system path to the directory
# where you want players' entry files to be stored.  The default
# user assumed by anonymous web client must have authority to write
# files into this directory.  This directory must contain the
# "pool.dat" file that was created by the Madscore program after
# this year's teams and parameters were entered.  This is so
# the "receipt" page that is returned to the user can have the
# proper information on it.  This "receipt" page can be printed
# by the user to have a record of choices.  Web-based players 
# should be discouraged from printing before they submit their 
# entries. (In fact, the JAVA-based entry form will not print 
# properly, since JAVA applets are not permitted to print.)
#
# On Unix ( & Linux) it should look something like"
#   $file_path = "/tmp/madness/";
# On NT it should look something like:
#   $file_path = "F:/madness/entries/";
# (Note the forward slashes.  If you must use backslashes,
# you must double them so that Perl does not interpret them
# as escapes.)
# ****************** NOTE THE ENDING SLASH *********************
#---------------------------------------------------------------
$file_path = "/usr/local/test/dharvey/madentry/data/";

#---------------------------------------------------------------
# Nothing past this point really needs to be modified,
# unless you want to change the HTML that is returned to the
# player.  This HTML is near the end of this file.
#---------------------------------------------------------------

#--------------------------------
#	Get Posted Input
#--------------------------------
$cl         = $ENV{"CONTENT_LENGTH"};
read(STDIN, $qs, $cl);
@qs = split(/&/,$qs);
foreach $i(0 .. $#qs)
{
  $qs[$i] =~ s/\+/ /g;
  $qs[$i] =~ s/%(..)/pack("c",hex($1))/ge;
  ($name, $value) = split(/=/,$qs[$i],2);
  $qs{$name} = $value;
}

#-----------------------------------------
#		Get Query String Info
#-----------------------------------------

$query			 = $ENV{"QUERY_STRING"};
if ($query ne ""){	
	@qu = split(/&/, $query);
	foreach $i(0 .. $#qu){
    $qu[$i] =~ s/\+/ /g;
    $qu[$i] =~ s/%(..)/pack("c",hex($1))/ge;
		($name, $value) = split(/=/,$qu[$i],2);
		$qs{$name} = $value;
	}
}

$temp_data = $qs{"data"};
$name = $qs{"player"};
$tiebreak = $qs{"tiebreak"};

#-----------------------------------------
#  Read in team data from POOL.DAT
#-----------------------------------------
if (-e ($file_path . "POOL.DAT")) {
  $file_OK=1;
  $team[0]="";
  $abbr[0]="***";
  open(teamfile,"$file_path"."POOL.DAT");
  foreach $i(1..64) {
    $temp=<teamfile>;
    chop($temp);
    @fields=split(/\t/,$temp);
    while (length($fields[0])<3) {$fields[0]="-" . $fields[0];};
    while (length($fields[1])<13) {$fields[1]=" " . $fields[1];};
    push (@team,$fields[1]);
    push (@abbr,$fields[0]);
  }
  # now check to see if we are using a tiebreaker
  foreach $i(1..19) {
    $temp=<teamfile>;
  }
  chop($temp);
  if ($temp eq "0") {
    $tiebreak_flag=0;
  } else {
    $tiebreak_flag=1;
  }

  close (teamfile);
} else {
  $file_OK=0;
  $message="<font size=+2><b>Missing data file on server: POOL.DAT</b></font><br>";
  $message=$message . "<font color=red>Contact your pool administrator</font><br>";
}
foreach $i(0..31) {
  $c=substr($temp_data,$i,1);
  if ($c eq "a")    { $wincount[$i*2+1]=1; $wincount[$i*2+2]=0;}
  elsif ($c eq "b") { $wincount[$i*2+1]=2; $wincount[$i*2+2]=0;}
  elsif ($c eq "c") { $wincount[$i*2+1]=3; $wincount[$i*2+2]=0;}
  elsif ($c eq "d") { $wincount[$i*2+1]=4; $wincount[$i*2+2]=0;}
  elsif ($c eq "e") { $wincount[$i*2+1]=5; $wincount[$i*2+2]=0;}
  elsif ($c eq "f") { $wincount[$i*2+1]=6; $wincount[$i*2+2]=0;}
  elsif ($c eq "g") { $wincount[$i*2+1]=0; $wincount[$i*2+2]=1;}
  elsif ($c eq "h") { $wincount[$i*2+1]=0; $wincount[$i*2+2]=2;}
  elsif ($c eq "i") { $wincount[$i*2+1]=0; $wincount[$i*2+2]=3;}
  elsif ($c eq "j") { $wincount[$i*2+1]=0; $wincount[$i*2+2]=4;}
  elsif ($c eq "k") { $wincount[$i*2+1]=0; $wincount[$i*2+2]=5;}
  else              { $wincount[$i*2+1]=0; $wincount[$i*2+2]=6;}
}

foreach $i(1..64) {
  $game=$i;
  foreach $j(1..$wincount[$i]) {
    $round=$j+1;
    $game=int(($game+1)/2);
    $selection[$round][$game]=$i;
  }
}

foreach $round(2..7) {
  foreach $game(1..1<<(7-$round)) {
    $pool_data=$pool_data . $selection[$round][$game] . "\n";
  }
}

#---------------------------------------------------------------
# Check to see if the file already exists on the web server.
# If it does, return a message to the player without saving.
# If it does not already exist, create it and write the
# player's name and choices into it.
#---------------------------------------------------------------
if ($file_OK) {
	$filename="$name.nc2";
	if (-e ($file_path . $filename)) {
	  $file_OK=0;
	  $message="<font size=+2><b>Duplicate File name: </font>$filename</b></font><br>";
	  $message=$message . "Use your browser's 'Back' function<br>";
	  $message=$message . "to return to the entry page and choose another name.";
	} else {
	  $file_OK=1;
	  open(entryfile,">$file_path".$filename);
	  print entryfile "WIN\n";
	  print entryfile "$name\n";
	  print entryfile "$pool_data";
	  print entryfile "$tiebreak";
	  close (entryfile);
	  $message="<P>Data Stored on web server in file:<b>$filename</b>";
	}
}
#---------------------------------------------------------------
# This is the HTML that goes back to the user.
# '$message' will inform of success or failure.
# Some perl implementations automatically return the line 
# "Content-type: text/html".  If the page that is returned
# includes it such that it is visible to the user then
# just comment-out the next line.
#---------------------------------------------------------------
print "Content-type: text/html","\n\n";

print qq(
<HTML>
<HEAD><TITLE>Your Bigger Dance Entry</TITLE>
</HEAD>
<BODY BGCOLOR="#000000" TEXT="#FFFFFF" LINK="#E7E70C" ALINK="LINK="#E7E70C" VLINK="#C22727" BACKGROUND="http://www.sportsradio950.com/images/tertiary_background.jpg">

<FONT FACE="COMIC SANS MS">

<TABLE WIDTH=597 BORDER=0 CELLPADDING=0 CELLSPACING=0 VALIGN=TOP ALIGN=LEFT>
<TR>

<TD CELLPADDING=0 CELLSPACING=0 ROWSPAN=2 ALIGN=LEFT VALIGN=TOP><A HREF="http://www.sportsradio950.com/maps/personalitiesmenu.map" BORDER=0><IMG SRC="http://www.sportsradio950.com/images/clear_personalities_menu.gif" BORDER=0 ISMAP></A></TD>

<TD CELLPADDING=0 CELLSPACING=0 ALIGN=LEFT VALIGN=TOP><A HREF="http://www.sportsradio950.com/main.htm"><IMG SRC="http://www.sportsradio950.com/images/mitch_title.gif" BORDER=0></A>
</TD>
</TR>

<TR>
<TD ALIGN=LEFT VALIGN=TOP WIDTH="100%">
<br><br>
<H2>BIGGER DANCE PICKS</H2>
);
if ($file_OK) {
    print "<PRE><font size=-1>\n";
	$winner=$team[$selection[7][1]];
	$winner=~ s/^\s+//;
	print  "$team[1]|                           <font color=red>Entry Recorded</font>\n";
	print  "$team[2]|----$abbr[$selection[2][1] ]|                 Entry Name:$name\n";
	print  "$team[3])       |----$abbr[$selection[3][1] ]|";
	if ($tiebreak_flag) {
	  print "         Tiebreak:$tiebreak\n";
	} else {
	  print "\n";
	}
	print  "$team[4])----$abbr[$selection[2][2] ]|       |\n";
	print  "$team[5]|               |----$abbr[$selection[4][1] ]|\n";
	print  "$team[6]|----$abbr[$selection[2][3] ]|       |       |\n";
	print  "$team[7])       |----$abbr[$selection[3][2] ]|       |\n";
	print  "$team[8])----$abbr[$selection[2][4] ]|               |\n";
	print  "$team[9]|                       |----$abbr[$selection[5][1] ]|\n";
	print "$team[10]|----$abbr[$selection[2][5] ]|               |       |\n";
	print "$team[11])       |----$abbr[$selection[3][3] ]|       |       |\n";
	print "$team[12])----$abbr[$selection[2][6] ]|       |       |       |\n";
	print "$team[13]|               |----$abbr[$selection[4][2] ]|       |\n";
	print "$team[14]|----$abbr[$selection[2][7] ]|       |               |\n";
	print "$team[15])       |----$abbr[$selection[3][4] ]|               |\n";
	print "$team[16])----$abbr[$selection[2][8] ]|                       |\n";
	print "$team[17]|                               |----$abbr[$selection[6][1]]|\n";
	print "$team[18]|----$abbr[$selection[2][9] ]|                       |       |\n";
	print "$team[19])       |----$abbr[$selection[3][5] ]|               |       |\n";
	print "$team[20])----$abbr[$selection[2][10]]|       |               |       |\n";
	print "$team[21]|               |----$abbr[$selection[4][3] ]|       |       |\n";
	print "$team[22]|----$abbr[$selection[2][11]]|       |       |       |       |\n";
	print "$team[23])       |----$abbr[$selection[3][6] ]|       |       |       |\n";
	print "$team[24])----$abbr[$selection[2][12]]|               |       |       |\n";
	print "$team[25]|                       |----$abbr[$selection[5][2] ]|       |\n";
	print "$team[26]|----$abbr[$selection[2][13]]|               |               |\n";
	print "$team[27])       |----$abbr[$selection[3][7] ]|       |               |\n";
	print "$team[28])----$abbr[$selection[2][14]]|       |       |               |\n";
	print "$team[29]|               |----$abbr[$selection[4][4] ]|               |\n";
	print "$team[30]|----$abbr[$selection[2][15]]|       |                       |\n";
	print "$team[31])       |----$abbr[$selection[3][8] ]|                       |\n";
	print "$team[32])----$abbr[$selection[2][16]]|                               |\n";
	
	print "$team[33]|                                       |---$winner\n";
	print "$team[34]|----$abbr[$selection[2][17]]|                               |\n";
	print "$team[35])       |----$abbr[$selection[3][9] ]|                       |\n";
	print "$team[36])----$abbr[$selection[2][18]]|       |                       |\n";
	print "$team[37]|               |----$abbr[$selection[4][5] ]|               |\n";
	print "$team[38]|----$abbr[$selection[2][19]]|       |       |               |\n";
	print "$team[39])       |----$abbr[$selection[3][10]]|       |               |\n";
	print "$team[40])----$abbr[$selection[2][20]]|               |               |\n";
	print "$team[41]|                       |----$abbr[$selection[5][3] ]|       |\n";
	print "$team[42]|----$abbr[$selection[2][21]]|               |       |       |\n";
	print "$team[43])       |----$abbr[$selection[3][11]]|       |       |       |\n";
	print "$team[44])----$abbr[$selection[2][22]]|       |       |       |       |\n";
	print "$team[45]|               |----$abbr[$selection[4][6] ]|       |       |\n";
	print "$team[46]|----$abbr[$selection[2][23]]|       |               |       |\n";
	print "$team[47])       |----$abbr[$selection[3][12]]|               |       |\n";
	print "$team[48])----$abbr[$selection[2][24]]|                       |       |\n";
	print "$team[49]|                               |----$abbr[$selection[6][2] ]|\n";
	print "$team[50]|----$abbr[$selection[2][25]]|                       |\n";
	print "$team[51])       |----$abbr[$selection[3][13]]|               |\n";
	print "$team[52])----$abbr[$selection[2][26]]|       |               |\n";
	print "$team[53]|               |----$abbr[$selection[4][7] ]|       |\n";
	print "$team[54]|----$abbr[$selection[2][27]]|       |       |       |\n";
	print "$team[55])       |----$abbr[$selection[3][14]]|       |       |\n";
	print "$team[56])----$abbr[$selection[2][28]]|               |       |\n";
	print "$team[57]|                       |----$abbr[$selection[5][4] ]|\n";
	print "$team[58]|----$abbr[$selection[2][29]]|               |\n";
	print "$team[59])       |----$abbr[$selection[3][15]]|       |\n";
	print "$team[60])----$abbr[$selection[2][30]]|       |       |\n";
	print "$team[61]|               |----$abbr[$selection[4][8] ]|\n";
	print "$team[62]|----$abbr[$selection[2][31]]|       |\n";
	print "$team[63])       |----$abbr[$selection[3][16]]|\n";
	print "$team[64])----$abbr[$selection[2][32]]|\n";
	print "</PRE></font>\n";
} else {
print "$message\n";
}
print qq(
<P><BR>
<CENTER>
<FONT SIZE="-1">
<A HREF="http://www.sportsradio950.com/program_highlights.htm">Programming</A> | <A HREF="http://www.sportsradio950.com/personalities.htm">Personalities</A> | <A HREF="http://www.sportsradio950.com/games/">Game Room</A> | <A HREF="http://www.sportsradio950.com/this_week.htm">This Week On KJR-AM</A><br>
<A HREF="http://www.sportsradio950.com/jocks/staff/staff.htm">Staff</A> |
<A HREF="http://www.sportsradio950.com/sound_off.htm">Sound Off</A> | | <A HREF="http://www.sportsradio950.com/sports_club.htm">KJR-AM Sports Club</A> | <A HREF="http://www.sportsradio950.com/mail.htm">Email Us</A>
</FONT>
</CENTER>
<P><BR>
Comments or suggestions? Send them to <A HREF="mailto:kjr@digital-sherpas.com">kjr@digital-sherpas.com</A>.
<P><BR>
<ADDRESS>&copy; 1997, 1998 Sports Radio 950 KJR-AM.  All rights reserved.  Site design by <A HREF="http://www.digital-sherpas.com">Digital Sherpas</A>.</ADDRESS>
</td>
</TR>

</TABLE>
</FONT>
</BODY>
</HTML>
);
