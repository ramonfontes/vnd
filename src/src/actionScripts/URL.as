
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

public function code():void
{
	var url:String = "https://github.com/ramonfontes/vnd-sdn-version";
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

public function docker():void
{
	var url:String = "https://registry.hub.docker.com/u/ramonfontes/vnd/";
	var request:URLRequest;
	request = new URLRequest(url);
	try {
		navigateToURL(request, '_blank');
	} catch (e:Error) {
		trace("Error occurred!");
	}
}


public function opennew():void
{
	var url:String = "https://github.com/intrig-unicamp/mininet-wifi";
	var request:URLRequest;
	request = new URLRequest(url);
	try {
		navigateToURL(request, '_blank');
	} catch (e:Error) {
		trace("Error occurred!");
	}
}