# Remove framer cursor
document.body.style.cursor = "auto"

# create body background
bg = new BackgroundLayer
	backgroundColor: "#3685E0"
	
# create header	
headerBar = new Layer
	width: Screen.width, height: 43
	backgroundColor: "#fff"
	opacity: 0.2
	
# create bounding body
article = new Layer
	width: 812, height: Screen.height
	backgroundColor: null
article.centerX()

mainNav = new Layer
	width: headerBar.width, height: headerBar.height
	superLayer: article
	backgroundColor: null
	
# upcoming journeys
# create box
upcomingJourneyContainer = new Layer
	width: article.width
	#height: 514
	height: 360
	y: 345 + 15
	scale: 0.95
	opacity: 0
	backgroundColor: "Red"
	borderRadius: 15
	superLayer: article

upcomingJourneysText = new Layer
	html: "Upcoming Journeys"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '20px'
	width: 500
	y: 310 + 15
	backgroundColor: null
	superLayer: article
	
# animate	
animateUpcomingJourneyContainer = new Animation
	layer: upcomingJourneyContainer
	properties: 
		y: 345
		scale: 1
		opacity: 1
		
animateUpcomingJourneyText = new Animation
	layer: upcomingJourneysText
	properties: 
		y: 310

# start animations on load
animateUpcomingJourneyContainer.start()
animateUpcomingJourneyText.start()




#typography.com defaults for Gotham ScreenSmart
#font-family: "Gotham SSm A", "Gotham SSm B";
#font-style: normal;
#font-weight: 300;

# populate 
navSpacing = 100

princessLogo = new Layer
	width: 47, height: 22
	image: "images/princessLogo.png"
	superLayer: mainNav
princessLogo.centerY()

learnNavText = new Layer
	html: "Learn"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
		textAlign: 'center'
	width: 45, height: 25
	backgroundColor: null
	superLayer: mainNav
	x: princessLogo.x + navSpacing + 10
learnNavText.centerY()

planNavText = new Layer
	html: "Plan"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
		textAlign: 'left'
	width: 75, height: 25
	backgroundColor: null
	superLayer: mainNav
	x: learnNavText.x + navSpacing + 10
planNavText.centerY()

exploreNavText = new Layer
	html: "Explore"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
		textAlign: 'left'
	width: 75, height: 25
	backgroundColor: null
	superLayer: mainNav
	x: planNavText.x + navSpacing
exploreNavText.centerY()

shopNavText = new Layer
	html: "Shop"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
		textAlign: 'left'
	width: 75, height: 25
	backgroundColor: null
	superLayer: mainNav
	x: exploreNavText.x + navSpacing + 20
shopNavText.centerY()

oceanNavText = new Layer
	html: "Ocean"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
		textAlign: 'left'
	width: 75, height: 25
	backgroundColor: null
	superLayer: mainNav
	x: shopNavText.x + navSpacing
oceanNavText.centerY()

myOceanNavText = new Layer
	html: "My Ocean"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
		textAlign: 'left'
	width: 75, height: 25
	backgroundColor: null
	superLayer: mainNav
	x: oceanNavText.x + navSpacing + 15
myOceanNavText.centerY()
	
shoppingBag = new Layer
	width: 13, height: 19
	image: "images/shoppingBag.png"
	superLayer: mainNav
	x: article.width - 13
shoppingBag.centerY()

# small profile pic for upper-lefthand corner	
#craigSmProfilePic = new Layer
	#width: 22, height: 22
	#image: "images/craigProfilePic.png"
	#superLayer: article
	#y: 60

#craigNameSm = new Layer
#	html: "Craig Feldman"
#	style: 
#		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
#		fontStyle: 'normal'
#		fontWeight: '300'
#		fontSize: '12px'
#		textAlign: 'left'
#	backgroundColor: null
#	width: 115, height: 20
#	superLayer: article
#	y: craigSmProfilePic.y, x: craigSmProfilePic.x + craigSmProfilePic.width + 11
	


# just call it the down arrow...
backWhite = new Layer
	width: 21, height: 13
	image: "images/backWhite.png"
	superLayer: article
	y: 60, x: article.width - 21

# main profile pic
craigProfilePicBg = new Layer
	width: 104, height: 104
	superLayer: article
	y: 80
	borderRadius: 50 
	backgroundColor: "#fff"
craigProfilePicBg.centerX()

craigProfilePic = new Layer
	width: 100, height: 100
	image: "images/craigProfilePic.png"
	superLayer: craigProfilePicBg
craigProfilePic.center()

craigName = new Layer
	html: "Craig Feldman"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '30px'
		textAlign: 'center'
	backgroundColor: null
	width: 300, height: 30
	superLayer: article
	y: craigProfilePicBg.y + craigProfilePicBg.height + 15
craigName.centerX()

# create the loyalty bar
loyaltyBar = new Layer
	y: craigName.y + craigName.height + 15
	width: 405, height: 12
	superLayer: article
	backgroundColor: "#fff"
	opacity: 0.3
	borderRadius: 8
