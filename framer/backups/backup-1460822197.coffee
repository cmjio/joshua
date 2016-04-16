# Import file "wopr" (sizes and positions are scaled 1:2)
tnw = new Layer
	width: 750
	height: 1334
	backgroundColor: "rgba(63,104,116,1)"
	opacity: 0
	rotation: -360
	scale: 0.8

wopr = Framer.Importer.load("imported/wopr@2x")

wopr.Group_2.y = 1340
wopr.Group_2.scale = 0.8
wopr.Group_2.opacity = 0

wopr.Group_6.x = 800
wopr.Group_6.opacity = 0

wopr.Group_2.animate
	properties:
		y: 250
		scale: 1
		opacity: 1
	curve: "spring(200,15,0)"
	delay: 1
	repeat: 0
	time: 1
	
wopr.Group_Copy.onClick =>
	wopr.Group_6.animate
		properties: 
			x: 110
			opacity: 1
		curve: "spring(200,15,0)"
		time: 1


wopr.Group_6.onAnimationEnd =>
	wopr.Group_6.animate
		properties: 
			x: -440
		time: 0.3
		delay: 0.5
		curve: "spring(200,15,0)"

wopr.Group.onTap =>
	tnw.animate
		properties: 
			opacity: 1
			scale: 1
		time: 0.5
	wopr.iPhone_6.animate
		properties:
			x: -750
			scale: 0.7
		time: 0.5