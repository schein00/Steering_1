package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Jeferson Schein
	 */
	public class LeaderFollowing extends FlxState
	{
		
		private var Leader : FlxSprite;
		
		private var Point : FlxPath;
		
		
		override public function create () : void
		{
			
			Leader = new FlxSprite();
			add(Leader);
			
			//Point = new Array();
			
		}
		
		
		override public function update() : void
		{
			
			var x : int;
			var y : int;
			
			x = FlxG.mouse.getScreenPosition().x;
			y = FlxG.mouse.getScreenPosition().y;
			
			Point.add(x , y);
			Leader.followPath(Point, 45 );
			
			
		}
		
		
	}

}