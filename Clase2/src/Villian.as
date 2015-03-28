package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.loader.XXXLoader;
	import XXXNoScope360HeadShot.objects.GameObject;
	
	/**
	 * ...
	 * @author yorsh
	 */
	public class Villian extends GameObject 
	{
		private var rand:Number;
		private var limitX:Number;
		private var limitY:Number;
		
		
		public function Villian() 
		{
			assetClass= XXXLoader.getAsset("villian");
		}
		
		override public function init():void 
		{
			limitX = stage.stageWidth - width;
			limitY = stage.stageHeight - height;
			y = Math.random() * limitY;
			x = Math.random() * limitX;
			super.init();
		}
		
		override public function update():void 
		{
			if(rand>0.5){
				x -= velocity;
				y += velocity;
			}else 
			{
				
				x += velocity;
				y -= velocity;
			}
			
			if(x>=limitX){
				x = limitX;
				velocity *= -1;
			}
			if(x<0){
				x = 0;
				velocity *= -1;
			}
			
			if(y>=limitY){
				y = limitY;
				velocity *= -1;
			}
			if(y<0){
				y = 0;
				velocity *= -1;
			}
			
			
		}
		

		
	}

}