drawing
drawPoints: canvas
	self scaledPoints
		withIndexDo: [ :scaled :idx| 
			| rect |
			self line: Point3D origin to: scaled color: (self colorAt:idx) on: canvas.
			rect := scaled asPoint + self origin - (2 @ 2) extent: 4 @ 4.
			canvas fillOval: rect color: Color white ]