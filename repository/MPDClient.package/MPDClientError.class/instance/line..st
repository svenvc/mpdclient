initialization
line: string
	line := string.
	code := (line copyFrom: (line indexOf: $[) + 1 to: (line indexOf: $@) - 1) asNumber.
	messageText := line copyFrom: (line indexOf: $}) + 2 to: line size