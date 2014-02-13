import action_alert.HAlert;
import action_alert.HMensagens;

import flash.events.Event;
import flash.events.ProgressEvent;
import flash.net.FileReference;
import flash.net.URLRequest;

import mx.collections.ArrayCollection;

public var fileRefScript:FileReference;// = new FileReference();
//fileRefScript = new FileReference();

public function exportControllerScriptFile():void {
	var objSend:Object = new Object;
	//var temp_special_controller:ArrayCollection=new ArrayCollection();
	var temp_openflow_controller:ArrayCollection=new ArrayCollection();
	var objetos:Object=new Object();
	var objeto_openflow_controller:Object=new Object();
	var counter:int=0;
	var expo:Boolean=true;
	var emptyspace:int=1;
	var controllerIPAddress:String;
	var controllerPort:String;
	
	var ab:int;
	var i:int;
	var b:int;
	var p:int;
		
	//CHECK VALUES;
	//----------------------------------------------------------------------
	for(p=0;p<dropCanvas.numChildren;p++){	
		var UIob:Object = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			var ob:objects=UIob as objects;		
			var obb:Object=ob;
			for(var ir:int=0;ir<(obb.objparaArrayCol.length);ir++){
				obj=obb.objparaArrayCol[ir] as objParameter;	
				if(ob.id=="computer"){
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
				else if(ob.id=="controllerOpenflow"){
					ab = int(ob.name.slice(19,21));
					ye=ab;
				}
				/*if(obj.name=="computerIPAddress"){												
					if (obj.arrayComputerIPAddress1[ye]==null&&expo==true){
						expo=false;
						HAlert.erro(HMensagens.ipAddress+" for "+ob.name);
					}
				}	
				else if(obj.name=="switchMacAddress"){	
					if (obj.arrayMacSwitch1[ye]==null&&expo==true){
						expo=false;
						HAlert.erro(HMensagens.macSwitch+" for "+ob.name);
					}
				}
				else if(obj.name=="controllerIPAddress"){
					if (obj.arrayControllerIPAddress[ye]==undefined || obj.arrayControllerIPAddress[ye]=="" && expo==true){
						expo=false;
						HAlert.erro(HMensagens.controllerIPAddress+" for "+ob.name);
					}
				}	*/										
				for(p=0;p<dropCanvas.numChildren;p++){	
					UIob = dropCanvas.getChildAt(p);
					if(UIob.className =='objects'){
						ob=UIob as objects;		
						obb=ob;
						for(ir=0;ir<(obb.objparaArrayCol.length);ir++){
							obj=obb.objparaArrayCol[ir] as objParameter;	
							if(ob.id=="computer"){
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
							else if(ob.id=="controllerOpenflow"){
								ab = int(ob.name.slice(19,21));
								ye=ab;
							}
							/*if(obj.name=="computerIPAddress"){												
								if (obj.arrayComputerIPAddress1[ye]==null&&expo==true){
									expo=false;
									HAlert.erro(HMensagens.ipAddress+" for "+ob.name);
								}
							}	
							else if(obj.name=="macSwitch"){	
								if (obj.arrayMac_Switch[ye]==null&&expo==true){
									expo=false;
									HAlert.erro(HMensagens.macSwitchController+" for "+ob.name);
								}
							}
							else if(obj.name=="controllerIPAddress"){
								if ((obj.arrayControllerIPAddress[ye]==undefined || obj.arrayControllerIPAddress[ye]=="") && expo==true){
									expo=false;
									HAlert.erro(HMensagens.controllerIPAddress+" for "+ob.name);
								}
							}											
							else if(obj.name=="controllerPort"){
								if (obj.arrayControllerPort[ye]==undefined && expo==true){
									expo=false;
									HAlert.erro(HMensagens.controllerPort+" for "+ob.name);
								}
							}
							else if(obj.name=="flowName"){
								if (obj.arrayFlowName[ye]==undefined && expo==true){
									expo=false;
									HAlert.erro(HMensagens.flowName+" for "+ob.name);
								}
							}	*/						
						}
					}
				}
			}
		}
	}				
	//----------------------------------------------------------------------
	//----------------------------------------------------------------------
	for(var j:int=0;j<dropCanvas.numChildren;j++){	
		intnew=1;
		UIob = dropCanvas.getChildAt(j);
		if(UIob.className =='objects'){
			ob=UIob as objects;					
			if(ob.isMOtherTemplate==true ||ob.isChildTemplatedOne!=true ){
				/*if(ob.id=="computer"){
				var ab:int = int(ob.name.slice(9,11));
				ye=ab;
				var obb:Object=ob;
				counter1++;
				if(counter1==1){
				sh3 = "\n####################################################@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "#Computer - Create Interfaces----------------------#@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "####################################################@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "ovs-vsctl add-br Bridge@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);	
				}
				
				sh3 = "ip tuntap add mode tap "+ob.name+"_Port@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "ip link set "+ob.name+"_Port@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "ovs-vsctl add-port Bridge "+ob.name+"_Port@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);
				sh3 = "@@";
				objeto_computer=sh3;
				temp_computer.addItem(objeto_computer);	
				}*/
				if(ob.id=="controllerOpenflow"){
					ab = int(ob.name.slice(19,21));
					ye=ab;
					obb=ob;
					
					for(i=0;i<(obb.objparaArrayCol.length);i++){
						var obj:objParameter=obb.objparaArrayCol[i] as objParameter;
						var canew:String = String(obj.arrayFlowName);
						if(canew!="")
							intnew = int(obj.arrayFlowName[ye].length);
					}
					
					for(b=0;b<intnew;b++){
						for(var o:int=0;o<(obb.objparaArrayCol.length);o++){
							obj=obb.objparaArrayCol[o] as objParameter;	
							if(obj.name=="flowName"){
								flowName = obj.arrayFlowName[ye][b];
							}
							else if(obj.name=="macSwitch"){
								mac_Switch = "00:00:"+obj.arrayMac_Switch[ye][b];											
							}	
							else if(obj.name=="controllerIPAddress"){
								controllerIPAddress = obj.arrayControllerIPAddress[ye][0];	
							}											
							else if(obj.name=="controllerPort"){
								controllerPort = obj.arrayControllerPort[ye];	
							}										
							else if(obj.name=="macSource"){
								macSource = String(obj.arrayMacSource[ye][b]);										
							}
							else if(obj.name=="macDestination"){
								macDestination = String(obj.arrayMacDestination[ye][b]);	
							}
							else if(obj.name=="ingressPort"){
								ingressPort = String(obj.arrayIngressPort[ye][b]);										
							}
							else if(obj.name=="sourcePort"){
								sourcePort = obj.arraySrcPort[ye][b];										
							}
							else if(obj.name=="destinationPort"){
								destinationPort = obj.arrayDstPort[ye][b];										
							}
							else if(obj.name=="priority"){
								priority = String(obj.arrayPriority[ye][b]);										
							}											
							else if(obj.name=="vlanID"){
								vlanID = String(obj.arrayVlanID[ye][b]);													
							}											
							else if(obj.name=="vlanPriority"){
								vlanPriority = obj.arrayVlanPriority[ye][b];
							}
							else if(obj.name=="ipSource"){
								ipSource = String(obj.arrayIpSource[ye][b]);
							}
							else if(obj.name=="ipDestination"){
								ipDestination = String(obj.arrayIpDestination[ye][b]);	
							}
							else if(obj.name=="tos"){
								tos = obj.arrayTos[ye][0];											
							}
							else if(obj.name=="ethtype"){
								ethtype = obj.arrayEthType[ye][0];											
							}
							else if(obj.name=="protocol"){
								protocol = obj.arrayProtocol[ye][0];											
							}
							else if(obj.name=="setVLANPriority"){
								setVLANPriority = obj.arraySetVLANPriority[ye][b];													
							}
							else if(obj.name=="setSourcePort"){
								setSourcePort = obj.arraySetSourcePort[ye][b];
							}
							else if(obj.name=="setDestinationPort"){
								setDestinationPort = obj.arraySetDestinationPort[ye][b];	
							}
							else if(obj.name=="setVlanID"){
								setVlanID = String(obj.arraySetVlanID[ye][b]);	
							}
							else if(obj.name=="setIPSource"){
								setIPSource = String(obj.arraySetIPSource[ye][b]);													
							}
							else if(obj.name=="setIPDestination"){
								setIPDestination = String(obj.arraySetIPDestination[ye][b]);
							}
							else if(obj.name=="setMACSource"){
								setMACSource = String(obj.arraySetMACSource[ye][b]);	
							}
							else if(obj.name=="setMACDestination"){
								setMACDestination = String(obj.arraySetMACDestination[ye][b]);	
							}
							else if(obj.name=="setTOS"){
								setTOS = obj.arraySetTOS[ye][b];
							}
							else if(obj.name=="setEnqueue"){
								setEnqueue = obj.arraySetEnqueue[ye][b];
							}
							else if(obj.name=="setStripVlan"){
								setStripVlan = String(obj.arraySetStripVlan[ye][b]);
							}
							/*else if(obj.name=="setDestinationPort"){
								setDestinationPort = obj.arraySetDestinationPort[ye][b];
							}
							else if(obj.name=="setSourcePort"){
								setSourcePort = obj.arraySetSourcePort[ye][b];
							}*/
							else if(obj.name=="setOutput"){
								setOutput = String(obj.arraySetOutput[ye][b]);
							}
							else if(obj.name=="specialController"){
								var sc:String=obj.arraySpecialController[ye];												
							}
							else if(obj.name=="openflowController"){
								var oc:String=obj.arrayOpenflowController[ye];
							}											
							else if(obj.name=="notes"){
								/*if(sc=="Flowvisor"&&b==0){
								sh1 = "\n####################################################";
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								sh1 = "#SpecialControler-Flowvisor------------------------#";
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								sh1 = "####################################################";
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								sh1 = "#On terminal 01";
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								sh1 = "flowvisor config.xml #Starts flowvisor with config.xml file";
								objetos=sh1;
								temp_special_controller.addItem(objetos);													
								sh1= "\n#### FlowTable "+ob.name;
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								sh1 = "#On terminal 02";
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								}
								if(sc=="Flowvisor"){
								sh1 = "fvctl --passwd-file=/etc/flowvisor.passwd createSlice "+flowName+" tcp:"+controllerIPAddress+ ":"+controllerPort+" email@email.com";
								objetos=sh1;
								temp_special_controller.addItem(objetos);													
								sh1 = "fvctl --passwd-file=/etc/flowvisor.passwd addFlowSpace "+macSource+" "+priority+" in_port="+ingressPort+ " Slice:"+flowName+"=7";
								objetos=sh1;								
								temp_special_controller.addItem(objetos);													
								sh1 = "fvctl --passwd-file=/etc/flowvisor.passwd addFlowSpace "+macSource+" "+priority+" dl_vlan="+vlanID+ " Slice:"+flowName+"=7";
								objetos=sh1;
								temp_special_controller.addItem(objetos);
								}
								if(oc=="pox"&&b==0){
								sh2 = "\n####################################################@@";
								objeto_openflow_controller=sh2;
								temp_openflow_controller.addItem(objeto_openflow_controller);
								sh2 = "#OpenflowControler-POX-----------------------------#@@";
								objeto_openflow_controller=sh2;
								temp_openflow_controller.addItem(objeto_openflow_controller);
								sh2 = "####################################################@@";
								objeto_openflow_controller=sh2;
								temp_openflow_controller.addItem(objeto_openflow_controller);
								sh2 = "./pox.py log.level --DEBUG forwarding.l2_learning openflow.debug";
								objeto_openflow_controller=sh2;
								temp_openflow_controller.addItem(objeto_openflow_controller);
								}*/	
								if(oc=="mul"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version)@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Mul not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="mul"){
									
								}
								if(oc=="nodeflow"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Nodeflow not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="nodeflow"){
									
								}
								if(oc=="trema"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Trema not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="trema"){
									
								}
								if(oc=="ovs-controller"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for OVS-Controller not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="ovs-controller"){
									
								}
								if(oc=="maestro"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Maestro not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="maestro"){
									
								}
								if(oc=="jaxon"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Jaxon not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="jaxon"){
									
								}
								if(oc=="opendayligth"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for OpenDayligth not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="opendayligth"){
									
								}
								if(oc=="beacon"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Nox not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="beacon"){
									
								}
								if(oc=="nox"&&counter==0){
									counter++;
									sh2 = "\n####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "####################################################@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "Script for Nox not yet available@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}
								if(oc=="nox"){
									
								}
								if(oc=="pox"&&counter==0){
									emptyspace=0;
									counter++;
									sh2 = "#!/usr/bin/python@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "\"\"\"@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "\"\"\"@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);									
									counter++;
									sh2 = "from pox.core import core@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "from pox.lib.addresses import IPAddr@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "from pox.lib.addresses import EthAddr@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "import pox.openflow.libopenflow_01 as of@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "log = core.getLogger()@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);									
								}
								if(oc=="pox"){
									counter++;
									//sh2 = "# flow"+b+": @@";
									sh2 = "#"+flowName+": @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									mac_Switch=mac_Switch.substring(mac_Switch.length-2, mac_Switch.length);
									sh2 = "switch"+b+" = 00000000000000"+mac_Switch+"@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "flow"+b+"msg = of.ofp_flow_mod() @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "flow"+b+"msg.cookie = 0 @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									if(priority!="undefined"&&priority!="0"&&priority!=""&&priority!="null"){
										counter++;
										sh2 = "flow"+b+"msg.priority = "+priority+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ingressPort!="undefined"&&ingressPort!="0"&&ingressPort!=""&&ingressPort!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.in_port = "+ingressPort+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ethtype!="undefined"&&ethtype!="0"&&ethtype!=""&&ethtype!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.dl_type = "+ethtype+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(tos!="undefined"&&tos!="0"&&tos!=""&&tos!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.nw_tos = "+tos+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(protocol!="undefined"&&protocol!="0"&&protocol!=""&&protocol!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.nw_proto = "+protocol+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ipSource!="undefined"&&ipSource!="0"&&ipSource!=""&&ipSource!="none"&&ipSource!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.nw_src = IPAddr(\""+ipSource+"\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ipDestination!="undefined"&&ipDestination!="0"&&ipDestination!=""&&ipDestination!="none"&&ipDestination!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.nw_dst = IPAddr(\""+ipDestination+"\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(vlanID!="undefined"&&vlanID!="0"&&vlanID!=""&&vlanID!="null"&&vlanID!="none"){
										counter++;
										sh2 = "flow"+b+"msg.match.dl_vlan = "+vlanID+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(vlanPriority!="undefined"&&vlanPriority!=""&&vlanPriority!="0"){
										counter++;
										sh2 = "flow"+b+"msg.match.dl_vlan_pcp = "+vlanPriority+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(macSource!="undefined"&&macSource!="0"&&macSource!=""&&macSource!="none"&&macSource!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.dl_src  = EthAddr(\""+macSource+"\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(macDestination!="undefined"&&macDestination!="0"&&macDestination!=""&&macDestination!="none"&&macDestination!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.dl_dst  = EthAddr(\""+macDestination+"\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}			
									if(sourcePort!="undefined"&&sourcePort!=""&&sourcePort!="0"){
										counter++;
										sh2 = "flow"+b+"msg.match.tp_src = "+sourcePort+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(destinationPort!="undefined"&&destinationPort!=""&&destinationPort!="0"){
										counter++;
										sh2 = "flow"+b+"msg.match.tp_dst = "+destinationPort+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}								
									counter++;
									sh2="# ACTIONS---------------------------------@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									if(setVlanID!="undefined"&&setVlanID!="0"&&setVlanID!=""&&setVlanID!="null"&&setVlanID!="none"){
										counter++;
										sh2="flow"+b+"vlan_id = of.ofp_action_vlan_vid (vlan_vid = "+setVlanID+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setStripVlan=="yes"){
										counter++;
										sh2 = "flow"+b+"stripvlan = of.ofp_action_strip_vlan () @@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);													
									}
									if(setOutput!="undefined"&&setOutput!="0"&&setOutput!=""){
										counter++;
										sh2="flow"+b+"out = of.ofp_action_output (port = "+setOutput+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}	
									if(setVLANPriority!="undefined"&&setVLANPriority!="0"&&setVLANPriority!=""){
										counter++;
										sh2="flow"+b+"vlanPriority = of.ofp_action_vlan_pcp (vlan_pcp = "+setVLANPriority+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setEnqueue!="undefined"&&setEnqueue!="0"&&setEnqueue!=""){
										counter++;
										sh2="flow"+b+"enqueue = of.ofp_action_enqueue (enqueue = "+setEnqueue+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);											
									}
									if(setSourcePort!="undefined"&&setSourcePort!="0"&&setSourcePort!=""){
										counter++;
										sh2="flow"+b+"srcPort = of.ofp_action_tp_port.set_src = (tp_port = "+setSourcePort+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setDestinationPort!="undefined"&&setDestinationPort!="0"&&setDestinationPort!=""){
										counter++;
										sh2="flow"+b+"dstPort = of.ofp_action_tp_port.set_dst = (tp_port = "+setDestinationPort+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setMACSource!="undefined"&&setMACSource!="0"&&setMACSource!=""&&setMACSource!="none"&&setMACSource!="null"){
										counter++;
										sh2="flow"+b+"srcMAC = of.ofp_action_dl_addr.set_src(EthAddr(\""+setMACSource+"\"))@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setMACDestination!="undefined"&&setMACDestination!="0"&&setMACDestination!=""&&setMACDestination!="none"&&setMACDestination!="null"){
										counter++;
										sh2="flow"+b+"dstMAC = of.ofp_action_dl_addr.set_dst(EthAddr(\""+setMACDestination+"\"))@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setIPSource!="undefined"&&setIPSource!="0"&&setIPSource!=""&&setIPSource!="none"&&setIPSource!="null"){
										counter++;
										sh2="flow"+b+"srcIP = of.ofp_action_nw_addr.set_src(IPAddr(\""+setIPSource+"\"))@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);	
									}
									if(setIPDestination!="undefined"&&setIPDestination!="0"&&setIPDestination!=""&&setIPDestination!="none"&&setIPDestination!="null"){
										counter++;
										sh2="flow"+b+"dstIP = of.ofp_action_nw_addr.set_dst(IPAddr(\""+setIPDestination+"\"))@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(tos!="undefined"&&tos!=""&&tos!="0"){
										counter++;
										sh2="flow"+b+"tos = of.ofp_action_nw_tos (nw_tos = "+tos+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									counter++;
									sh2 = "flow"+b+"msg.actions = [";									
									if(setVlanID!=""&&setVlanID!="null"&&setVlanID!="no"&&setVlanID!="none"){
										sh2=sh2.concat("flow"+b+"vlan_id, ");
									}
									if(setVLANPriority!="undefined"&&setVLANPriority!="0"&&setVLANPriority!=""){
										sh2=sh2.concat("flow"+b+"vlanPriority, ");
									}
									if(setSourcePort!="undefined"&&setSourcePort!="0"&&setSourcePort!=""){
										sh2=sh2.concat("flow"+b+"dstPort, ");	
									}
									if(setDestinationPort!="undefined"&&setDestinationPort!="0"&&setDestinationPort!=""){
										sh2=sh2.concat("flow"+b+"srcPort, ");	
									}									
									if(setIPSource!="undefined"&&setIPSource!="0"&&setIPSource!=""&&setIPSource!="none"&&setIPSource!="null"){
										sh2=sh2.concat("flow"+b+"srcIP, ");	
									}
									if(setIPDestination!="undefined"&&setIPDestination!="0"&&setIPDestination!=""&&setIPDestination!="none"&&setIPDestination!="null"){
										sh2=sh2.concat("flow"+b+"srcIP, ");	
									}	
									if(setMACSource!="undefined"&&setMACSource!="0"&&setMACSource!=""&&setMACSource!="none"&&setMACSource!="null"){
										sh2=sh2.concat("flow"+b+"srcMAC, ");
									}
									if(setMACDestination!="undefined"&&setMACDestination!="0"&&setMACDestination!=""&&setMACDestination!="none"&&setMACDestination!="null"){
										sh2=sh2.concat("flow"+b+"dstMAC, ");
									}
									if(setEnqueue!="undefined"&&setEnqueue!="0"&&setEnqueue!=""){
										sh2=sh2.concat("flow"+b+"enqueue, ");									
									}
									if(setStripVlan=="yes"){
										sh2=sh2.concat("flow"+b+"stripvlan, ");													
									}
									if(tos!="undefined"&&tos!="0"&&tos!=""){
										sh2=sh2.concat("flow"+b+"tos, ");
									}
									if(setOutput!="undefined"&&setOutput!="0"&&setOutput!=""){
										sh2=sh2.concat("flow"+b+"out, ");
									}
									sh2=sh2.substring(0, sh2.length-2);
									if(sh2.length==19||sh2.length==20){
										expo=false;
										HAlert.erro(HMensagens.actions+" for "+ob.name);
									}									
									counter++;
									sh2 = sh2.concat("] @@");
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									//counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									if((b+1)==intnew){										
										counter++;
										sh2 = "def install_flows(): @@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										counter++;
										sh2 = "   log.info(\"    *** Installing static flows... ***\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										counter++;
										sh2 = "   # Push flows to switches@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										
										for(b=0;b<intnew;b++){
											counter++;
											sh2 = "   core.openflow.sendToDPID(switch"+b+", flow"+b+"msg)@@";
											objeto_openflow_controller=sh2;
											temp_openflow_controller.addItem(objeto_openflow_controller);
										}
										counter++;
										sh2 = "   log.info(\"    *** Static flows installed. ***\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										//counter++;
										sh2 = "@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										counter++;
										sh2 = "def launch (): @@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);										
										counter++;
										sh2 = "   log.info(\"*** Starting... ***\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										counter++;
										sh2 = "   core.callDelayed (15, install_flows)@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										counter++;
										sh2 = "   log.info(\"*** Waiting for switches to connect.. ***\")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
										}
								}
								if(oc=="floodlight"&&counter==0){
									counter++;
									sh2 = "#!/usr/bin/python@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#Script created by VND - Visual Network Description (SDN version) @@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "#You can start floodlight controller with command: java -jar target/floodlight.jar@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									//counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "import httplib@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "import json@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "class StaticFlowPusher(object):@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    def __init__(self, server):@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        self.server = server@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    def get(self, data):@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        ret = self.rest_call({}, 'GET')@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        return json.loads(ret[2])@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    def set(self, data):@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        ret = self.rest_call(data, 'POST')@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        return ret[0] == 200@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    def remove(self, objtype, data):@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        ret = self.rest_call(data, 'DELETE')@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        return ret[0] == 200@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    def rest_call(self, data, action):@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        path = '/wm/staticflowentrypusher/json'@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        headers = {@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "            'Content-type': 'application/json',@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "            'Accept': 'application/json',@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "            }@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        body = json.dumps(data)@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        conn = httplib.HTTPConnection(self.server, 8080)@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        conn.request(action, path, body, headers)@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        response = conn.getresponse()@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        ret = (response.status, response.reason, response.read())@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        print ret@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        conn.close()@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "        return ret@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "pusher = StaticFlowPusher('"+controllerIPAddress+"')@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									//counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
								}												
								if(oc=="floodlight"){
									emptyspace=0;
									counter++;
									sh2 = "flow_"+b+" = {@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    'switch':"+"\""+mac_Switch+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"name\":"+"\""+"Flow_"+flowName+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"cookie\":"+"\""+'0'+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									if(priority!="undefined"&&priority!=""&&priority!="null"){
										counter++;
										sh2 = "    \"priority\":"+"\""+priority+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ingressPort!="undefined"&&ingressPort!=""&&ingressPort!="null"){
										counter++;
										sh2 = "    \"ingress-port\":"+"\""+ingressPort+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(macSource!="undefined"&&macSource!="0"&&macSource!=""&&macSource!="none"&&macSource!="null"){
										counter++;
										sh2 = "    \"src-mac\":"+"\""+macSource+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(macDestination!="undefined"&&macDestination!="0"&&macDestination!=""&&macDestination!="none"&&macDestination!="null"){
										counter++;
										sh2 = "    \"dst-mac\":"+"\""+macDestination+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(vlanID!="undefined"&&vlanID!="0"&&vlanID!=""&&vlanID!="null"&&vlanID!="no"&&vlanID!="none"){
										counter++;
										sh2 = "    \"vlan-id\":"+"\""+vlanID+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(vlanPriority!="undefined"&&vlanPriority!="0"&&vlanPriority!=""){
										counter++;
										sh2 = "    \"vlan-priority\":"+"\""+vlanPriority+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ethtype!="undefined"&&ethtype!="0"&&ethtype!=""){
										counter++;
										sh2 = "    \"ether-type\":"+"\""+ethtype+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(tos!="undefined"&&tos!="0"&&tos!=""){
										counter++;
										sh2 = "    \"tos\":"+"\""+tos+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(protocol!="undefined"&&protocol!="0"&&protocol!=""&&protocol!="null"){
										counter++;
										sh2 = "    \"protocol\":"+"\""+protocol+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ipSource!="undefined"&&ipSource!="0"&&ipSource!=""&&ipSource!="none"&&ipSource!="null"){
										counter++;
										sh2 = "    \"src-ip\":"+"\""+ipSource+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ipDestination!="undefined"&&ipDestination!="0"&&ipDestination!=""&&ipDestination!="none"&&ipDestination!="null"){
										counter++;
										sh2 = "    \"dst-ip\":"+"\""+ipDestination+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}											
									if(sourcePort!="undefined"&&sourcePort!="0"&&sourcePort!=""){
										counter++;
										sh2 = "    \"src-port\":"+"\""+sourcePort+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(destinationPort!="undefined"&&destinationPort!="0"&&destinationPort!=""){
										counter++;
										sh2 = "    \"dst-port\":"+"\""+destinationPort+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}	
									counter++;
									sh2 = "    \"active\":"+"\""+"true"+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"actions\":\"";
									if(setVLANPriority!="0"&&setVLANPriority!=""){
										sh2=sh2.concat("set-vlan-priority="+setVLANPriority+",");
									}
									if(setVlanID!="undefined"&&setVlanID!="0"&&setVlanID!=""&&setVlanID!="null"&&setVlanID!="no"&&setVlanID!="none"){
										sh2=sh2.concat("set-vlan-id="+setVlanID+",");
									}
									if(setSourcePort!="undefined"&&setSourcePort!="0"&&setSourcePort!=""){
										sh2=sh2.concat("set-src-port="+setSourcePort+",");
									}
									if(setDestinationPort!="undefined"&&setDestinationPort!="0"&&setDestinationPort!=""){
										sh2=sh2.concat("set-dst-port="+setDestinationPort+",");
									}												
									if(setIPSource!="undefined"&&setIPSource!="0"&&setIPSource!=""&&setIPSource!="none"&&setIPSource!="null"){
										sh2=sh2.concat("set-src-ip="+setIPSource+",");
									}
									if(setIPDestination!="undefined"&&setIPDestination!="0"&&setIPDestination!=""&&setIPDestination!="none"&&setIPDestination!="null"){
										sh2=sh2.concat("set-dst-ip="+setIPDestination+",");
									}
									if(setMACSource!="undefined"&&setMACSource!="0"&&setMACSource!=""&&setMACSource!="none"&&setMACSource!="null"){
										sh2=sh2.concat("set-src-mac="+setMACSource+",");
									}
									if(setMACDestination!="undefined"&&setMACDestination!="0"&&setMACDestination!=""&&setMACDestination!="none"&&setMACDestination!="null"){
										sh2=sh2.concat("set-dst-mac="+setMACDestination+",");
									}		
									if(setTOS!="undefined"&&setTOS!="0"&&setTOS!=""&&setTOS!="null"){
										sh2=sh2.concat("set-tos-bits="+setTOS+",");
									}	
									if(setEnqueue!="undefined"&&setEnqueue!="0"&&setEnqueue!=""){
										sh2=sh2.concat("enqueue="+setEnqueue+",");													
									}
									if(setStripVlan=="yes"){
										sh2=sh2.concat("strip-vlan"+",");													
									}
									if(setOutput!="0"&&setOutput!=""){
										sh2=sh2.concat("output="+setOutput+",");
										/*<number> 
										all 
										controller 
										local 
										ingress-port 
										normal 
										flood*/
									}
									//delete last string = ,
									sh2=sh2.substring(0, sh2.length-1);
									if(sh2.length==14){
										expo=false;
										HAlert.erro(HMensagens.actions+" for "+ob.name);
									}
									
									counter++;
									sh2 = sh2.concat("\"@@");
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    }@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "pusher.set("+"flow_"+b+")@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									//counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									//-----------------------------------------------------------
									
									/*												
									counter++;
									sh2 = "flowOUT"+b+" = {@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    'switch':"+"\""+macSource+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"name\":"+"\""+"FlowOUT"+flowName+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"cookie\":"+"\""+'0'+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"priority\":"+"\""+priority+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"vlan-id\":"+"\""+vlanID+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"active\":"+"\""+"true"+"\""+",@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    \"actions\":"+"\""+"strip-vlan,output="+ingressPort+"\""+"@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "    }@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "pusher.set("+"flowOUT"+b+")@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "pusher.set("+"flowIN"+b+")@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									counter++;
									sh2 = "@@";
									objeto_openflow_controller=sh2;
									temp_openflow_controller.addItem(objeto_openflow_controller);
									*/
									//ingress-port vlan-id vlan-priority ether-type tos-bits protocol src-port dst-port
									//Assume the controller runs on localhost. Show whether the firewall is enabled or disabled.
									//curl http://localhost:8080/wm/firewall/module/status/json
									//Enable the firewall. By default firewall denies all traffic unless an explicit ALLOW rule is created.
									//curl http://localhost:8080/wm/firewall/module/enable/json
									//Adding an ALLOW rule for all flows to pass through switch 00:00:00:00:00:00:00:01.
									//curl -X POST -d '{"switchid": "00:00:00:00:00:00:00:01"}' http://localhost:8080/wm/firewall/rules/json
									//Adding an ALLOW rule for all flows between IP host 10.0.0.3 and host 10.0.0.7. Not specifying action implies ALLOW rule.
									
									//curl -X POST -d '{"src-ip": "10.0.0.3/32", "dst-ip": "10.0.0.7/32"}' http://localhost:8080/wm/firewall/rules/json
									//curl -X POST -d '{"src-ip": "10.0.0.7/32", "dst-ip": "10.0.0.3/32"}' http://localhost:8080/wm/firewall/rules/json
									//Adding an ALLOW rule for all flows between host mac 00:00:00:00:00:0a and host 00:00:00:00:00:0b
									
									//curl -X POST -d '{"src-mac": "00:00:00:00:00:0a", "dst-mac": "00:00:00:00:00:0b"}' http://localhost:8080/wm/firewall/rules/json
									//curl -X POST -d '{"dst-mac": "00:00:00:00:00:0b", "dst-mac": "00:00:00:00:00:0a"}' http://localhost:8080/wm/firewall/rules/json
									//Adding an ALLOW rule for ping to work between IP hosts 10.0.0.3 and 10.0.0.7.
									
									//curl -X POST -d '{"src-ip": "10.0.0.3/32", "dst-ip": "10.0.0.7/32", "dl-type":"ARP" }' http://localhost:8080/wm/firewall/rules/json
									//curl -X POST -d '{"src-ip": "10.0.0.7/32", "dst-ip": "10.0.0.3/32", "dl-type":"ARP" }' http://localhost:8080/wm/firewall/rules/json
									
									//curl -X POST -d '{"src-ip": "10.0.0.3/32", "dst-ip": "10.0.0.7/32", "nw-proto":"ICMP" }' http://localhost:8080/wm/firewall/rules/json
									//curl -X POST -d '{"src-ip": "10.0.0.7/32", "dst-ip": "10.0.0.3/32", "nw-proto":"ICMP" }' http://localhost:8080/wm/firewall/rules/json
									
									/*Adding an ALLOW rule for UDP (such as iperf) to work between IP hosts 10.0.0.4 and 10.0.0.10, and then blocking port 5010.
									
									curl -X POST -d '{"src-ip": "10.0.0.4/32", "dst-ip": "10.0.0.10/32", "dl-type":"ARP" }' http://localhost:8080/wm/firewall/rules/json
									curl -X POST -d '{"src-ip": "10.0.0.10/32", "dst-ip": "10.0.0.4/32", "dl-type":"ARP" }' http://localhost:8080/wm/firewall/rules/json
									
									curl -X POST -d '{"src-ip": "10.0.0.4/32", "dst-ip": "10.0.0.10/32", "nw-proto":"UDP" }' http://localhost:8080/wm/firewall/rules/json
									curl -X POST -d '{"src-ip": "10.0.0.10/32", "dst-ip": "10.0.0.4/32", "nw-proto":"UDP" }' http://localhost:8080/wm/firewall/rules/json
									
									curl -X POST -d '{"src-ip": "10.0.0.4/32", "dst-ip": "10.0.0.10/32", "nw-proto":"UDP", "tp-src":"5010", "action":"DENY" }' http://localhost:8080/wm/firewall/rules/json
									curl -X POST -d '{"src-ip": "10.0.0.10/32", "dst-ip": "10.0.0.4/32", "nw-proto":"UDP", "tp-dst":"5010", "action":"DENY" }' http://localhost:8080/wm/firewall/rules/json
									
									curl -d '{"switch":"00:00:00:00:00:00:00:04", "name":"test3", "active":"true", "priority":"5", "actions":"output=2,set-vlan-id=100","ingress-port":"1"}' http://127.0.0.1:8080/wm/staticflowentrypusher/json
									curl -d '{"switch":"00:00:00:00:00:00:00:04", "name":"test4", "active":"true", "priority":"5", "actions":"output=1,strip-vlan","ingress-port":"2"}' http://127.0.0.1:8080/wm/staticflowentrypusher/json
									*/
									//curl -X DELETE -d '{"name": "lso"}' http://127.0.0.1:8080/wm/staticflowentrypusher/json
									
									//route add -net 0.0.0.0/32 gw IP_DO_GATEWAY	
									/*./qosmanager2.py -c 127.0.0.1 -p 8080 -A -t policy -O '{"name":"Enqueue'","protocol":"6","eth-type":"0x800","ingress-port":"1","ip-src":10.0.0.1","sw":"00:00:00:00:00:00:00:01","queue":"2","enqueue-port":"2"}'
									
									apps/flood...	ant; ./floodlight.sh
									
									policy --
									id
									name
									sw
									service
									queue
									enqueue-port
									priority
									
									policy match fields --
									protocol
									eth-type
									ingress-port
									ip-src
									ip-dst
									tos
									vlan-id
									eth-src
									eth-dst
									src-port
									dst-port				
									*/
								}									
							}
						}
					}
				}
			}
		}		
	}
	if(expo==true){
	//	alertpy1();	
		counter++;
		sh2 = "";
		objeto_openflow_controller=sh2;
		temp_openflow_controller.addItem(objeto_openflow_controller);
		var rand:Number = Math.random();
		var numeroRan:Number = Math.round(rand * 9999);
		//var chave:String;
		chave = "controllerScript"+String(numeroRan);
		objSend.emptyspace=0;		
		objSend.chave=chave;
		objSend.gtemp_openflow_controller=temp_openflow_controller;
		objSend.count=counter;
		createscript_controller.send(objSend);
		fileRefScript = new FileReference();
		fileRefScript.addEventListener(Event.COMPLETE, SaveToLocalMachineResultScript);
		fileRefScript.addEventListener(ProgressEvent.PROGRESS, downloading_progress);				
		//var request:URLRequest = new URLRequest("./scripts/"+chave+".sh");
		//fileRefScript.download(new URLRequest("./scripts/"+chave+".sh"));
		downloadScript();
		}				
}

//private function alertpy1():void {	
	//HAlert.informacao(HMensagens.alertpy);
//}

public function exportControllerScriptFileQoS():void {
	var objSend:Object = new Object;
	var temp_openflow_controller:ArrayCollection=new ArrayCollection();
	var objetos:Object=new Object();
	var objeto_openflow_controller:Object=new Object();
	var counter:int=0;
	var counterqueue:int=0;
	var counterqueue1:int=0;
	var expo:Boolean=true;
	var uniqcont:int=0;
	var intnew:int;
	//var fileRefScript:FileReference;
	var i:int;
	var ab:int;
	var b:int;
	
	for(var p:int=0;p<dropCanvas.numChildren;p++){	
		var UIob:Object = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			var ob:objects=UIob as objects;		
			var obb:Object=ob;
			for(var ir:int=0;ir<(obb.objparaArrayCol.length);ir++){
				if(expo==true){
				obj=obb.objparaArrayCol[ir] as objParameter;	
				/*if(ob.id=="computer"){
					var ab:int = int(ob.name.slice(9,11));
					ye=ab;
				}*/
				/*else if(ob.id=="switchOpenflow"){
					var ab:int = int(ob.name.slice(15,17));
					ye=ab;
				}*/
				if(ob.id=="controllerOpenflow"){
					
					ab = int(ob.name.slice(19,21));
					ye=ab;
					
					for(i=0;i<obb.objparaArrayCol.length;i++){
						var obj:objParameter=obb.objparaArrayCol[i] as objParameter;
					}
					
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];
						var canew:int = obj.arrayqosName.length;						
					}
					
					if(canew==0){
						//expo=false;
						//HAlert.erro(HMensagens.setqos+" for "+ob.name);
					}
					
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];
						canew = obj.arrayqueueName.length;
					}
					
					if(canew==0){
						//expo=false;
						//HAlert.erro(HMensagens.setqueue+" for "+ob.name);
					}
					
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];
						canew = obj.arrayqueueInterface.length;						
					}
					
					if(canew==0){
						//expo=false;
						//HAlert.erro(HMensagens.setqueueInterface+" for "+ob.name);
					}
					
				}
				/*if(obj.name=="computerIPAddress"){												
					if (obj.arrayComputerIPAddress1[ye]==null&&expo==true){
						expo=false;
						HAlert.erro(HMensagens.ipAddress+" for "+ob.name);
					}
				}	*/
				/*else if(obj.name=="switchMacAddress"){	
					if (obj.arrayMacSwitch1[ye]==null&&expo==true){
						expo=false;
						HAlert.erro(HMensagens.macSwitch+" for "+ob.name);
					}
				}*/
				/*if(obj.name=="controllerIPAddress"){
					if (obj.arrayControllerIPAddress[ye]==undefined || obj.arrayControllerIPAddress[ye]=="" && expo==true){
						expo=false;
						HAlert.erro(HMensagens.controllerIPAddress+" for "+ob.name);
					}
				}
				else if(obj.name=="openflowController"){
					if (obj.arrayOpenflowController[ye]==undefined || obj.arrayOpenflowController[ye]=="" && expo==true){
						expo=false;
						HAlert.erro(HMensagens.openflowController+" for "+ob.name);
					}
				}*/
			}
			}
		}
	}
	
	if(expo==true){
	//CHECK VALUES
	//----------------------------------------------------------------------
	for(p=0;p<dropCanvas.numChildren;p++){	
		UIob = dropCanvas.getChildAt(p);
		if(UIob.className =='objects'){
			ob=UIob as objects;	
			obb=ob;
			if(ob.id=="controllerOpenflow"){
				uniqcont++;
				ab = int(ob.name.slice(19,21));
				ye=ab;
				for(i=0;i<obb.objparaArrayCol.length;i++){
					obj=obb.objparaArrayCol[i] as objParameter;
				}		
				for(var o:int=0;o<obb.objparaArrayCol.length;o++){
					obj=obb.objparaArrayCol[o] as objParameter;					
					if(obj.name=="controllerIPAddress"){
						var controllerIPAddress:String = obj.arrayControllerIPAddress[ye][0];						
					}
					else if(obj.name=="openflowController"){
						var oc:String=obj.arrayOpenflowController[ye];
					}
				}		
				if(uniqcont==1){					
				for(i=0;i<qos1.objparaArrayCol.length;i++){
					obj=qos1.objparaArrayCol[i];
					canew = obj.arrayqueueInterface.length;
					if(canew!=0)
						intnew = obj.arrayqueueInterface.length;
				}
				
				for(b=0;b<intnew;b++){
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];			
						if(counterqueue==0){
							counterqueue++;
							sh2 = "#Script created by VND - Visual Network Description @@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);
							counterqueue++;
							sh2 = "####################################################@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);
							counterqueue++;
							sh2 = "#QoS Configuration @@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);							
							counterqueue++;
							sh2 = "####################################################@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);	
							counterqueue++;
							sh2 = "#You can start floodlight controller with command: ant; ./floodlight.sh inside the directory .../apps/floodlight-qos-beta/@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);
							counterqueue++;
							sh2 = "#You must enable QoS with ./qosmanager2.py" +
								" -e inside the directory /floodlight/apps/floodlight-qos-beta/apps/qos\n@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);
							counterqueue++;
							sh2 = "@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);
						}						
						if(obj.qosname[i]=="interface"){
							counterqueue++;
							if(obj.arrayqueueInterface[b]!=""&&counterqueue==8){
								sh2 = ("ovs-vsctl -- set Port "+obj.arrayqueueInterface[b]+" qos=@newqos \\ @@");		
							}
							else if(obj.arrayqueueInterface[b]){
								sh2 = ("-- set Port "+obj.arrayqueueInterface[b]+" qos=@newqos \\ @@");		
							}
								
						}						
					}
					objeto_openflow_controller=sh2;
					temp_openflow_controller.addItem(objeto_openflow_controller);	
				}
				
				for(i=0;i<qos1.objparaArrayCol.length;i++){
					obj=qos1.objparaArrayCol[i];
					canew = obj.arrayqueueName.length;
					if(canew!=0)
						intnew = int(obj.arrayqueueName.length);
				}
				for(b=0;b<intnew;b++){
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];						
						if(b==0&&obj.qosname[i]=="queuename"){
							counterqueue1++;
							sh2 = "-- --id=@newqos create QoS type=linux-htb ";
							if(obj.arrayqueueIfaceMinRate!=""&&obj.arrayqueueIfaceMinRate!="")
								sh2=sh2.concat("other-config:min-rate="+obj.arrayqueueIfaceMinRate+" ");
							if(obj.arrayqueueIfaceMaxRate!=""&&obj.arrayqueueIfaceMaxRate!="")
								sh2=sh2.concat("other-config:max-rate="+obj.arrayqueueIfaceMaxRate+" ");
							sh2=sh2.concat("queues=0=@q0");
						}						
						if(obj.qosname[i]=="queuename"&&b>0){
							if(obj.arrayqueueName[b]!=""){
								sh2 = sh2.concat(","+b+"=@q"+b);	
							}
						}
					}									
				}
				if(intnew!=0){
				sh2=sh2.concat(" \\ @@");
				objeto_openflow_controller=sh2;
				temp_openflow_controller.addItem(objeto_openflow_controller);
				}
				
				for(b=0;b<intnew;b++){
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];						
						if(obj.qosname[i]=="queuename"){
							counterqueue1++;
							sh2 = "-- --id=@q"+b+" create Queue ";
							if(obj.arrayqueueMinRate[b]!=null&&obj.arrayqueueMinRate[b]!="")
								sh2=sh2.concat("other-config:min-rate="+obj.arrayqueueMinRate[b]+" ");
							if(obj.arrayqueueMaxRate[b]!=null&&obj.arrayqueueMaxRate[b]!="")
								sh2=sh2.concat("other-config:max-rate="+obj.arrayqueueMaxRate[b]+" ");
							sh2=sh2.concat("\\ @@");
							if(b+1==intnew)
								sh2=sh2.substring(0, sh2.length-4)+"@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);							
						}
					}
				}
				
				for(i=0;i<qos1.objparaArrayCol.length;i++){
					obj=qos1.objparaArrayCol[i];
					canew = obj.arrayqosName.length;
					if(canew!=0)
						intnew = obj.arrayqosName.length;
				}
				for(b=0;b<intnew;b++){
					for(i=0;i<qos1.objparaArrayCol.length;i++){
						obj=qos1.objparaArrayCol[i];						
						if(oc=="floodlight"&&counter==0){							
							counter++;
							sh2 = "@@";
							objeto_openflow_controller=sh2;
							temp_openflow_controller.addItem(objeto_openflow_controller);
						}
						
						
						if(oc=="floodlight"){
						//counter++;
								
						if(obj.qosname[i]=="name"&&expo==true){
							counter++;
							if(obj.arrayqosName[b]!=""){
							sh2 = "./qospath2.py ";		
							sh2 = sh2.concat("--add ");								
							sh2 = sh2.concat("--name ");
							sh2 = sh2.concat(obj.arrayqosName[b]+" ");
							}
							else if(obj.arrayqosName[b]==""){								
							//	HAlert.erro(HMensagens.qosNamee+" for "+ob.name);
								//expo=false;
							}
						}
						
						if(obj.qosname[i]=="ipsrc"&&expo==true){
							if(obj.arrayqosSourceIP[b]!=""){
							sh2 = sh2.concat("-S "+obj.arrayqosSourceIP[b]+" ");
							//sh2 = sh2.concat("\"ip-src\":\""+obj.arrayqosSourceIP[ye][b]+"\",");	
							}
							else if(obj.arrayqosSourceIP[b]==""){								
							//	HAlert.erro(HMensagens.qosipsrc+" for "+ob.name);
							//	expo=false;
							}
						}	
						if(obj.qosname[i]=="ipdst"&&expo==true){
							if(obj.arrayqosDestinationIP[b]!=""){
							sh2 = sh2.concat("-D "+obj.arrayqosDestinationIP[b]+" ");
							//sh2 = sh2.concat("\"ip-dst\":\""+obj.arrayqosDestinationIP[ye][b]+"\", ");	
							}
							else if(obj.arrayqosDestinationIP[b]==""){								
							//	HAlert.erro(HMensagens.qosipdst+" for "+ob.name);
							//	expo=false;
							}
						}
						
						if(obj.qosname[i]=="sw"){												
						}	
						if(obj.qosname[i]=="ethtype"&&expo==true){							
							if(obj.arrayqosEthType[b]!=""){							
								sh2 = sh2.concat("--json ");							
								sh2 = sh2.concat("'{");							
								sh2 = sh2.concat("\"eth-type\":\""+obj.arrayqosEthType[b]+"\",");
							}
							else if(obj.arrayqosEthType[b]==""){								
							//	HAlert.erro(HMensagens.qosethtype+" for "+ob.name);
							//	expo=false;
							}
						}
						if(obj.qosname[i]=="priority"&&expo==true){
							if(obj.arrayqosPriority[b]!=""){							
								sh2 = sh2.concat("\"priority\":\""+obj.arrayqosPriority[b]+"\",");
							}
							else if(obj.arrayqosPriority[b]==""){								
								//	HAlert.erro(HMensagens.qosProtocol+" for "+ob.name);
								//	expo=false;
							}
						}
						if(obj.qosname[i]=="protocol"&&expo==true){
							if(obj.arrayqosProtocol[b]!=""){							
								sh2 = sh2.concat("\"protocol\":\""+obj.arrayqosProtocol[b]+"\",");
							}
							else if(obj.arrayqosProtocol[b]==""){								
							//	HAlert.erro(HMensagens.qosProtocol+" for "+ob.name);
							//	expo=false;
							}
						}
						if(obj.qosname[i]=="queue"&&obj.arrayqosQueue[b]!=""){
							if(obj.arrayqosQueue[b]!=""){
								sh2 = sh2.concat("\"queue\":\""+obj.arrayqosQueue[b]+"\",");
							}
							else if(obj.arrayqosQueue[b]==""){								
							//	HAlert.erro(HMensagens.qosqueue+" for "+ob.name);
							//	expo=false;
							}
						}
						if(obj.qosname[i]=="ingress-port"&&obj.arrayqosIngressPort[b]!=""){
							//sh2 = sh2.concat("\"ingress-port\":\""+obj.arrayqosIngressPort[ye][b]+"\",");	
						}
						if(obj.qosname[i]=="tos"&&obj.arrayqosTos[b]!=""){
							//sh2 = sh2.concat("\"tos\":\""+obj.arrayqosTos[ye][b]+"\",");	
						}
						if(obj.qosname[i]=="vlanid"&&obj.arrayqosVlanID[b]!=""){
							//sh2 = sh2.concat("\"vlan-id\":\""+obj.arrayqosVlanID[ye][b]+"\",");	
						}
						if(obj.qosname[i]=="ethsrc"&&obj.arrayqosSourceEth[b]!=""){
							//sh2 = sh2.concat("\"eth-src\":\""+obj.arrayqosSourceEth[ye][b]+"\",");
						}
						if(obj.qosname[i]=="ethdst"&&obj.arrayqosDestinationEth[b]!=""){
							//sh2 = sh2.concat("\"eth-dst\":\""+obj.arrayqosDestinationEth[ye][b]+"\",");
						}
						if(obj.qosname[i]=="srcport"&&obj.arrayqosSourcePort[b]!=""){
							//sh2 = sh2.concat("\"src-port\":\""+obj.arrayqosSourcePort[ye][b]+"\",");
						}
						if(obj.qosname[i]=="dstport"&&obj.arrayqosDestinationPort[b]!=""){
							//sh2 = sh2.concat("\"dst-port\":\""+obj.arrayqosDestinationPort[ye][b]+"\",");
						}
						
						if((i+1)==qos1.objparaArrayCol.length){
							sh2=sh2.substring(0, sh2.length-1);
							sh2 = sh2.concat("}' ");
							sh2 = sh2.concat("-c "+controllerIPAddress+" -p 8080@@");
						}
						}
					}
					objeto_openflow_controller=sh2;
					temp_openflow_controller.addItem(objeto_openflow_controller);
					//counter++;
					//sh2 = "@@";
					///objeto_openflow_controller=sh2;
					//temp_openflow_controller.addItem(objeto_openflow_controller);
				}
			}
		}
	}
	}
	//----------------------------------------------------------------------
	//----------------------------------------------------------------------
	
	if(expo==true){
		counter++;
		sh2 = "";
		objeto_openflow_controller=sh2;
		temp_openflow_controller.addItem(objeto_openflow_controller);
		var rand:Number = Math.random();
		var numeroRan:Number = Math.round(rand * 9999);
		//var chave:String;
		chave = "QoSScript"+String(numeroRan);
		objSend.emptyspace=1;
		objSend.chave=chave;
		objSend.gtemp_openflow_controller=temp_openflow_controller;
		objSend.count=(counter+counterqueue+counterqueue1);
		createscript_controller.send(objSend);
		fileRefScript = new FileReference();
		fileRefScript.addEventListener(Event.COMPLETE, SaveToLocalMachineResultScript);
		fileRefScript.addEventListener(ProgressEvent.PROGRESS, downloading_progress);				
		//var request:URLRequest = new URLRequest("./scripts/"+chave+".sh");
		//fileRefScript.download(new URLRequest("./scripts/"+chave+".sh"));
		//alertpy();		
		downloadScript();
		//Alert.show(chave);
	}				
}
}