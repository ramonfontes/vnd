package
{
	import mx.collections.ArrayCollection;
	import mx.controls.Label;
	
	public class objParameter { 
		public var nid:int;		
		
		public var id:String;
		public var type:String;
	  	public var name:String;
		public var numberofRadios:String;
		public var controllerIPAddress:String;
		public var controllerPort:String;
		public var openflowController:String;
		public var arraySwitch:String;
		public var listenPortSwitch:String;
		public var IPAddress:String;
		public var MacAddress:String;
		public var MaskAddress:String;
		public var openFlowVersion:String;
		public var channel:String;
		public var mode:String;
		public var ssid:String;
		public var linkType:String;
		public var rate:String;
		public var delay:String;
		public var loss:String;
		public var maxQueue:String;
		public var HTB:String;	
		public var switchType:String;
		public var range:String;
		
		public var isRemote:Boolean;
		
		public var option:Array=[];
		public var listIPAddress:Array=[];	
		public var setIPSource:Array = [];	
		public var setIPDestination:Array = [];
		public var setMACSource:Array = [];
		public var setMACDestination:Array = [];
		public var setEnqueue:Array = [];
		public var setStripVlan:Array = [];
		public var setOutput:Array = [];
		public var setVLANPriority:Array = [];
		public var setDestinationPort:Array = [];
		public var setSourcePort:Array = [];
		public var destinationPort:Array = [];
		public var listMacSwitch:Array = [];
		public var sourcePort:Array = [];
		public var setVlanID:Array = [];
		public var setTOS:Array = [];
		public var flowName:Array=[];
		public var slicePort:Array=[];
		public var priority:Array=[];		
		public var macSource:Array=[];
		public var macDestination:Array=[];
		public var MacSwitch:Array=[];
		public var ingressPort:Array=[];
		public var outPort:Array=[];
		public var dstPort:Array=[];
		public var srcPort:Array=[];
		public var ethernetType:Array=[];
		public var vlanID:Array = [];
		public var vlanPriority:Array = [];
		public var ipSource:Array = [];
		public var ipDestination:Array = [];
		public var networkSource:Array = [];
		public var networkDestination:Array = [];
		public var ipProtocol:Array = [];
		public var tcpUdpSourcePort:Array = [];
		public var tcpUdpDestinationPort:Array = [];
		public var notes:Array = [];
		public var TOS:Array = [];
		public var ethType:Array = [];
		public var protocol:Array = [];
		
		//Queue
		public var arrayqueueMaxRate:Array=[];
		public var arrayqueueMinRate:Array=[];
		public var arrayqueueInterface:Array=[];
		public var arrayqueueName:Array=[];
		public var arrayqueueIfaceMinRate:String;
		public var arrayqueueIfaceMaxRate:String;
		
		public var mac_Switch:Array=[];
	
				  	
		public function objParameter()
		{
		}
	}
}