drawing
colorAt: index
	| colors |
	colors := #(orange red blue green yellow cyan pink lightBlue tan)
		collect: [ :s | s value: Color ].
	^ colors at: index % colors size + 1