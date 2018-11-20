/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 

	public class beeEnterViewUI extends View {
		public var scole:Label;

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":520,"height":450},"child":[{"type":"Label","props":{"y":88,"x":137,"width":93,"text":"beeRole1","height":22,"fontSize":20,"color":"#f11348","bold":true}},{"type":"Label","props":{"y":88,"x":258,"width":63,"text":"Scole:","height":22,"fontSize":20,"color":"#f11348","bold":true}},{"type":"Label","props":{"y":88,"x":325,"width":80,"var":"scole","text":"0","height":22,"fontSize":20,"color":"#f11348","bold":true}},{"type":"Image","props":{"y":133,"x":119,"skin":"comp/BeeLogo.png"}},{"type":"Label","props":{"y":242,"x":213,"width":93,"text":"ENTER键","name":"item0","height":25,"fontSize":20,"color":"#f11348","bold":true}},{"type":"Label","props":{"y":275,"x":213,"width":93,"text":"开始游戏","name":"item1","height":25,"fontSize":20,"color":"#f11348","bold":true}},{"type":"Label","props":{"y":308,"x":199,"width":122,"text":"NAMCOT","height":31,"fontSize":25,"font":"Microsoft YaHei","color":"#f11348","bold":true}},{"type":"TextArea","props":{"y":357,"x":124,"width":271,"text":"@1979  1984  MAMCO  LTD.  ","height":25,"fontSize":20,"color":"#FFFFFF","bold":true}},{"type":"TextArea","props":{"y":388,"x":138,"width":244,"text":"ALL RIGHTS RESERVED","height":25,"fontSize":20,"color":"#FFFFFF","bold":true}}]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}