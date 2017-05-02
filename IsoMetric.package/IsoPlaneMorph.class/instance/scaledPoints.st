accessing
scaledPoints
	^ points collect: [ :e | e scaleBy: self scalePoint ]