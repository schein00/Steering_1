package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Jeferson Schein 
	 * 
	 * 
	 * 
	 * 
	 */
	public class Main extends FlxGame 
	{
		
		public function Main() : void
		{
			super(400, 300, MapPath, 2);
			forceDebugger = true;
			FlxG.mouse.show();
		}
		

		
	}
	
}