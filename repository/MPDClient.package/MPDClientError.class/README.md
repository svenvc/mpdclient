I am MPDClientError, thrown when the MPD protocol returns an ACK instead of OK.

General syntax is

	ACK [error@command_listNum] {current_command} message_text
	
We only parse out the message_text for now