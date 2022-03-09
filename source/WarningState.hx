package;
import flixel.FlxSprite;
import flixel.system.FlxSound;
import flixel.util.FlxTimer;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;


class WarningState extends MusicBeatState
{
	var music:FlxSound;
	var wentout:Bool = false;
	override function create()
	{
		super.create();
		var thx:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('credit', 'preload'));
		add(thx);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT && !wentout)
		{
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
	
}