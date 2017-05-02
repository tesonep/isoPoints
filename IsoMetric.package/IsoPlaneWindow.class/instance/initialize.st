initialization
initialize
	super initialize.
	morph := IsoPlaneMorph new.	
	morph spaceSize: (Point3D x: 2 y: 2 z:2).
	self addMorph: morph frame: (0@0 extent:1@1).