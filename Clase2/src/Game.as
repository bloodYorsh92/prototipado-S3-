package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import XXXNoScope360HeadShot.inputs.XXXKeyboard;
	import XXXNoScope360HeadShot.inputs.XXXMouse;
	
	/**
	 * ...
	 * @author Yorsh
	 */
	public class Game extends Sprite 
	{
		private var hero:Hero;
		private var vilano:Villian;
		private var combo:int;
		
		
		public function Game() 
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			var bg:Sprite = new Sprite();
			bg.graphics.beginFill(0xFFFFFF, 0);
			bg.graphics.drawRect(0, 0, stage.stageWidth, stage.stageHeight);
			bg.graphics.endFill();
			addChild(bg);
			
			
			hero = new Hero();
			addChild(hero);
			hero.y = 150;
			
			
			XXXKeyboard.init(stage);
			XXXMouse.init(stage);
			stage.addEventListener(Event.ENTER_FRAME, onLoop);
			
			
			
			vilano = new Villian();
			addChild(vilano);
			
		}
		
		private function onLoop(e:Event):void 
		{	
			
			if(XXXMouse.clickObj !=null){
				if(XXXMouse.clickObj.parent is Hero){
					combo++;
				}else{
					combo = 0;
				}
			}
			trace(combo);
			XXXMouse.clickObj = null;
			
			
			
			hero.update();
			vilano.update();
		}
		
		
		
	}

}