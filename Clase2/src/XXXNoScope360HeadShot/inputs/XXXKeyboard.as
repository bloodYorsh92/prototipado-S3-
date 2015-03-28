package XXXNoScope360HeadShot.inputs 
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Yorsh
	 */
	public class XXXKeyboard 
	{	
		static public var a_down:Boolean;
		static public var d_down:Boolean;
		static public var s_down:Boolean;
		static public var w_down:Boolean;
		
		static private var stage:Stage;
		static public function init(_stage:Stage ):void 
		{
			stage = _stage;
			stage.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP,onKeyUp);
		}
		
		static private function onKeyUp(e:KeyboardEvent):void 
		{
			switch (e.keyCode) 
			{
				case Keyboard.A:a_down = false;
					
				break;
				
				case Keyboard.D:d_down = false;
					
				break;
				
				case Keyboard.S:s_down = false;
					
				break;
				
				case Keyboard.W:w_down = false;
					
				break;
				
				
			}
			trace(e.keyCode);
		}
		
		static private function onKeyDown(e:KeyboardEvent):void 
		{
			switch (e.keyCode) 
			{
				case Keyboard.A:a_down = true;
					
				break;
				
				case Keyboard.D:d_down = true;
					
				break;
				
				case Keyboard.S:s_down = true;
					
				break;
				
				case Keyboard.W:w_down = true;
					
				break;
				
				
			}
		}
		
		static public function destroy():void 
		{
			stage.removeEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);
			stage.removeEventListener(KeyboardEvent.KEY_UP,onKeyUp);
		}
		
		
	}

}