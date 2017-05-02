drawing
drawString: aString at: aPoint3D offset: aPoint color: aColor on:canvas
	canvas drawString: aString at: (aPoint3D asPoint + self origin + aPoint) font: nil color: aColor.
