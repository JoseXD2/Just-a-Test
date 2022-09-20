
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('z') then
		objectPlayAnimation('button', 'Dodge 2', false); --when the a is Dodge 2 
	else
		objectPlayAnimation('button', 'Dodge 1', false); --do not do anything
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('button', 'Buttons_IC/DodgeButtonMobile', 1150, 582.5);
	addAnimationByPrefix('button', 'Dodge 1', 'Dodge 1', 24, false);
	addAnimationByPrefix('button', 'Dodge 2', 'Dodge 2', 12, false);
	addLuaSprite('button', false);
	setObjectCamera('button', 'other');
end