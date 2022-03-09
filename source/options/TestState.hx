package options;

import flixel.util.FlxColor;
import flixel.util.FlxSave;
import flixel.math.FlxPoint;
import flixel.ui.FlxButton;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.FlxSprite;
import haxe.Json;

using StringTools;

class TestState extends MusicBeatState
{

	var upPozition:FlxText;
	var downPozition:FlxText;
	var leftPozition:FlxText;
	var rightPozition:FlxText;

	var inputvari:Alphabet;

	var leftArrow:FlxSprite;
	var rightArrow:FlxSprite;

	var controlitems:Array<String> = ['this is a useless state'];

	var curSelected:Int = 0;

	var buttonistouched:Bool = false;

	var bindbutton:FlxButton;


	public static var menuBG:FlxSprite;

	override public function create():Void
	{
		super.create();
		

		menuBG = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
		menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
                menuBG.color = 0xFFea71fd;
		menuBG.updateHitbox();
		menuBG.screenCenter();
		add(menuBG);

		var titleText:Alphabet = new Alphabet(0, 0, "Test State", true, false, 0, 0.6);
		titleText.x += 60;
		titleText.y += 40;
		titleText.alpha = 0.4;
		add(titleText);


		var exitbutton = new FlxButton(FlxG.width - 200, 50, "Exit", function()
			{
		MusicBeatState.switchState(new options.OptionsState());
	});
	exitbutton.setGraphicSize(Std.int(exitbutton.width) * 3);
			exitbutton.label.setFormat(null, 16, 0x333333, "center");
	exitbutton.color = FlxColor.fromRGB(255,0,0);
	add(exitbutton);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}
	
	override function destroy()
	{
		super.destroy();
	}
}