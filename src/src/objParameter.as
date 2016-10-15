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
			
	
		//Queue
		public var arrayqueueMaxRate:Array=[];
		public var arrayqueueMinRate:Array=[];
		public var arrayqueueInterface:Array=[];
		public var arrayqueueName:Array=[];
		public var arrayqueueIfaceMinRate:String;
		public var arrayqueueIfaceMaxRate:String;
		
		//Switch Openflow
		public var arrayMac_Switch:Array=[];
		
		
		//Controller
		public var arrayFlowName:Array=[];
		public var arraySlicePort:Array=[];
		public var arrayPriority:Array=[];
		
		public var arrayMacSource:Array=[];
		public var arrayMacDestination:Array=[];
		public var arrayMacSwitch:Array=[];
		public var arrayIngressPort:Array=[];
		public var arrayOutPort:Array=[];
		public var arrayDstPort:Array=[];
		public var arraySrcPort:Array=[];
		public var arrayEthernetType:Array=[];
		public var arrayVlanID:Array = [];
		public var arrayVlanPriority:Array = [];
		public var arrayIpSource:Array = [];
		public var arrayIpDestination:Array = [];
		public var arrayIpSource1:Array = [];
		public var arrayIpDestination1:Array = [];
		public var arrayNetworkSource:Array = [];
		public var arrayNetworkDestination:Array = [];
		public var arrayIpProtocol:Array = [];
		public var arrayTcpUdpSourcePort:Array = [];
		public var arrayTcpUdpDestinationPort:Array = [];
		public var arrayNotes:Array = [];
		public var arrayTos:Array = [];
		public var arrayEthType:Array = [];
		public var arrayProtocol:Array = [];
		//Actions
		public var arraySetEnqueue:Array = [];
		public var arraySetStripVlan:Array = [];
		public var arraySetIPSource:Array = [];
		public var arraySetIPDestination:Array = [];
		public var arraySetMACSource:Array = [];
		public var arraySetMACDestination:Array = [];
		public var arraySetOutput:Array = [];
		public var arraySetVLANPriority:Array = [];
		public var arraySetDestinationPort:Array = [];
		public var arraySetSourcePort:Array = [];
		public var arraySetVlanID:Array = [];
		public var arraySetTOS:Array = [];
				  	
		public function objParameter()
		{
		}
	}
}