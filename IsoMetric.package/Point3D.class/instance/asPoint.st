converting
asPoint
	| m1 m2 m3 alpha beta r |
	alpha := -135 / 180 * Float pi.
	beta := -35.264 / 180 * Float pi.

	m1 := Matrix new: 3.
	m1 at: 1 at: 1 put: 1.
	m1 at: 1 at: 2 put: 0.
	m1 at: 1 at: 3 put: 0.
	m1 at: 2 at: 1 put: 0.
	m1 at: 2 at: 2 put: alpha cos.
	m1 at: 2 at: 3 put: alpha sin.
	m1 at: 3 at: 1 put: 0.
	m1 at: 3 at: 2 put: alpha sin negated.
	m1 at: 3 at: 3 put: alpha cos.

	m2 := Matrix new: 3.
	m2 at: 1 at: 1 put: beta cos.
	m2 at: 1 at: 2 put: 0.
	m2 at: 1 at: 3 put: beta sin negated.
	m2 at: 2 at: 1 put: 0.
	m2 at: 2 at: 2 put: 1.
	m2 at: 2 at: 3 put: 0.
	m2 at: 3 at: 1 put: beta sin.
	m2 at: 3 at: 2 put: 0.
	m2 at: 3 at: 3 put: beta cos.

	m3 := Matrix new: 3.
	m3 at: 1 at: 1 put: 1.
	m3 at: 1 at: 2 put: 0.
	m3 at: 1 at: 3 put: 0.
	m3 at: 2 at: 1 put: 0.
	m3 at: 2 at: 2 put: 1.
	m3 at: 2 at: 3 put: 0.
	m3 at: 3 at: 1 put: 0.
	m3 at: 3 at: 2 put: 0.
	m3 at: 3 at: 3 put: 0.

	r := m3 +* (m1 +* m2 +* { x. y. z negated }).
	^ (r at:1) @ (r at:2)
