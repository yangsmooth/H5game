package {
	import laya.net.Loader;
	import laya.utils.Handler;
	import laya.display.Sprite;
	import laya.display.Stage;
	import laya.display.Text;
	import laya.events.Event;
	import laya.utils.Browser;
	import laya.utils.Timer;
	import laya.webgl.WebGL;
	import ui.beeEnterViewUI;
	public class LayaSample {
		private var EnterView:beeEnterViewUI;
		private var aircraft:Aircraft;
		public function LayaSample() {
			//初始化引擎
			Laya.init(520, 450,WebGL);
			Laya.stage.bgColor = "#232628";

			var resArray:Array=[{url:"res/atlas/comp.atlas",type:Loader.ATLAS}];
			Laya.loader.load(resArray,Handler.create(this,onloaded));

			Laya.stage.once(Event.KEY_DOWN,this,keyDown);
		}
		private function onloaded():void{
			var EnterView:beeEnterViewUI=new beeEnterViewUI();
			Laya.stage.addChild(EnterView);
		}
		private function keyDown(e:Event):void{
			           switch(e.keyCode){
						   case 13:
						 EnterView.removeSelf();
						   CreateAircraft();
						   //Count();  
						//    airplane.visible=true;
						//    txt1.visible = false;
						//    Laya.timer.loop(1000,this,timeCount);
						//    Laya.timer.loop(3000,this,Count);
						//    Laya.timer.frameLoop(1,this,doShow); 
					   }
			} 	
		private function CreateAircraft():void{
			var aircraft:Aircraft=new Aircraft();
			Laya.stage.addChild(aircraft);
		}	
	}
}