package  
{
	import org.flixel.*;
		
		
	public class MapPath extends FlxState 
	{
		private var sprite : FlxSprite;
		private var sprite_2 : FlxSprite;
		private var sprite_3 : FlxSprite;
		
		private var pontos : Array;
		private var path : FlxPath;
				
		override public function create():void 
		{
			sprite = new FlxSprite();
			add(sprite);
			
			sprite_2 = new FlxSprite();
			add(sprite_2);
			
			sprite_3 = new FlxSprite();
			add(sprite_3);
			
			pontos = new Array();
			pontos.push( new FlxPoint( 20, 20));
			
			path = new FlxPath(pontos);
			sprite.followPath(path, 100, FlxObject.PATH_BACKWARD, true);
			sprite_2.followPath(path, 85, FlxObject.PATH_BACKWARD, true);
			sprite_3.followPath(path, 92, FlxObject.PATH_BACKWARD, true);
			
		}
		
		override public function update() : void
		{
			super.update();
			
			var x : int;
			var y : int;
			
			if (FlxG.mouse.justPressed()) {
				
				x = FlxG.mouse.x;
				y = FlxG.mouse.y;
				path.add(x, y);
				sprite.followPath(path, 125, FlxObject.PATH_BACKWARD, true );
				sprite_2.followPath(path , 95, FlxObject.PATH_BACKWARD, true);
				sprite_3.followPath(path, 85, FlxObject.PATH_BACKWARD, true);
				
			}
			
			
			
			
		}
		
	}

}