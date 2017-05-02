drawing
drawOn: canvas
	super drawOn: canvas.
	canvas
		translateBy: self bounds origin
		during: [ :translatedCanvas | 
			self drawProjections: translatedCanvas.
			self drawAxis: translatedCanvas.
			self drawPoints: translatedCanvas ]