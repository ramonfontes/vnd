import action_alert.HAlert;
import action_alert.HMensagens;
import mx.controls.Alert;
import flash.events.Event;
import flash.events.ProgressEvent;
import flash.net.FileReference;

import mx.collections.ArrayCollection;

public var fileRefScript:FileReference;

public function exportControllerScriptFile():void {
	var objSend:Object = new Object;
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
	
	for(var j:int=0;j<dropCanvas.numChildren;j++){	
		intnew=1;
		var UIob:Object = dropCanvas.getChildAt(j);
		if(UIob.className =='objects'){
			var ob:objects=UIob as objects;					
				if(ob.id=="Controller"){
					ab = int(ob.name.slice(11,13));
					var obb:Object=ob;
					
					for(i=0;i<(obb.objparaArrayCol.length);i++){
						var obj:objParameter=obb.objparaArrayCol[i] as objParameter;
						var canew:String = String(obj.flowName);
						if(canew!="")
							intnew = int(obj.flowName.length);
					}
					
					for(b=0;b<intnew;b++){
						for(var o:int=0;o<(obb.objparaArrayCol.length);o++){
							obj=obb.objparaArrayCol[o] as objParameter;	
							if(obj.name=="flowName"){
								flowName = obj.flowName[b];
							}
							else if(obj.name=="macSwitch"){
								mac_Switch = "00:00:"+obj.MacSwitch[b];											
							}	
							else if(obj.name=="controllerIPAddress"){
								controllerIPAddress = obj.controllerIPAddress;	
							}											
							else if(obj.name=="controllerPort"){
								controllerPort = obj.controllerPort;	
							}										
							else if(obj.name=="macSource"){
								macSource = String(obj.macSource[b]);
							}
							else if(obj.name=="macDestination"){
								macDestination = String(obj.macDestination[b]);	
							}
							else if(obj.name=="ingressPort"){
								ingressPort = String(obj.ingressPort[b]);										
							}
							else if(obj.name=="sourcePort"){
								sourcePort = obj.srcPort[b];										
							}
							else if(obj.name=="destinationPort"){
								destinationPort = obj.dstPort[b];										
							}
							else if(obj.name=="priority"){
								priority = String(obj.priority[b]);										
							}											
							else if(obj.name=="vlanID"){
								vlanID = String(obj.vlanID[b]);													
							}											
							else if(obj.name=="vlanPriority"){
								vlanPriority = obj.vlanPriority[b];
							}
							else if(obj.name=="ipSource"){
								ipSource = String(obj.ipSource[b]);
							}
							else if(obj.name=="ipDestination"){
								ipDestination = String(obj.ipDestination[b]);	
							}
							else if(obj.name=="tos"){
								tos = obj.TOS[b];											
							}
							else if(obj.name=="ethtype"){
								ethtype = obj.ethType[b];											
							}
							else if(obj.name=="protocol"){
								protocol = obj.protocol[b];											
							}
							else if(obj.name=="setVLANPriority"){
								setVLANPriority = obj.setVLANPriority[b];													
							}
							else if(obj.name=="setSourcePort"){
								setSourcePort = obj.setSourcePort[b];
							}
							else if(obj.name=="setDestinationPort"){
								setDestinationPort = obj.setDestinationPort[b];	
							}
							else if(obj.name=="setVlanID"){
								setVlanID = String(obj.setVlanID[b]);	
							}
							else if(obj.name=="setIPSource"){
								setIPSource = String(obj.setIPSource[b]);													
							}
							else if(obj.name=="setIPDestination"){
								setIPDestination = String(obj.setIPDestination[b]);
							}
							else if(obj.name=="setMACSource"){
								setMACSource = String(obj.setMACSource[b]);	
							}
							else if(obj.name=="setMACDestination"){
								setMACDestination = String(obj.setMACDestination[b]);	
							}
							else if(obj.name=="setTOS"){
								setTOS = obj.setTOS[b];
							}
							else if(obj.name=="setEnqueue"){
								setEnqueue = obj.setEnqueue[b];
							}
							else if(obj.name=="setStripVlan"){
								setStripVlan = String(obj.setStripVlan[b]);
							}
							else if(obj.name=="setOutput"){
								setOutput = String(obj.setOutput[b]);
							}
							else if(obj.name=="openflowController"){
								var oc:String=obj.openflowController;
							}											
							else if(obj.name=="notes"){
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
									if(ipSource!="undefined"&&ipSource!="0"&&ipSource!=""&&ipSource!="none"&&ipSource!="null" ||
										ipDestination!="undefined"&&ipDestination!="0"&&ipDestination!=""&&ipDestination!="none"&&ipDestination!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.dl_type = 0x0800@@";
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
									if(macSource!=""&&macSource!="none"&&macSource!="null"){
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
									if(sourcePort!=""&&sourcePort!="null" ||
										destinationPort!=""&&destinationPort!="null"){
										counter++;
										sh2 = "flow"+b+"msg.match.nw_proto = 6@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(sourcePort!=""&&sourcePort!="null"&&sourcePort!=null){
										counter++;
										sh2 = "flow"+b+"msg.match.tp_src = "+sourcePort+"@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(destinationPort!=""&&destinationPort!="null"&&destinationPort!=null){
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
									if(setEnqueue!=""){
										counter++;
										sh2="flow"+b+"enqueue = of.ofp_action_enqueue (enqueue = "+setEnqueue+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);											
									}
									if(setSourcePort!=""){
										counter++;
										sh2="flow"+b+"srcPort = of.ofp_action_tp_port.set_src = (tp_port = "+setSourcePort+")@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(setDestinationPort!=""){
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
									sh2 = "        path = '/wm/staticflowpusher/json'@@";
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
										sh2 = "    \"in_port\":"+"\""+ingressPort+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(macSource!="undefined"&&macSource!="0"&&macSource!=""&&macSource!="none"&&macSource!="null"){
										counter++;
										sh2 = "    \"eth_src\":"+"\""+macSource+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(macDestination!="undefined"&&macDestination!="0"&&macDestination!=""&&macDestination!="none"&&macDestination!="null"){
										counter++;
										sh2 = "    \"eth_dst\":"+"\""+macDestination+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(vlanID!="undefined"&&vlanID!="0"&&vlanID!=""&&vlanID!="null"&&vlanID!="no"&&vlanID!="none"){
										counter++;
										sh2 = "    \"eth_vlan_vid\":"+"\""+vlanID+"\""+",@@";
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
										sh2 = "    \"eth_type\":"+"\""+ethtype+"\""+",@@";
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
									if(ipSource!="undefined"&&ipSource!="0"&&ipSource!=""&&ipSource!="none"&&ipSource!=null&&ipSource!="null"){
										counter++;
										sh2 = "    \"ipv4_src\":"+"\""+ipSource+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(ipDestination!="undefined"&&ipDestination!="0"&&ipDestination!=""&&ipDestination!="none"&&ipDestination!=null&&ipDestination!="null"){
										counter++;
										sh2 = "    \"ipv4_dst\":"+"\""+ipDestination+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}											
									if(sourcePort!="undefined"&&sourcePort!="0"&&sourcePort!=""&&sourcePort!=null){
										counter++;
										sh2 = "    \"tp_src\":"+"\""+sourcePort+"\""+",@@";
										objeto_openflow_controller=sh2;
										temp_openflow_controller.addItem(objeto_openflow_controller);
									}
									if(destinationPort!="undefined"&&destinationPort!="0"&&destinationPort!=""&&destinationPort!=null){
										counter++;
										sh2 = "    \"tp_dst\":"+"\""+destinationPort+"\""+",@@";
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
										sh2=sh2.concat("set_vlan_vid="+setVlanID+",");
									}
									if(setSourcePort!="undefined"&&setSourcePort!="0"&&setSourcePort!=""){
										sh2=sh2.concat("set_tp_src="+setSourcePort+",");
									}
									if(setDestinationPort!="undefined"&&setDestinationPort!="0"&&setDestinationPort!=""){
										sh2=sh2.concat("set_tp_dst="+setDestinationPort+",");
									}												
									if(setIPSource!="undefined"&&setIPSource!="0"&&setIPSource!=""&&setIPSource!="none"&&setIPSource!="null"){
										sh2=sh2.concat("set_ipv4_src="+setIPSource+",");
									}
									if(setIPDestination!="undefined"&&setIPDestination!="0"&&setIPDestination!=""&&setIPDestination!="none"&&setIPDestination!="null"){
										sh2=sh2.concat("set_ipv4_dst="+setIPDestination+",");
									}
									if(setMACSource!="undefined"&&setMACSource!="0"&&setMACSource!=""&&setMACSource!="none"&&setMACSource!="null"){
										sh2=sh2.concat("set_eth_src="+setMACSource+",");
									}
									if(setMACDestination!="undefined"&&setMACDestination!="0"&&setMACDestination!=""&&setMACDestination!="none"&&setMACDestination!="null"){
										sh2=sh2.concat("set_eth_dst="+setMACDestination+",");
									}		
									if(setTOS!="undefined"&&setTOS!="0"&&setTOS!=""&&setTOS!="null"){
										sh2=sh2.concat("set_ip_tos="+setTOS+",");
									}	
									if(setEnqueue!="undefined"&&setEnqueue!="0"&&setEnqueue!=""){
										sh2=sh2.concat("enqueue="+setEnqueue+",");													
									}
									if(setStripVlan=="yes"){
										sh2=sh2.concat("strip_vlan"+",");													
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
		chave = "controllerCode"+String(numeroRan);
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