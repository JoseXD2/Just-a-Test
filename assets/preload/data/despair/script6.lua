
state = true;
shouldAdd = true;

function onUpdate(elapsed)
	if (getMouseX('camHUD') > 990 and getMouseX('camHUD') < 1090) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mouseClicked('left')) or keyJustPressed('w') then
		objectPlayAnimation('a2', 'Attack 2', false); --when the a2 is Attack 2 
	else
		objectPlayAnimation('a2', 'Attack 1', false); --do not do anything
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('a2', 'Buttons_IC/ca', 990, 582.5);
	addAnimationByPrefix('a2', 'Attack 1', 'Attack 1', 24, false);
	addAnimationByPrefix('a2', 'Attack 2', 'Attack 2', 12, false);
	addLuaSprite('a2', false);
	setObjectCamera('a2', 'other');
end