package com.saumya.controller
{
	import flash.events.TouchEvent;
	
	import openplug.elips.controls.Button;
	import openplug.elips.controls.Image;

	public class ApplicationController
	{
		private var view:Attt;
		private var gap:int=5;
		
		public function ApplicationController(viewRef:Attt)
		{
			this.view=viewRef;
			this.init();
		}
		
		private function init():void
		{
			this.view.btn_11.x=0+this.gap*0;
			this.view.btn_12.x=100+this.gap*1;
			this.view.btn_13.x=200+this.gap*2;
			this.view.btn_11.y=this.view.btn_12.y=this.view.btn_13.y=0+this.gap*0;
			
			this.view.btn_21.x=0+this.gap*0;
			this.view.btn_22.x=100+this.gap*1;
			this.view.btn_23.x=200+this.gap*2;
			this.view.btn_21.y=this.view.btn_22.y=this.view.btn_23.y=100+this.gap*1;
			
			this.view.btn_31.x=0+this.gap*0;
			this.view.btn_32.x=100+this.gap*1;
			this.view.btn_33.x=200+this.gap*2;
			this.view.btn_31.y=this.view.btn_32.y=this.view.btn_33.y=200+this.gap*2;
			
			this.view.addEventListener(TouchEvent.TOUCH_TAP,onTouchTap);
		}
		
		private function onTouchTap(e:TouchEvent):void
		{
			if(e.target is Image)
			{
				var btn:Image=Image(e.target);
				//btn.alpha=0.5;
				btn.source=this.view.ImgCross;
			}
			
		}
		
	}
}