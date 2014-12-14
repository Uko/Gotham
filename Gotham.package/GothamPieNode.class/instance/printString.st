accessing
printString
	^ amount > 0
		ifTrue: [ name ]
	 	ifFalse: [ '' ]