
import flash.net.URLRequest;
import flash.net.navigateToURL;

public function videosget():void
{
	var url:String = "http://www.youtube.com/playlist?list=PLccoFREVAt_4nEtrkl59mjjf5ZzRX8DZA";
	var request:URLRequest;
	request = new URLRequest(url);
	try {
		navigateToURL(request, '_blank');
	} catch (e:Error) {
		trace("Error occurred!");
	}
}

public function publications():void
{
	var url:String = "http://www.ramonfontes.com/publications/";
	var request:URLRequest;
	request = new URLRequest(url);
	try {
		navigateToURL(request, '_blank');
	} catch (e:Error) {
		trace("Error occurred!");
	}
}