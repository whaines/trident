# Remove framer cursor
document.body.style.cursor = "auto"

# insert video
bgVideo = new VideoLayer 
	width: 1920, height: 1080
	#video: "images/ocean-flight-deep-cloudsky_v2.mp4"
	video: "images/041945608_prev_264.mp4"

# wait for the DOM to load before playing the video
Utils.domComplete ->
	#print "loaded"
	bgVideo.player.play()
	bgVideo.player.loop = true
	bgVideo.player.playbackRate = 0.5
	bgVideo.player.mute = true
	bgVideo.centerX()

# create masking layer for video
videoMask = new Layer
	width: Screen.width, height: Screen.height
	backgroundColor: "#1774E0"
	opacity: 0.4
	
# create header bar with opacity
headerBar = new Layer
	width: Screen.width, height: 38
	backgroundColor: "#fff"
	opacity: 0.2
	
# create header navigation
headerNav = new Layer
	width: 835, height: 22
	image: "images/headerFill.png"
	y: 8
headerNav.centerX()

# create container to hold My Ocean Profile assets
profileContainer = new Layer
 width: 550, height: 500
 backgroundColor: null
profileContainer.center()

profileRuleTwo = new Layer
	width: 287, height: 2
	y: 392
	image: "images/hzRuleTwo.png"
	superLayer: profileContainer
profileRuleTwo.centerX()
profileRuleOne = new Layer
	width: 287, height: 2
	y: 243
	image: "images/hzRuleOne.png"
	superLayer: profileContainer
profileRuleOne.centerX()
profileLogin = new Layer
	width: 71, height: 22
	y: 167
	image: "images/logIn.png"
	superLayer: profileContainer
profileLogin.centerX()
joinOcean = new Layer
	width: 176, height: 19
	y: 303
	image: "images/joinOcean.png"
	superLayer: profileContainer
joinOcean.centerX()
travelAgent = new Layer
	width: 228, height: 22
	y: 452
	image: "images/travelAgent.png"
	superLayer: profileContainer
travelAgent.centerX()
myOceanProfile = new Layer
	width: 529, height: 59
	image: "images/myOceanProfile.png"
	superLayer: profileContainer
myOceanProfile.centerX()

# create onboarding carosel
onboardingPages = new PageComponent
	width: 867, height: 829
	borderRadius: 8
	scrollHorizontal: true
	scrollVertical: false
	backgroundColor: "#101D45"
onboardingPages.center()

#set onboarding to invisible
onboardingPages.visible = false
onboardingPages.opacity = 0.0

# create pages
pageOne = new Layer
	width: onboardingPages.width, height: onboardingPages.height
	backgroundColor: null
pageTwo = new Layer
	width: onboardingPages.width, height: onboardingPages.height
	backgroundColor: null
pageThree = new Layer
	width: onboardingPages.width, height: onboardingPages.height
	backgroundColor: null

# add and position pages in the scroll component
onboardingPages.addPage(pageOne)
onboardingPages.addPage(pageTwo, "right")
onboardingPages.addPage(pageThree, "right")

# content for onboarding page one	
avidText = new Layer
	width: 527, height: 39
	image: "images/avidText.png"
	superLayer: pageOne
	y: 606
avidText.centerX()
circleProfile = new Layer
	width: 362, height: 362
	y: 133
	image: "images/circleProfile.png"
	superLayer: pageOne
circleProfile.centerX()
oneProfile = new Layer
	width: 534, height: 27
	y: 555
	image: "images/oneProfile.png"
	superLayer: pageOne
oneProfile.centerX()
paginationOne = new Layer
	width: 85, height: 11
	y: 778
	image: "images/paginationOne.png"
	superLayer: pageOne
paginationOne.centerX()
skipButton = new Layer
	width: 101, height: 38
	image: "images/skipButton.png"
	superLayer: onboardingPages
	y: 707
skipButton.centerX()
welcomeText = new Layer
	width: 436, height: 28
	image: "images/welcomeText.png"
	superLayer: onboardingPages
	y: 39
welcomeText.centerX()

# content for onboarding page two
paginationTwo = new Layer
	width: 85, height: 11
	y: 778
	image: "images/paginationTwo.png"
	superLayer: pageTwo
paginationTwo.centerX()
onceText = new Layer
	width: 643, height: 61
	y: 606
	image: "images/once.png"
	superLayer: pageTwo
onceText.centerX()
personalizedText = new Layer
	width: 647, height: 27
	y: 555
	image: "images/personalized.png"
	superLayer: pageTwo
personalizedText.centerX()
grayBox = new Layer
	width: 335, height: 389
	y: 120
	image: "images/grayBox.png"
	superLayer: pageTwo
grayBox.centerX()

# content for onboarding page three
paginationThree = new Layer
	width: 85, height: 11
	image: "images/paginationThree.png"
	superLayer: pageThree
	y: 778
paginationThree.centerX()
privacyText = new Layer
	width: 422, height: 58
	y: 601
	image: "images/privacyText.png"
	superLayer: pageThree
privacyText.centerX()
infoText = new Layer
	width: 417, height: 69
	image: "images/infoText.png"
	y: 510
	superLayer: pageThree
infoText.centerX()
cloudImage = new Layer
	width: 428, height: 235
	y: 193
	image: "images/cloud.png"
	superLayer: pageThree
cloudImage.centerX()

# navigation arrows
arrowOne = new Layer
	width: 25, height: 46
	x: pageOne.width - 52
	image: "images/arrowOne.png"
	superLayer: pageOne
arrowOne.centerY()
arrowTwo = new Layer
	width: 25, height: 46
	x: pageTwo.width - 52
	image: "images/arrowTwo.png"
	superLayer: pageTwo
arrowTwo.centerY()
arrowThree = new Layer
	width: 25, height: 46
	image: "images/arrowThree.png"
	x: pageThree.width - 52
	superLayer: pageThree
arrowThree.centerY()

# open onboarding sequence on Join Ocean click
joinOcean.on Events.Click, ->
	#set onboarding to invisible
	onboardingPages.visible = true
	onboardingPages.animate
		properties:
			opacity: 1

# arrow advances to next page		
arrowOne.on Events.Click, ->
	onboardingPages.snapToNextPage()

# arrow advances to next page	
arrowTwo.on Events.Click, ->
	onboardingPages.snapToNextPage()

# arrow advances to next prototype	
arrowThree.on Events.Click, ->
	window.location = "http://localhost:8000/git/trident/_bod_walkthru/create-ocean-profile/"
			
# skip advances to next prototype	
skipButton.on Events.Click, ->
	window.location = "http://localhost:8000/git/trident/_bod_walkthru/create-ocean-profile/"

# replicate Princess homepage
princess = new Layer
	width: 2417, height: 1484
	y: 38
	opacity: 0
	image: "images/screencapture-www-princess-com-1442946078043.png"
princess.centerX()

# create hidden My Ocean button	
myOceanButton = new Layer
	width: 100, height: 38
	x: 675
	scale: 1
	backgroundColor: null
	superLayer: headerNav
	
myOceanButton.on Events.Click, ->
	princess.animate
		properties: 
			#y: Screen.height
			opacity: 0
		time: 0.5
		curve: "ease-out"
	
# detect if window is resizing and make responsive(?)
Events.wrap(window).addEventListener "resize", (event) ->
    videoMask.width = Screen.width
    videoMask.height = Screen.height
    headerBar.width = Screen.width
    headerNav.centerX()
    profileContainer.center()
