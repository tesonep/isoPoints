drawing
drawAxis: canvas
	self line: Point3D origin to: self lastXAxisPoint color: Color white on: canvas. 
	self drawString: 'x' at: self lastXAxisPoint  offset: (10@0) on:canvas.
	
	self line: Point3D origin to: self lastYAxisPoint color: Color white on: canvas. 
	self drawString: 'y' at: self lastYAxisPoint  offset: (10@0) on:canvas.

	self line: Point3D origin to: self lastZAxisPoint color: Color white on: canvas. 
	self drawString: 'z' at: self lastZAxisPoint  offset: (10@0) on:canvas.

		