import action_alert.HAlert;
import action_alert.HMensagens;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.net.FileReference;
import flash.net.URLRequest;

import mx.collections.ArrayCollection;
import mx.events.Request;

public var fileRefScript_NS3:FileReference;

public function exportNS3File():void {
	var objSend:Object = new Object;
	var temp_mininet:ArrayCollection=new ArrayCollection();
	var objeto_mininet:Object=new Object();
	var cont_mininet:int=0;
	var expo:Boolean=true;	
	var computerMask:String;	
	var computerIPAddress:String;
	var computerMacAddress:String;
	var controllerPort:String;
	var controllerIPAddress:String;
	var urlRequest:URLRequest;
	var ab:int;
	var p:int;
	var i:int;
	var ir:int;
	var address_check:Boolean=true;
	var contlink:int=0;
	var srcl:String;
	var dstl:String;

	cont_mininet++;
	sh = "//UNDER DEVELOPMENT@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "//##########################################@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "//Script created by VND - Visual Network Description (SDN version)@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "//##########################################@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/applications-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/config-store-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/core-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/csma-channel.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/csma-helper.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/csma-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/csma-net-device.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/internet-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/internet-stack-helper.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/ipv4-address.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/mobility-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/network-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "#include \"ns3/point-to-point-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/wifi-module.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include \"ns3/log.h\"@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include <iostream>@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include <fstream>@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include <vector>@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#include <string>@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "using namespace ns3;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "NS_LOG_COMPONENT_DEFINE (\"FirstScriptExample\");@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "bool verbose = false;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "bool use_drop = false;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "ns3::Time timeout = ns3::Seconds (0);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "bool SetVerbose (std::string value){@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "verbose = true;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "return true;}@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "bool SetDrop (std::string value){@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "use_drop = true;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "return true;}@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "bool SetTimeout (std::string value){@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "try {@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "timeout = ns3::Seconds (atof (value.c_str ()));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "return true;}@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "catch (...) { return false; }@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "return false;}@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "int main (int argc, char *argv[]){@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "Time::SetResolution (Time::NS);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "#ifdef NS3_OPENFLOW@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  CommandLine cmd;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.AddValue (\"v\", \"Verbose (turns on logging).\", MakeCallback (&SetVerbose));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.AddValue (\"verbose\", \"Verbose (turns on logging).\", MakeCallback (&SetVerbose));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.AddValue (\"d\", \"Use Drop Controller (Learning if not specified).\", MakeCallback (&SetDrop));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.AddValue (\"drop\", \"Use Drop Controller (Learning if not specified).\", MakeCallback (&SetDrop));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.AddValue (\"t\", \"Learning Controller Timeout (has no effect if drop controller is specified).\", MakeCallback ( &SetTimeout));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.AddValue (\"timeout\", \"Learning Controller Timeout (has no effect if drop controller is specified).\", MakeCallback ( &SetTimeout));@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  cmd.Parse (argc, argv);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  if (verbose){@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  LogComponentEnable (\"OpenFlowCsmaSwitchExample\", LOG_LEVEL_INFO);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  LogComponentEnable (\"OpenFlowInterface\", LOG_LEVEL_INFO);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  LogComponentEnable (\"OpenFlowSwitchNetDevice\", LOG_LEVEL_INFO);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  LogComponentEnable (\"UdpEchoClientApplication\", LOG_LEVEL_INFO);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  LogComponentEnable (\"UdpEchoServerApplication\", LOG_LEVEL_INFO);}@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					var obj:objParameter=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}	
					
				}
				cont_mininet++;
				sh = "  Ptr<Node> "+ob.name.slice(0,11)+" = CreateObject<Node> ();@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  Ptr<Node> "+ob.name.slice(0,17)+" = CreateObject<Node> ();@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
		} 
	}
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(p==0){
			cont_mininet++;
			sh = "@@";
			objeto_mininet=sh;
			temp_mininet.addItem(objeto_mininet);
			cont_mininet++;
			sh = "  NodeContainer c = NodeContainer (";			
		}
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}	
					
				}
				sh = sh+" "+ob.name.slice(0,11)+",";
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				sh = sh+" "+ob.name.slice(0,17)+",";
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
				
			}
		}
	}
	sh=sh.substring(0, sh.length-1);
	sh = sh+" );@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  NS_LOG_INFO (\"Install the IP stack.\");@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  InternetStackHelper internetStackH;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  internetStackH.Install (c);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}	
					else if(obj.name=="mask"){												
						computerMask = obj.arrayComputerMask[ye];
					}									
				}
				cont_mininet++;
				sh = "  Ptr<CsmaNetDevice> Device"+ob.name.slice(0,11)+" = CreateObject<CsmaNetDevice> ();@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  Device"+ob.name.slice(0,11)+"->SetAddress (Mac48Address::Allocate ());@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  "+ob.name.slice(0,11)+"->AddDevice (Device"+ob.name.slice(0,11)+");@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);	
				cont_mininet++;
				sh = "  Ptr<Ipv4> ipv4"+ob.name.slice(0,11)+" = "+ob.name.slice(0,11)+"->GetObject<Ipv4> ();@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  int32_t ifIndex"+ob.name.slice(0,11)+" = ipv4"+ob.name.slice(0,11)+"->AddInterface (Device"+ob.name.slice(0,11)+");@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  Ipv4InterfaceAddress ifInAddr"+ob.name+" = Ipv4InterfaceAddress (Ipv4Address (\""+computerIPAddress+"\"), Ipv4Mask (\""+computerMask+"\"));@@";
				//sh = "  address.SetBase (\""+computerIPAddress+"\", \""+computerMask+"\");@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  ipv4"+ob.name.slice(0,11)+"->AddAddress (ifIndex"+ob.name.slice(0,11)+", ifInAddr"+ob.name+");@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  ipv4"+ob.name.slice(0,11)+"->SetMetric (ifIndex"+ob.name.slice(0,11)+", 1);@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  ipv4"+ob.name.slice(0,11)+"->SetUp (ifIndex"+ob.name.slice(0,11)+");@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  Ptr<CsmaNetDevice> Device"+ob.name.slice(0,17)+" = CreateObject<CsmaNetDevice> ();@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  Device"+ob.name.slice(0,17)+"->SetAddress (Mac48Address::Allocate ());@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "  "+ob.name.slice(0,17)+"->AddDevice (Device"+ob.name.slice(0,17)+");@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
				cont_mininet++;
				sh = "@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
		} 
	}
	
	for(var j:int=0;j<dropCanvas.numChildren;j++){	
		if(j==0){
			cont_mininet++;
			sh = "@@";
			objeto_mininet=sh;
			temp_mininet.addItem(objeto_mininet);
			cont_mininet++;
			sh = "  NS_LOG_INFO (\"Building links.\");@@";
			objeto_mininet=sh;
			temp_mininet.addItem(objeto_mininet);
		}
		UIob = dropCanvas.getChildAt(j);
		if(UIob.className=='Link'){			
			var obLink:Link=UIob as Link;
			if(obLink.can.lineName!="wireless"){				
				if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")&&(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					if(obLink.can.bw!=null&&obLink.can.bw!="default"||(obLink.can.delay!=""&&obLink.can.delay!=null)){
						cont_mininet++;
						sh = "  CsmaHelper csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(15,17)+";@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						if(obLink.can.bw!=null&&obLink.can.bw!="default"){
							cont_mininet++;
							sh = "  csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(15,17)+".SetChannelAttribute (\"DataRate\", StringValue (\""+obLink.can.bw+"\"));@@";
							objeto_mininet=sh;
							temp_mininet.addItem(objeto_mininet);
						}
						if(obLink.can.delay!=""&&obLink.can.delay!=null){
							cont_mininet++;
							sh = "  csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(15,17)+".SetChannelAttribute (\"Delay\", StringValue (\""+obLink.can.delay+"\"));@@";
							objeto_mininet=sh;
							temp_mininet.addItem(objeto_mininet);
						}
					}
				}
				else if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")||(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					if(obLink.can.source.name.slice(0,8)=="Computer"){
						if(obLink.can.bw!=null&&obLink.can.bw!="default"||(obLink.can.delay!=""&&obLink.can.delay!=null)){
							cont_mininet++;
							sh = "  CsmaHelper csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(15,17)+";@@";
							objeto_mininet=sh;
							temp_mininet.addItem(objeto_mininet);
							if(obLink.can.bw!=null&&obLink.can.bw!="default"){
								cont_mininet++;
								sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(15,17)+".SetChannelAttribute (\"DataRate\", StringValue (\""+obLink.can.bw+"\"));@@";
								objeto_mininet=sh;
								temp_mininet.addItem(objeto_mininet);
							}
							if(obLink.can.delay!=""&&obLink.can.delay!=null){
								cont_mininet++;
								sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(15,17)+".SetChannelAttribute (\"Delay\", StringValue (\""+obLink.can.delay+"\"));@@";
								objeto_mininet=sh;
								temp_mininet.addItem(objeto_mininet);
							}
						}
					}
					else if (obLink.can.destination.name.slice(0,8)=="Computer"){
						if(obLink.can.bw!=null&&obLink.can.bw!="default"||(obLink.can.delay!=""&&obLink.can.delay!=null)){
							cont_mininet++;
							sh = "  CsmaHelper csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(9,11)+";@@";
							objeto_mininet=sh;
							temp_mininet.addItem(objeto_mininet);
							if(obLink.can.bw!=null&&obLink.can.bw!="default"){
								cont_mininet++;
								sh = "  csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(9,11)+".SetChannelAttribute (\"DataRate\", StringValue (\""+obLink.can.bw+"\"));@@";
								objeto_mininet=sh;
								temp_mininet.addItem(objeto_mininet);
							}
							if(obLink.can.delay!=""&&obLink.can.delay!=null){
								cont_mininet++;
								sh = "  csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(9,11)+".SetChannelAttribute (\"Delay\", StringValue (\""+obLink.can.delay+"\"));@@";
								objeto_mininet=sh;
								temp_mininet.addItem(objeto_mininet);
							}
						}
					}
				}	
				else if((obLink.can.source.name.slice(0,8)=="Computer"&&(obLink.can.destination.name.slice(0,8)=="Computer"))){
					if(obLink.can.bw!=null&&obLink.can.bw!="default"||(obLink.can.delay!=""&&obLink.can.delay!=null)){
						cont_mininet++;
						sh = "  CsmaHelper csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+";@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						if(obLink.can.bw!=null&&obLink.can.bw!="default"){
							cont_mininet++;
							sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+".SetChannelAttribute (\"DataRate\", StringValue (\""+obLink.can.bw+"\"));@@";
							objeto_mininet=sh;
							temp_mininet.addItem(objeto_mininet);
						}
						if(obLink.can.delay!=""&&obLink.can.delay!=null){
							cont_mininet++;
							sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+".SetChannelAttribute (\"Delay\", StringValue (\""+obLink.can.delay+"\"));@@";
							objeto_mininet=sh;
							temp_mininet.addItem(objeto_mininet);
						}
					}		
				}
			}
		}
	}
	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	//----------------------------------------------------------------------
	//----------------------------------------------------------------------
	for(j=0;j<dropCanvas.numChildren;j++){			
		UIob = dropCanvas.getChildAt(j);
		if(UIob.className=='Link'){
			contlink++;
			obLink=UIob as Link;
			if(obLink.can.lineName!="wireless"){	
				if(j==0){
					cont_mininet++;
					sh = "@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  NS_LOG_INFO (\"Building link net device container.\");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
				}
				if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")&&(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					cont_mininet++;
					sh = "  NodeContainer all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+";@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+".Add ("+obLink.can.source.name.slice(0,17)+");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+".Add ("+obLink.can.destination.name.slice(0,17)+");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  NetDeviceContainer ndc_p"+obLink.can.source.name.slice(15,17)+"p"+obLink.can.destination.name.slice(15,17)+" = csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+".Install (all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);	
				}
				else if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")||(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					if(obLink.can.source.name.slice(0,8)=="Computer"){
						cont_mininet++;
						sh = "  NodeContainer all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+";@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+".Add ("+obLink.can.source.name.slice(0,11)+");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+".Add ("+obLink.can.destination.name.slice(0,17)+");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);		
						cont_mininet++;
						sh = "  NetDeviceContainer ndc_p"+obLink.can.source.name.slice(9,11)+"p"+obLink.can.destination.name.slice(15,17)+" = csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(15,17)+".Install (all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
					}
					else if (obLink.can.destination.name.slice(0,8)=="Computer"){
						cont_mininet++;
						sh = "  NodeContainer all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+";@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+".Add ("+obLink.can.source.name.slice(0,17)+");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+".Add ("+obLink.can.destination.name.slice(0,11)+");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);	
						cont_mininet++;
						sh = "  NetDeviceContainer ndc_p"+obLink.can.source.name.slice(15,17)+"p"+obLink.can.destination.name.slice(9,11)+" = csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(9,11)+".Install (all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
					}
				}	
				else if((obLink.can.source.name.slice(0,8)=="Computer"&&(obLink.can.destination.name.slice(0,8)=="Computer"))){
					cont_mininet++;
					sh = "  NodeContainer all_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+";@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,11)+".Add ("+obLink.can.source.name.slice(0,11)+");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,11)+".Add ("+obLink.can.destination.name.slice(0,11)+");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);	
					cont_mininet++;
					sh = "  NetDeviceContainer ndc_p"+obLink.can.source.name.slice(9,11)+"p"+obLink.can.destination.name.slice(9,11)+" = csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+".Install (all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,11)+");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					
				}
			}
		}
	}
	
	
	for(j=0;j<dropCanvas.numChildren;j++){			
		UIob = dropCanvas.getChildAt(j);
		if(UIob.className=='Link'){
			obLink=UIob as Link;
			if(obLink.can.lineName!="wireless"){	
				if(j==0){
					cont_mininet++;
					sh = "@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  NS_LOG_INFO (\"PCAP CONFIGURATION.\");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
				}
				if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")&&(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					cont_mininet++;
					sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+".EnablePcapAll(\"all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+"\");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);	
				}
				else if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")||(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					if(obLink.can.source.name.slice(0,8)=="Computer"){
						cont_mininet++;
						sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(15,17)+".EnablePcapAll(\"all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+"\");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
					}
					else if (obLink.can.destination.name.slice(0,8)=="Computer"){
						cont_mininet++;
						sh = "  csma_bridge_"+obLink.can.source.name.slice(15,17)+"_"+obLink.can.destination.name.slice(9,11)+".EnablePcapAll(\"all_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+"\");@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
					}
				}	
				else if((obLink.can.source.name.slice(0,8)=="Computer"&&(obLink.can.destination.name.slice(0,8)=="Computer"))){
					cont_mininet++;
					sh = "  csma_bridge_"+obLink.can.source.name.slice(9,11)+"_"+obLink.can.destination.name.slice(9,11)+".EnablePcapAll(\"all_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,11)+"\");@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);					
				}
			}
		}
	}
	
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		var UIob:Object = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			var ob:objects=UIob as objects;		
			var obb:Object=ob;
			//for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
			//obj=obb.objparaArrayCol[ir] as objParameter;	
			/*if(ob.id=="Computer"){
			ab = int(ob.name.slice(9,11));
			ye=ab;
			}
			else if(ob.id=="switchOpenflow"){
			ab = int(ob.name.slice(15,17));
			ye=ab;
			}
			else if(ob.id=="wirelessRouter"){
			ab = int(ob.name.slice(15,17));
			ye=ab;
			}
			else if(ob.id=="Controller"){
			ab = int(ob.name.slice(19,21));
			ye=ab;
			}*/
			
			
			//}		
		}
	}
	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  //Addressing...@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  Ipv4AddressHelper address;@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	var obc:int=0;
	var linkc:int=0;
	for(var u:int=0;u<dropCanvas.numChildren;u++){	
		for(p=u;p<dropCanvas.numChildren;p++){	
			UIob = dropCanvas.getChildAt(p);	
			if(UIob.className=='Link'){
				obLink=UIob as Link;
				if(obLink.can.lineName!="wireless"&&p>=linkc){		
					if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")&&(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
						cont_mininet++;
						sh1 = "  Ipv4InterfaceContainer iface_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+" = address.Assign (ndc_p"+obLink.can.source.name.slice(15,17)+"p"+obLink.can.destination.name.slice(15,17)+");@@";
						srcl=obLink.can.source.name;//.slice(15,17);
						dstl=obLink.can.destination.name;//.slice(15,17);
					}
					else if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")||(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
						if(obLink.can.source.name.slice(0,8)=="Computer"){
							cont_mininet++;
							sh1 = "  Ipv4InterfaceContainer iface_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+" = address.Assign (ndc_p"+obLink.can.source.name.slice(9,11)+"p"+obLink.can.destination.name.slice(15,17)+");@@";
							srcl=obLink.can.source.name;//.slice(9,11);
							dstl=obLink.can.destination.name;//.slice(15,17);
						}
						else if (obLink.can.destination.name.slice(0,8)=="Computer"){
							cont_mininet++;
							sh1 = "  Ipv4InterfaceContainer iface_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+" = address.Assign (ndc_p"+obLink.can.source.name.slice(15,17)+"p"+obLink.can.destination.name.slice(9,11)+");@@";
							srcl=obLink.can.source.name;//.slice(15,17);
							dstl=obLink.can.destination.name;//.slice(9,11);
						}				
					}	
					else if((obLink.can.source.name.slice(0,8)=="Computer"&&(obLink.can.destination.name.slice(0,8)=="Computer"))){
						cont_mininet++;
						sh1 = "  Ipv4InterfaceContainer iface_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,11)+" = address.Assign (ndc_p"+obLink.can.source.name.slice(9,11)+"p"+obLink.can.destination.name.slice(9,11)+");@@";
						srcl=obLink.can.source.name;//.slice(9,11);
						dstl=obLink.can.destination.name;//.slice(9,11);
					}
					linkc=p;
					break;
				}
				else{
					srcl="";
					dstl="";
				}
			}
		}
	}
	//----------------------------------------------------------------------
	//----------------------------------------------------------------------	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  UdpEchoServerHelper echoServer0 (9);@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
		
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}	
					
				}
				cont_mininet++;
				sh = "  ApplicationContainer serverApps"+p+" = echoServer0.Install ("+ob.name.slice(0,11)+".Get (0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				ab = int(ob.name.slice(15,17));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  ApplicationContainer serverApps"+p+" = echoServer0.Install ("+ob.name.slice(0,17)+".Get (0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
		} 
	}
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}							
				}
				cont_mininet++;
				sh = "  serverApps"+p+".Start (Seconds (1.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Acccess Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  serverApps"+p+".Start (Seconds (1.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
		} 
	}
	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}	
				}
				cont_mininet++;
				sh = "  serverApps"+p+".Stop (Seconds (10.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  serverApps"+p+".Stop (Seconds (10.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
			
		} 
	}
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);	
		if(UIob.className=='Link'){
			obLink=UIob as Link;
			if(obLink.can.lineName!="wireless"){		
				if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")&&(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					cont_mininet++;
					sh = "  UdpEchoClientHelper echoClient"+p+" (iface_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,17)+".GetAddress (1), 9);@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet)
					cont_mininet++;
					sh = "  echoClient"+p+".SetAttribute (\"MaxPackets\", UintegerValue (1));@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  echoClient"+p+".SetAttribute (\"Interval\", TimeValue (Seconds (1.0)));@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  echoClient"+p+".SetAttribute (\"PacketSize\", UintegerValue (1024));@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
				}
				else if((obLink.can.source.name.slice(0,6)=="Switch"||obLink.can.source.name.slice(0,12)=="Access Point")||(obLink.can.destination.name.slice(0,6)=="Switch"||obLink.can.destination.name.slice(0,12)=="Access Point")){
					if(obLink.can.source.name.slice(0,8)=="Computer"){
						cont_mininet++;
						sh = "  UdpEchoClientHelper echoClient"+p+" (iface_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,17)+".GetAddress (1), 9);@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet)
						cont_mininet++;
						sh = "  echoClient"+p+".SetAttribute (\"MaxPackets\", UintegerValue (1));@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  echoClient"+p+".SetAttribute (\"Interval\", TimeValue (Seconds (1.0)));@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  echoClient"+p+".SetAttribute (\"PacketSize\", UintegerValue (1024));@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
					}
					else if (obLink.can.destination.name.slice(0,8)=="Computer"){
						cont_mininet++;
						sh = "  UdpEchoClientHelper echoClient"+p+" (iface_"+obLink.can.source.name.slice(0,17)+"_"+obLink.can.destination.name.slice(0,11)+".GetAddress (1), 9);@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet)
						cont_mininet++;
						sh = "  echoClient"+p+".SetAttribute (\"MaxPackets\", UintegerValue (1));@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  echoClient"+p+".SetAttribute (\"Interval\", TimeValue (Seconds (1.0)));@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "  echoClient"+p+".SetAttribute (\"PacketSize\", UintegerValue (1024));@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
						cont_mininet++;
						sh = "@@";
						objeto_mininet=sh;
						temp_mininet.addItem(objeto_mininet);
					}				
				}	
				else if((obLink.can.source.name.slice(0,8)=="Computer"&&(obLink.can.destination.name.slice(0,8)=="Computer"))){
					cont_mininet++;
					sh = "  UdpEchoClientHelper echoClient"+p+" (iface_"+obLink.can.source.name.slice(0,11)+"_"+obLink.can.destination.name.slice(0,11)+".GetAddress (1), 9);@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet)
					cont_mininet++;
					sh = "  echoClient"+p+".SetAttribute (\"MaxPackets\", UintegerValue (1));@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  echoClient"+p+".SetAttribute (\"Interval\", TimeValue (Seconds (1.0)));@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "  echoClient"+p+".SetAttribute (\"PacketSize\", UintegerValue (1024));@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
					cont_mininet++;
					sh = "@@";
					objeto_mininet=sh;
					temp_mininet.addItem(objeto_mininet);
				}
			}
		}
	}	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}							
				}
				cont_mininet++;
				sh = "  ApplicationContainer clientApps"+p+" = echoClient0.Install ("+ob.name.slice(0,11)+".Get (0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Controller"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  ApplicationContainer clientApps"+p+" = echoClient0.Install ("+ob.name.slice(0,17)+".Get (0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
				
			}
		} 
	}		
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}	
					
				}
				cont_mininet++;
				sh = "  clientApps"+p+".Start (Seconds (2.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  clientApps"+p+".Start (Seconds (2.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
			
		} 
	}
	
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="Computer"){
				ab = int(ob.name.slice(9,11));
				ye=ab;													
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="computerIPAddress"){												
						computerIPAddress = obj.arrayComputerIPAddress1[ye];
					}	
					else if(obj.name=="computerMacAddress"){												
						computerMacAddress = obj.arrayComputerMacAddress1[ye];
					}							
				}
				cont_mininet++;
				sh = "  clientApps"+p+".Stop (Seconds (10.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);
			}
			else if(ob.id=="Switch"||ob.id=="Access Point"){
				if(ob.id=="Switch")
					ab = int(ob.name.slice(7,9));
				else
					ab = int(ob.name.slice(13,15));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;									
					if(obj.name=="switchMacAddress"){	
						macSwitch = obj.arrayMacSwitch1[ye];	
					}	
				}
				cont_mininet++;
				sh = "  clientApps"+p+".Stop (Seconds (10.0));@@";
				objeto_mininet=sh;
				temp_mininet.addItem(objeto_mininet);					
			}							
			else if(ob.id=="Controller"){		
				ab = int(ob.name.slice(11,13));
				ye=ab;
				for(i=0;i<(obb.objparaArrayCol.length);i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
					obj=obb.objparaArrayCol[ir] as objParameter;
					if(obj.name=="controllerIPAddress"){												
						controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
					}											
					else if(obj.name=="controllerPort"){
						controllerPort = obj.arrayControllerPort[ye];	
					}	
				}
			}
			
		} 
	}
	
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  NS_LOG_INFO (\"Run Simulation.\");@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  Simulator::Run ();@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  Simulator::Destroy ();@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  NS_LOG_INFO (\"Done.\");@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  #else@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  NS_LOG_INFO (\"NS-3 OpenFlow is not enabled. Cannot run simulation.\");@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "  #endif@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "}@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "//###################################################################@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "//Do you want to contribute for development of automatic NS3 code? Please contact me via email: ramonreisfontes@gmail.com@@";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	cont_mininet++;
	sh = "//###################################################################";
	objeto_mininet=sh;
	temp_mininet.addItem(objeto_mininet);
	
	if(expo==true){					
		var rand:Number = Math.random();
		var numeroRan:Number = Math.round(rand * 99999);
		chave = "NS3Code"+String(numeroRan);
		objSend.chave=chave;
		objSend.count2=cont_mininet;
		objSend.gtemp_mininet=temp_mininet;		
		createscript_ns3.send(objSend);
		fileRefScript_NS3 = new FileReference();	
		fileRefScript_NS3.addEventListener(Event.COMPLETE, SaveToLocalMachineResultScript);
		fileRefScript_NS3.addEventListener(ProgressEvent.PROGRESS, downloading_progress);				
		downloadScript();
	}		
}