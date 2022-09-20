function onCreate()
	setProperty('skipCountdown', true)
 makeAnimatedLuaSprite('CupTitle','cup/ready_wallop',-600,-150)
 addAnimationByPrefix('CupTitle','Ready?','Ready? WALLOP!',24,false)
 objectPlayAnimation('CupTitle','Ready?',false)
 setLuaSpriteScrollFactor('CupTitle',0,0)

	if not lowQuality then
        makeAnimatedLuaSprite('CupThing','cup/the_thing2.0',-345,-200)
        setLuaSpriteScrollFactor('CupThing',0,0)
        addAnimationByPrefix('CupThing','BOO','BOO instance 1',20,false)
        objectPlayAnimation('CupThing','BOO',false)
        scaleObject('CupThing',1.6,1.6)
        addLuaSprite('CupThing',true)
        setObjectCamera('CupThing', 'hud');
	end
	
	
	runTimer('CupReady',0.5)
end

function onUpdate()

 Random = math.random(1,2)

    if getProperty('CupTitle.animation.curAnim.finished') == true then
        removeLuaSprite('CupTitle',true)
    end

    if getProperty('CupThing.animation.curAnim.finished') == true then
        removeLuaSprite('CupThing',true)
    end
end

function onTimerCompleted(tag)
	if tag == 'CupReady' then
		playSound('cup/intros/angry/'..Random)
		addLuaSprite('CupTitle',true)
		runTimer('CupTitleDestroy',4)
	end
end