loyaltyBar.centerX()

# fill the loyalty bar
loyaltyBarFill = new Layer
	height: loyaltyBar.height, width: 0
	backgroundColor: "#000"
	opacity: 1
	superLayer: loyaltyBar

# animate loyalty bar fill
animateLoyaltyBarFill = new Animation
	layer: loyaltyBarFill
	properties: 
		width: 175
		opacity: 1
	time: 2
		
animateLoyaltyBarFill.start()

loyaltyLevelText = new Layer
	html: "Ocean Loyalty Level"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '12px'
		textAlign: 'left'
	backgroundColor: null
	width: 130, height: 20
	superLayer: article
	y: loyaltyBar.y + loyaltyBar.height + 15 
loyaltyLevelText.centerX()
	
bronzeLevelText = new Layer
	html: "Bronze"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '12px'
		textAlign: 'left'
	backgroundColor: null
	width: 115, height: 20
	superLayer: article
	y: loyaltyBar.y + loyaltyBar.height + 4
	x: loyaltyBar.x

silverLevelText = new Layer
	html: "Silver"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '12px'
		textAlign: 'left'
	backgroundColor: null
	width: 115, height: 20
	superLayer: article
	y: loyaltyBar.y + loyaltyBar.height + 4
	x: loyaltyBar.x + loyaltyBar.width - 35





# handle the video
upcomingVideo = new VideoLayer 
	#width: 1280, height: 720
	width: 914, height: 514
	video: "images/17A079_072_comp.mp4"
	superLayer: upcomingJourneyContainer
upcomingVideo.center()

#create video mask
upcomingVideoMask = new Layer
	width: upcomingJourneyContainer.width, height: upcomingJourneyContainer.height
	superLayer: upcomingJourneyContainer
	backgroundColor: "#000"
	opacity: 0.6

# play video on mouse over
upcomingVideo.on Events.MouseOver, ->
	upcomingVideo.player.play()
	upcomingVideo.player.loop = true
	upcomingVideo.player.playbackRate = 0.5
	upcomingVideoMask.animate
		properties: 
			opacity: 0.3
		curve: "ease-out"

# pause on mouse out
upcomingVideo.on Events.MouseOut, ->
	upcomingVideo.player.pause()
	upcomingVideoMask.animate
		properties: 
			opacity: 0.6
		curve: "ease-out"
		time: 0.25






# text on video
caribbeanText = new Layer
	html: "Caribbean"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '30px'
		textAlign: 'center'
	backgroundColor: null
	width: 165, height: 30
	y: 30
	superLayer: upcomingJourneyContainer
caribbeanText.centerX()

daysTilText = new Layer
	html: "Eight days until boarding!"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
		textAlign: 'right'
	backgroundColor: null
	width: 190, height: 30
	y: caribbeanText.y + 3, x: upcomingJourneyContainer.width - 190 - 29
	superLayer: upcomingJourneyContainer

dateText = new Layer
	html: "Nov 12, 2015"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
		textAlign: "center"
	backgroundColor: null
	width: 165, height: 30
	y: caribbeanText.y + caribbeanText.height
	superLayer: upcomingJourneyContainer
dateText.centerX()




# create ocean profile cell
oceanProfileCell = new Layer
	width: 685, height: 40
	superLayer: upcomingJourneyContainer
	y: 115
	borderColor: "#fff"
	borderWidth: 1
	borderRadius: 5
	backgroundColor: null
oceanProfileCell.centerX()

# animate fill to 33%
oceanProfileFill = new Layer
	width: 0, height: oceanProfileCell.height
	backgroundColor: "rgba(91,152,222,0.33)"
	superLayer: oceanProfileCell
	
animateOceanProfileFill = new Animation
	layer: oceanProfileFill
	properties: 
		width: oceanProfileCell.width * .33
	time: 2
		
# animate on load
animateOceanProfileFill.start()

oceanProfileLabel = new Layer
	html: "Ocean Profiles"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
	backgroundColor: null
	width: 143, height: 30
	superLayer: oceanProfileCell
	x: 29
oceanProfileLabel.centerY()

oceanProfileClickFinish = new Layer
	html: "Click to finish"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
	backgroundColor: null
	width: 190, height: 30
	superLayer: oceanProfileCell
	x: oceanProfileCell.width - 130
oceanProfileClickFinish.centerY()

oceanCompletionText = new Layer
	html: "- 33% complete"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
	backgroundColor: null
	width: 190, height: 30
	superLayer: oceanProfileCell
	x: oceanProfileLabel.width
oceanCompletionText.centerY()

# create ready to board  cell
readyToBoardCell = new Layer
	width: 685, height: 40
	superLayer: upcomingJourneyContainer
	y: oceanProfileCell.y + oceanProfileCell.height + 15
	borderColor: "#fff"
	borderWidth: 1
	borderRadius: 5
	backgroundColor: null
