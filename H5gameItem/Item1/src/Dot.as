package 
{
	import laya.display.Sprite;
	import laya.display.Stage;
	import laya.display.Text;
	import laya.events.Event;
	import laya.utils.Browser;
	import laya.webgl.WebGL;
	public class Dot extends Sprite{
		// public var speed3:Number=3;
		// public var speed4:Number=-3;
		public var speed1:Number=1;//Math.random()*3+2;
		//public var speedy1:Number=Math.random()*3;
		public var speed2:Number=1;//Math.random()*3-2;
		//public var speedy2:Number=(Math.random()-1)*3;
		public function Dot(){
			this.loadImage("../res/dot.png");
			this.graphics.drawCircle(0,0,3,null);
			//this.pos(Math.floor(Math.random()*10+40),Math.floor(Math.random()*10+40));
			this.pos(45,45);
		}
	}

}