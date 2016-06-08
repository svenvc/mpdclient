# MPDClient

The MPDClient project offers a client side interface to the Linux Music Player Daemon at the protocol level (MPDClient) as well as a web app (MPDClientDelegate) for Pharo.

````
Metacello new
	baseline: 'MPDClient';
	repository: 'github://svenvc/mpdclient:master/repository';
	load.
````

Written by Sven Van Caekenberghe for http://Audio359.eu

## MPDClientDelegate

MPDClientDelegate provides a simple, remote control style web interface to MPD. The web app was written for my personal use and taste, YMMV. There are 3 main views, mirroring the concepts behind MPD itself. Here are some screenshots.

The primary playback view

![Image](https://raw.githubusercontent.com/svenvc/mpdclient/master/screenshots/playback.png)

The playlist view

![Image](https://raw.githubusercontent.com/svenvc/mpdclient/master/screenshots/playlist.png)

The primary library view

![Image](https://raw.githubusercontent.com/svenvc/mpdclient/master/screenshots/library.png)

The library view, inside an artitst's folder

![Image](https://raw.githubusercontent.com/svenvc/mpdclient/master/screenshots/library-artist.png)

The playback details view

![Image](https://raw.githubusercontent.com/svenvc/mpdclient/master/screenshots/playback-details.png)

Here is one way to start the web app

````
ZnServer startDefaultOn: 8866.

ZnServer default delegate prefixMap removeAll.

ZnServer default delegate map: #mpdc to: MPDClientDelegate new.

ZnServer default delegate map: #/ to: #mpdc.

ZnServer stopDefault.
````

## MDPClient

MPDClient is a support object offering an object oriented interface to talk to an MPD (Music Player Deamon) server. It implements part of MPD's native protocol.

- https://en.wikipedia.org/wiki/Music_Player_Daemon
- http://www.musicpd.org/
- http://www.musicpd.org/doc/protocol/index.html

Here are some usage examples (normally the same instance should be kept and reused for efficiency). Not specifying a host implies localhost.

````
(MPDClient new host: 'audio359') currentSong.

"a Dictionary(
  #Album->'Aqualung' 
  #AlbumArtist->'Jethro Tull' 
  #Artist->'Jethro Tull' 
  #Date->1990 #Disc->1 
  #Genre->'Pop Rock' 
  #Id->98 
  #'Last-Modified'->'2016-05-04T21:58:42Z' 
  #Pos->3 
  #Time->233 
  #Title->'Mother Goose' 
  #Track->4 
  #file->'USB/Jethro Tull/Aqualung/04-Mother_Goose.flac' )"

(MPDClient new host: 'audio359') stats. 

"a Dictionary(
  #albums->263 
  #artists->206 
  #db_playtime->740233 
  #db_update->1462810813 
  #playtime->24455 
  #songs->2536 
  #uptime->631582 )"

(MPDClient new host: 'audio359') pause.

"a Dictionary()"

(MPDClient new host: 'audio359') play.

"a Dictionary()"
 ````

Make sure you understand how MPD works, with its play queue, then read the source code. Reading the spec might be helpful too. At the moment, this is little project is a function hack, nothing more.