readyToBoardCell.centerX()

readyToBoardLabel = new Layer
	html: "Ready to Board"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
	backgroundColor: null
	width: 143, height: 30
	superLayer: readyToBoardCell
	x: 29
readyToBoardLabel.centerY()

readyToBoardClickFinish = new Layer
	html: "Click to finish"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
	backgroundColor: null
	width: 190, height: 30
	superLayer: readyToBoardCell
	x: oceanProfileCell.width - 130
readyToBoardClickFinish.centerY()

readyCompletionText = new Layer
	html: "- 0% complete"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
	backgroundColor: null
	width: 190, height: 30
	superLayer: readyToBoardCell
	x: readyToBoardLabel.width + 8
readyCompletionText.centerY()

# create build your voyage cell
buildVoyageCell = new Layer
	width: 685, height: 40
	superLayer: upcomingJourneyContainer
	y: readyToBoardCell.y + readyToBoardCell.height + 15
	borderColor: "#fff"
	borderWidth: 1
	borderRadius: 5
	backgroundColor: null
buildVoyageCell.centerX()

readyToBoardLabel = new Layer
	html: "Build Your Voyage"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
	backgroundColor: null
	width: 143, height: 30
	superLayer: buildVoyageCell
	x: 29
readyToBoardLabel.centerY()

readyToBoardClickFinish = new Layer
	html: "Click to finish"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '14px'
	backgroundColor: null
	width: 190, height: 30
	superLayer: buildVoyageCell
	x: buildVoyageCell.width - 130
readyToBoardClickFinish.centerY()

readyCompletionText = new Layer
	html: "- 0% complete"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
	backgroundColor: null
	width: 190, height: 30
	superLayer: buildVoyageCell
	x: readyToBoardLabel.width + 30
readyCompletionText.centerY()

# blurb goes below cells
caribbeanLoremText = new Layer
	html: "After completing each of the steps, you will be able to edit your profile, itinerary and Ready to Board information."
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
		textAlign: 'center'
	backgroundColor: null
	width: 500, height: 50
	superLayer: upcomingJourneyContainer
	y: buildVoyageCell.y + buildVoyageCell.height + 15
caribbeanLoremText.centerX()


# past journeys
# create box
pastJourneyContainer = new Layer
	width: article.width
	#height: 514
	height: 360
	y: upcomingJourneyContainer.y + upcomingJourneyContainer.height + 65
	scale: 0.95
	opacity: 1
	backgroundColor: null
	borderRadius: 15
	superLayer: article
	
animatePastJourneyContainer = new Animation
	layer: pastJourneyContainer
	properties: 
		opacity: 1
		scale: 1
		
# run animation on load
animatePastJourneyContainer.start()

pastJourneysText = new Layer
	html: "Past Journeys"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '20px'
	width: 500
	y: 750 + 15
	backgroundColor: null
	superLayer: article
	
animatePastJourneyText = new Animation
	layer: pastJourneysText
	properties:
		y: 750

# animate text up on load	
animatePastJourneyText.start()


# handle the video
pastVideo = new VideoLayer 
	width: 914, height: 514
	video: "images/17A269_010_comp.mp4"
	superLayer: pastJourneyContainer
pastVideo.center()

#create video mask
pastVideoMask = new Layer
	width: pastJourneyContainer.width, height: pastJourneyContainer.height
	superLayer: pastJourneyContainer
	backgroundColor: "#000"
	opacity: 0.6

# play video on mouse over
pastVideo.on Events.MouseOver, ->
	pastVideo.player.play()
	pastVideo.player.loop = true
	pastVideo.player.playbackRate = 0.5
	pastVideoMask.animate
		properties: 
			opacity: 0.3
		curve: "ease-out"

# pause on mouse out
pastVideo.on Events.MouseOut, ->
	pastVideo.player.pause()
	pastVideoMask.animate
		properties: 
			opacity: 0.6
		curve: "ease-out"
		time: 0.25



# text on video
alaskaText = new Layer
	html: "Alaska"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '500'
		fontSize: '30px'
		textAlign: 'center'
	backgroundColor: null
	width: 165, height: 30
	y: 30
	superLayer: pastJourneyContainer
alaskaText.centerX()
	
	
pastDaysTilText = new Layer
	html: "Complete"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
		textAlign: 'right'
	backgroundColor: null
	width: 190, height: 30
	y: alaskaText.y + 3, x: pastJourneyContainer.width - 190 - 29
	superLayer: pastJourneyContainer

pastDateText = new Layer
	html: "Aug 21, 2015"
	style: 
		fontFamily: "'Gotham SSm A', 'Gotham SSm B'"
		fontStyle: 'normal'
		fontWeight: '300'
		fontSize: '14px'
		textAlign: "center"
	backgroundColor: null
	width: 165, height: 30
	y: alaskaText.y + alaskaText.height
	superLayer: pastJourneyContainer
pastDateText.centerX()
	