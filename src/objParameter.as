package
{
	import mx.collections.ArrayCollection;
	import mx.controls.Label;
	
	public class objParameter { 
		public var option:Array=[];
	  	public var id:String;
	  	public var name:String;
		public var qosname:Array=[];		
		//public var getValueMacAddress:String;
		
		//Link
		public var arrayType:Array=[];
		public var arrayBD:Array=[];
		public var arrayDelay:Array=[];
		public var arrayLoss:Array=[];
		public var arrayMaxQueue:Array=[];
		public var arrayHTB:Array=[];		
		
		
		//Queue
		public var arrayqueueMaxRate:Array=[];
		public var arrayqueueMinRate:Array=[];
		public var arrayqueueInterface:Array=[];
		public var arrayqueueName:Array=[];
		public var arrayqueueIfaceMinRate:String;
		public var arrayqueueIfaceMaxRate:String;
		
		//QoS		
		public var arrayQueue:Array=[];
		public var arrayqosName:Array=[];
		public var arrayqosSwitch:Array=[];
		public var arrayqosService:Array=[];
		public var arrayqosQueue:Array=[];
		public var arrayqosEnqueuePort:Array=[];
		public var arrayqosPriority:Array=[];
		public var arrayqosProtocol:Array=[];
		public var arrayqosEthType:Array=[];
		public var arrayqosIngressPort:Array=[];
		public var arrayqosTos:Array=[];
		public var arrayqosVlanID:Array=[];
		public var arrayqosSourceIP:Array=[];
		public var arrayqosDestinationIP:Array=[];
		public var arrayqosSourceEth:Array=[];
		public var arrayqosDestinationEth:Array=[];
		public var arrayqosSourcePort:Array=[];
		public var arrayqosDestinationPort:Array=[];
		
		//Switch Openflow
		public var arrayNumberOfInterfaces:Array=[];
		public var arrayVlanID_Switch:Array=[];
		public var arrayMac_Switch:Array=[];
		public var arrayGetSwitch:Array=[];
		public var arrayGetOpenFlowVersion:Array=[];
		
		public var arrayGetMode:Array=[];
		public var arrayGetChannel:Array=[];
		
		//Computer
		public var arrayComputerIPAddress:Array=[];
		public var arrayComputerIPAddress1:Array=[];
		public var arrayComputerMask:Array=[];
		public var arrayComputerMacAddress:Array=[];
		public var arrayComputerMacAddress1:Array=[];
		
		//Station
		public var arrayStationIPAddress:Array=[];
		public var arrayStationIPAddress1:Array=[];
		public var arrayStationMask:Array=[];
		public var arrayStationMacAddress:Array=[];
		public var arrayStationMacAddress1:Array=[];
		public var arrayStationPassword:Array=[];
		public var arrayStationPassword1:Array=[];
		
		//SWitch
		public var arraySwitch:String;
		public var arrayListenPortSwitch:Array=[];
		public var arrayListenPortSwitch1:Array=[];
		public var arrayOpenFlowVersion:Array=[];
		public var arrayChannel:Array=[];
		public var arrayMode:Array=[];
		public var arrayRouterSSID:Array=[];
		public var arrayRouterSSID1:Array=[];
		public var arrayStationSSID:Array=[];
		public var arrayStationSSID1:Array=[];
		
		//Controller
		public var arrayGetisRemote:Array=[];
		public var arrayOpenflowController:Array=[];
		public var arrayFlowName:Array=[];
		public var arraySlicePort:Array=[];
		public var arrayPriority:Array=[];
		public var arrayControllerIPAddress:Array=[];
		public var arrayControllerPort:Array=[];
		public var arrayMacSource:Array=[];
		public var arrayMacDestination:Array=[];
		public var arrayMacSwitch:Array=[];
		public var arrayMacSwitchh:Array=[];
		public var arrayMacSwitch1:Array=[];
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