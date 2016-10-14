package drawCircle
{
	class MyCircle extends UIComponent
	{
		public var x:int;
		public var y:int;
		public var radius:int;
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			graphics.drawCircle(x, y, radius);
		}
	}
}