package action_alert
{
	import mx.controls.Alert;
	
	public class HAlert extends Alert
	{		
		[Embed(source="img/alert_error.png")]
		private static var ErrorIcon:Class;
		
		[Embed(source="img/alert_info.png")]
		private static var InfoIcon:Class;
		
		[Embed(source="img/alert_confirm.png")]
		private static var ConfirmIcon:Class;
		
		[Embed(source="img/success.png")]
		private static var SuccessIcon:Class;
		
		public function HAlert(){
			super();
		}

		public static function informacao(message:String, closehandler:Function=null):void{
			show(message, "Information", Alert.OK, null, closehandler, InfoIcon);
		}
		
		public static function erro(message:String, closehandler:Function=null):void{
			show(message, "Error", Alert.OK, null, closehandler, ErrorIcon);
		}
		
		public static function success(message:String, closehandler:Function=null):void{
			show(message, "Success", Alert.OK, null, closehandler, SuccessIcon);
		}
		
		public static function confirmacao(message:String, closehandler:Function=null):void{
			show(message, "Confirmation", Alert.YES | Alert.NO, null, closehandler, ConfirmIcon);
		}
	}
}
