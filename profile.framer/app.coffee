# Remove framer cursor
document.body.style.cursor = "auto"

# create background
bg = new BackgroundLayer
	backgroundColor: "#1774E0"
	
# create container to center items
article = new Layer
	width: 835, height: Screen.height
	backgroundColor: null
article.centerX()

container = new Layer
	superLayer: article
	width: 664, height: article.height
	backgroundColor: null
container.centerX()

# create header and header bar
headerNav = new Layer
	width: 835, height: 22
	y: 9
	image: "images/headerNav.png"
	superLayer: article
	
headerBar = new Layer
	width: Screen.width, height: 43
	backgroundColor: "rgba(0,0,0,0.2)"
	
# distance objects travel about the y on load	
yDistance = 15
	
# past journeys	
pastJourneys = new Layer
	width: 173, height: 16
	y: 654 + yDistance
	opacity: 0
	image: "images/pastJourneys.png"
	superLayer: container

animatePastJourneys = new Animation
	layer: pastJourneys
	properties: 
		opacity: 1
		y: 654

# upcoming journeys	
upcomingJourneys = new Layer
	width: 233, height: 16
	y: 293 + yDistance
	opacity: 0
	image: "images/upcomingJourneys.png"
	superLayer: container	
	
animateUpcomingJourneys = new Animation
	layer: upcomingJourneys
	properties: 
		opacity: 1
		y: 293
		

caribbeanPic = new Layer
	width: 664, height: 276
	y: 327 + yDistance
	opacity: 0
	scale: 0.95
	image: "images/alaskaPic.png"
	superLayer: container
caribbeanPic.centerX()

alaskaPic = new Layer
	width: 664, height: 334
	y: 692 + yDistance
	opacity: 0
	scale: 0.95
	image: "images/caribbeanPic.png"
	superLayer: container
alaskaPic.centerX()

#animations
animateCaribbean = new Animation
	layer: caribbeanPic
	properties: 
		opacity: 1
		y: 327
		scale: 1
		
animateAlaska = new Animation
	layer: alaskaPic
	properties: 
		opacity: 1
		y: 692
		scale: 1

animateCaribbean.start()
animateAlaska.start()
animatePastJourneys.start()
animateUpcomingJourneys.start()

# loyalty bar
bronzeStatus = new Layer
	width: 38, height: 9
	y: 232, x: 130
	image: "images/bronzeStatus.png"
	superLayer: container
silverStatus = new Layer
	width: 30, height: 10
	y: bronzeStatus.y, x: bronzeStatus.x + 370
	image: "images/silverStatus.png"
	superLayer: container
loyaltyLevel = new Layer
	width: 141, height: 14
	y: 234
	image: "images/loyaltyLevel.png"
	superLayer: container
loyaltyLevel.centerX()
	
statusBar = new Layer
	width: 405, height: 12
	y: 207
	image: "images/statusBar.png"
	superLayer: container
statusBar.centerX()	

craigHeadshot = new Layer
	width: 100, height: 100
	y: 90
	scale: 0.95
	image: "images/craigHeadshot.png"
	superLayer: container
craigHeadshot.centerX()

animateCraigHeadshot = new Animation
	layer: craigHeadshot
	properties: 
		scale: 1

animateCraigHeadshot.start()
	
craigProfile = new Layer
	width: 128, height: 17
	y: 60
	image: "images/craigProfile.png"
	superLayer: article
	
backArrow = new Layer
	width: 21, height: 13
	y: craigProfile.y
	x: container.width - 21
	image: "images/backWhite.png"
	superLayer: article
backArrow.x = article.width - backArrow.width

