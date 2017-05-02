accessing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: x asString;
		nextPutAll: ', ';
		nextPutAll: y asString;
		nextPutAll: ', ';
		nextPutAll: z asString;
		nextPut: $)