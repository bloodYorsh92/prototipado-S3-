package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.inputs.XXXKeyboard;
	import XXXNoScope360HeadShot.loader.XXXLoader;
	import XXXNoScope360HeadShot.objects.GameObject;
	
	/**
	 * ...
	 * @author Yorsh
	 */
	public class Hero extends GameObject 
	{
		private var rand:Number;
		private var limitX:Number;
		private var limitY:Number;
			
		public function Hero() 
		{
			velocity = 4;
			rand = Math.random();
			assetClass = XXXLoader.getAsset("hero");
			
			
		}
		override public function init():void 
		{
			limitX = stage.stageWidth - width;
			limitY = stage.stageHeight - height;
			y = Math.random() * limitY;
			x = Math.random() * limitX;
		}
		
			
		override public function update():void 
		{	
			
			if(rand>=0.5){
				x += velocity;
				
			}else 
			{
				x -= velocity;
			}
			
			
			if(x>=limitX){
				x = limitX;
				velocity *= -1;
			}
			if(x<0){
				x = 0;
				velocity *= -1;
			}
			
			
			
			
			/*if(XXXKeyboard.a_down){
				skin.x -=velocity;
			}
			if(XXXKeyboard.d_down){
				skin.x +=velocity;
			}*/
			
		}
		
		
	}

}