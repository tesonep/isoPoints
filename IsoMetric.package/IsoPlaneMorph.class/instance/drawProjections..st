drawing
drawProjections: canvas
	self points
		do: [ :aPoint |  
			| scaled xyProjection zyProjection zxProjection xProjection yProjection zProjection|
			scaled := aPoint scaleBy: self scalePoint.

			xyProjection := scaled copy z: 0.
			zxProjection := scaled copy y: 0.
			zyProjection := scaled copy x: 0.
			
			xProjection := scaled copy y:0; z:0.
			yProjection := scaled copy x:0; z:0.
			zProjection := scaled copy x:0; y:0.
			
			self line: zyProjection to: scaled color: Color gray on:canvas.
			self line: xyProjection to: scaled color: Color gray on:canvas.
			self line: zxProjection to: scaled color: Color gray on:canvas.

			self line: zyProjection to: zProjection color: Color gray on:canvas.
			self line: zyProjection to: yProjection color: Color gray on:canvas.

			self line: zxProjection to: zProjection color: Color gray on:canvas.
			self line: zxProjection to: xProjection color: Color gray on:canvas.

			self line: xyProjection to: xProjection color: Color gray on:canvas.
			self line: xyProjection to: yProjection color: Color gray on:canvas.		
			
			(aPoint x ~= 0) ifTrue:[
				self drawString: aPoint x asString at: xProjection offset: (0@(-15)) color: Color gray on: canvas].
			(aPoint y ~= 0) ifTrue:[			
				self drawString: aPoint y asString at: yProjection offset: (2@(-12)) color: Color gray on: canvas]. 
			(aPoint z ~= 0) ifTrue:[
				self drawString: aPoint z asString at: zProjection offset: (0@0) color: Color gray on: canvas]. 			
		]
