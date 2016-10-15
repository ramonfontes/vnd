import mx.controls.Alert;

public function saveFile():void{
	saveXml=<root/>;
	for(var i:int=0;i<dropCanvas.numChildren;i++){
		if((dropCanvas.getChildAt(i) as Object).className=='objects'){
			var UIob:objects=dropCanvas.getChildAt(i) as objects;
			var ob:objects=UIob as objects;		
			var x:int;
			var object:XML = <objects></objects>;
			var xmlList:XMLList = XMLList("<type>nodes</type>");
			object.appendChild(xmlList);
			xmlList = XMLList("<id>"+UIob.id+"</id>");
			object.appendChild(xmlList);
			xmlList = XMLList("<name>"+UIob.name+"</name>");
			object.appendChild(xmlList);
			xmlList = XMLList("<image>"+UIob.img+"</image>");
			object.appendChild(xmlList);
			xmlList = XMLList("<x>"+UIob.x+"</x>");
			object.appendChild(xmlList); 
			xmlList = XMLList("<y>"+UIob.y+"</y>");
			object.appendChild(xmlList);
			for(var j:int=0;j<UIob.objparaArrayCol.length;j++){
				var par:XML = <par></par>;
				xmlList = XMLList("<name>"+UIob.objparaArrayCol[j].name+"</name>");
				par.appendChild(xmlList);
				xmlList = XMLList("<type>"+UIob.objparaArrayCol[j].id+"</type>");
				par.appendChild(xmlList);
				if(UIob.objparaArrayCol[j].id=='options'){
					for(var oo:int=0;oo<UIob.objparaArrayCol[j].option.length;oo++){
						var parOption:XMLList =XMLList("<option>"+UIob.objparaArrayCol[j].option[oo].toString()+"</option>");	
						par.appendChild(parOption);
					}
				}
				object.appendChild(par);
			}
			for(var k:int=0;k<UIob.valueObjArr.length;k++){
				if(UIob.id=="Controller"){
					x = int(UIob.nid);
					for(var c:int=0;c<(ob.objparaArrayCol.length);c++){
							var obj:objParameter=ob.objparaArrayCol[c] as objParameter;
							var canew:String = String(obj.arrayFlowName);
							if(canew!="")
								intnew = int(obj.arrayFlowName[x].length);		
							
							if(UIob.valueObjArr[k].id==obj.name){
							if(intnew>0){							
								for(var a:int=0;a<intnew;a++){
									par = <valueObjArr></valueObjArr>;
									xmlList = XMLList("<id>"+UIob.valueObjArr[k].id+"</id>");
									par.appendChild(xmlList);
								
								if(obj.name=="controllerIPAddress"){
									xmlList = XMLList("<name>"+obj.controllerIPAddress+"</name>");
									par.appendChild(xmlList);										
								}
								else if(obj.name=="controllerPort"){
									xmlList = XMLList("<name>"+obj.controllerPort+"</name>");
									par.appendChild(xmlList);		
								}
								else if(obj.name=="remoteLocal"){
									xmlList = XMLList("<name>"+obj.isRemote+"</name>");
									par.appendChild(xmlList);		
								}
								else if(obj.name=="openflowController"){
									xmlList = XMLList("<name>"+obj.openflowController+"</name>");
									par.appendChild(xmlList);		
								}
								else if(obj.name=="flowName"){
									xmlList = XMLList("<name>"+obj.arrayFlowName[x][a]+"</name>");
									par.appendChild(xmlList);
								}
								else if(obj.name=="priority"){
									xmlList = XMLList("<name>"+obj.arrayPriority[x][a]+"</name>");
									par.appendChild(xmlList);
								}
								else if(obj.name=="macSwitch"){
									xmlList = XMLList("<name>"+obj.arrayMac_Switch[x][a]+"</name>");
									par.appendChild(xmlList);		
								}								
								else if(obj.name=="macSource"){
									xmlList = XMLList("<name>"+obj.arrayMacSource[x][a]+"</name>");
									par.appendChild(xmlList);		
								}
								else if(obj.name=="macDestination"){
									xmlList = XMLList("<name>"+obj.arrayMacDestination[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="ingressPort"){
									xmlList = XMLList("<name>"+obj.arrayIngressPort[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="vlanID"){
									xmlList = XMLList("<name>"+obj.arrayVlanID[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="vlanPriority"){
									xmlList = XMLList("<name>"+obj.arrayVlanPriority[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="ethtype"){
									xmlList = XMLList("<name>"+obj.arrayEthType[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="protocol"){
									xmlList = XMLList("<name>"+obj.arrayProtocol[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="tos"){
									xmlList = XMLList("<name>"+obj.arrayTos[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setIPSource"){
									xmlList = XMLList("<name>"+obj.arraySetIPSource[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setIPDestination"){
									xmlList = XMLList("<name>"+obj.arraySetIPDestination[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setMACSource"){
									xmlList = XMLList("<name>"+obj.arraySetMACSource[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setMACDestination"){
									xmlList = XMLList("<name>"+obj.arraySetMACDestination[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setSourcePort"){
									xmlList = XMLList("<name>"+obj.arraySetSourcePort[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setDestinationPort"){
									xmlList = XMLList("<name>"+obj.arraySetDestinationPort[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setVlanID"){
									xmlList = XMLList("<name>"+obj.arraySetVlanID[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setOutput"){
									xmlList = XMLList("<name>"+obj.arraySetOutput[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setVLANPriority"){
									xmlList = XMLList("<name>"+obj.arrayVlanPriority[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setStripVlan"){
									xmlList = XMLList("<name>"+obj.arraySetStripVlan[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								else if(obj.name=="setEnqueue"){
									xmlList = XMLList("<name>"+obj.arraySetEnqueue[x][a]+"</name>");
									par.appendChild(xmlList);	
								}
								xmlList = XMLList("<haschanged>"+UIob.valueObjArr[k].haschanged.toString()+"</haschanged>");
								par.appendChild(xmlList);
								xmlList = XMLList("<IsCombo>"+UIob.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
								par.appendChild(xmlList);
								xmlList = XMLList("<combeValue>"+UIob.valueObjArr[k].combeValue+"</combeValue>");
								par.appendChild(xmlList);
								object.appendChild(par);								
								}
							}
							else{
								par = <valueObjArr></valueObjArr>;
								xmlList = XMLList("<id>"+UIob.valueObjArr[k].id+"</id>");
								par.appendChild(xmlList);
								
								if(obj.name=="controllerIPAddress"){
									xmlList = XMLList("<name>"+obj.controllerIPAddress+"</name>");
									par.appendChild(xmlList);										
								}
								else if(obj.name=="controllerPort"){
									xmlList = XMLList("<name>"+obj.controllerPort+"</name>");
									par.appendChild(xmlList);		
								}
								else if(obj.name=="remoteLocal"){
									xmlList = XMLList("<name>"+obj.isRemote+"</name>");
									par.appendChild(xmlList);		
								}
								else if(obj.name=="openflowController"){
									xmlList = XMLList("<name>"+obj.openflowController+"</name>");
									par.appendChild(xmlList);		
								}
								xmlList = XMLList("<haschanged>"+UIob.valueObjArr[k].haschanged.toString()+"</haschanged>");
								par.appendChild(xmlList);
								xmlList = XMLList("<IsCombo>"+UIob.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
								par.appendChild(xmlList);
								xmlList = XMLList("<combeValue>"+UIob.valueObjArr[k].combeValue+"</combeValue>");
								par.appendChild(xmlList);
								object.appendChild(par);								
							}
						}
					}				
				}
				else if(UIob.id=="Access Point" || UIob.id=="Switch" || UIob.id=="Station" 
					|| UIob.id=="Car" || UIob.id=="Smartphone" || UIob.id=="Computer"){
					for(c=0;c<(ob.objparaArrayCol.length);c++){
						obj=ob.objparaArrayCol[c] as objParameter;
						
						if(UIob.valueObjArr[k].id==obj.name){
							par = <valueObjArr></valueObjArr>;
							xmlList = XMLList("<id>"+UIob.valueObjArr[k].id+"</id>");
							par.appendChild(xmlList);
							
							if(obj.name=="channel"){
								xmlList = XMLList("<name>"+obj.channel+"</name>");
								par.appendChild(xmlList);										
							}
							else if(obj.name=="IPAddress"){
								xmlList = XMLList("<name>"+obj.IPAddress+"</name>");
								par.appendChild(xmlList);										
							}
							else if(obj.name=="MacAddress"){
								xmlList = XMLList("<name>"+obj.MacAddress+"</name>");
								par.appendChild(xmlList);										
							}
							else if(obj.name=="listeningPort"){
								xmlList = XMLList("<name>"+obj.listenPortSwitch+"</name>");
								par.appendChild(xmlList);										
							}					
							else if(obj.name=="mask"){
								xmlList = XMLList("<name>"+obj.MaskAddress+"</name>");
								par.appendChild(xmlList);		
							}
							else if(obj.name=="mode"){
								xmlList = XMLList("<name>"+obj.mode+"</name>");
								par.appendChild(xmlList);										
							}
							else if(obj.name=="numberofradios"){
								xmlList = XMLList("<name>"+obj.numberofRadios+"</name>");
								par.appendChild(xmlList);		
							}
							else if(obj.name=="ofp_version"){
								xmlList = XMLList("<name>"+obj.openFlowVersion+"</name>");
								par.appendChild(xmlList);										
							}							
							else if(obj.name=="signalRange"){
								xmlList = XMLList("<name>"+obj.range+"</name>");
								par.appendChild(xmlList);		
							}
							else if(obj.name=="switch"){
								xmlList = XMLList("<name>"+obj.switchType+"</name>");
								par.appendChild(xmlList);										
							}
							else if(obj.name=="ssid"){
								xmlList = XMLList("<name>"+obj.ssid+"</name>");
								par.appendChild(xmlList);										
							}
							xmlList = XMLList("<haschanged>"+UIob.valueObjArr[k].haschanged.toString()+"</haschanged>");
							par.appendChild(xmlList);
							xmlList = XMLList("<IsCombo>"+UIob.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
							par.appendChild(xmlList);
							xmlList = XMLList("<combeValue>"+UIob.valueObjArr[k].combeValue+"</combeValue>");
							par.appendChild(xmlList);
							object.appendChild(par);
						}
					}
				}
				else{				
					par = <valueObjArr></valueObjArr>;
					xmlList = XMLList("<id>"+UIob.valueObjArr[k].id+"</id>");
					par.appendChild(xmlList);
					xmlList = XMLList("<name>"+UIob.valueObjArr[k].name+"</name>");
					par.appendChild(xmlList);
					xmlList = XMLList("<haschanged>"+UIob.valueObjArr[k].haschanged.toString()+"</haschanged>");
					par.appendChild(xmlList);
					xmlList = XMLList("<IsCombo>"+UIob.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
					par.appendChild(xmlList);
					xmlList = XMLList("<combeValue>"+UIob.valueObjArr[k].combeValue+"</combeValue>");
					par.appendChild(xmlList);
					object.appendChild(par);
				}
			}
			for(var y:int=0;y<UIob.instancArray.length;y++){
				//var ins:Instances=UIob.instancArray[y] as Instances;
				par = <Instances></Instances>;
				xmlList = XMLList("<id>"+UIob.instancArray[y].id+"</id>");
				par.appendChild(xmlList);
				xmlList = XMLList("<name>"+UIob.instancArray[y].name+"</name>");
				par.appendChild(xmlList);
				
				for(j=0;j<UIob.instancArray[y].objparaArrayCol.length;j++){
					var par1:XML = <par></par>;
					xmlList = XMLList("<name>"+UIob.instancArray[y].objparaArrayCol[j].name+"</name>");
					par1.appendChild(xmlList);
					xmlList = XMLList("<type>"+UIob.instancArray[y].objparaArrayCol[j].id+"</type>");
					par1.appendChild(xmlList);
					if(UIob.instancArray[y].objparaArrayCol[j].id=='options'){
						for(oo=0;oo<UIob.instancArray[y].objparaArrayCol[j].option.length;oo++){
							parOption =XMLList("<option>"+UIob.instancArray[y].objparaArrayCol[j].option[oo].toString()+"</option>");	
							par1.appendChild(parOption);
						}}
					par.appendChild(par1);
				}
				// Alert.show(UIob.instancArray[y].valueObjArr.length.toString());
				for(k=0;k<UIob.instancArray[y].valueObjArr.length;k++){					
					par1 = <valueObjArr></valueObjArr>;
					xmlList = XMLList("<id>"+UIob.instancArray[y].valueObjArr[k].id+"</id>");
					par1.appendChild(xmlList);
					xmlList = XMLList("<name>"+UIob.instancArray[y].valueObjArr[k].name+"</name>");
					par1.appendChild(xmlList);
					xmlList = XMLList("<haschanged>"+UIob.instancArray[y].valueObjArr[k].haschanged.toString()+"</haschanged>");
					par1.appendChild(xmlList);
					xmlList = XMLList("<IsCombo>"+UIob.instancArray[y].valueObjArr[k].IsCombo.toString()+"</IsCombo>");
					par1.appendChild(xmlList);
					xmlList = XMLList("<combeValue>"+UIob.instancArray[y].valueObjArr[k].combeValue+"</combeValue>");
					par1.appendChild(xmlList);
					par.appendChild(par1);					
				}				
				object.appendChild(par); 
			} 
			var xmlLi2:XML = <linesStartingArray></linesStartingArray>;     
			for(var ar:int=0;ar<UIob.linesStartingArray.length;ar++){
				var testname:String=UIob.linesStartingArray[ar].name;
				var testarray:Array=dropCanvas.getChildren();
				var isExist:Boolean=false;
				for(var count:int=0;count<testarray.length;count++){
					if(testname==testarray[count].name){
						isExist=true;
						break;
					}
				}
				if(isExist){	
					xmlList = XMLList("<name>"+UIob.linesStartingArray[ar].name+"</name>");
					xmlLi2.appendChild(xmlList);
				}
			}
			object.appendChild(xmlLi2);
			
			var xmlLi3:XML = <linesEndingArray></linesEndingArray>;     
			for(ar=0;ar<UIob.linesEndingArray.length;ar++){
				testname=UIob.linesEndingArray[ar].name;
				testarray=dropCanvas.getChildren();
				isExist=false;
				for(count=0;count<testarray.length;count++){
					if(testname==testarray[count].name){
						isExist=true;
						break;
					}
				}
				if(isExist){					
					xmlList = XMLList("<name>"+UIob.linesEndingArray[ar].name+"</name>");
					xmlLi3.appendChild(xmlList);
				}
			}
			object.appendChild(xmlLi3); 
		}
		else if((dropCanvas.getChildAt(i) as Object).className=='Link'){
			var UIobLink:Link=dropCanvas.getChildAt(i) as Link;
			
			object = <objects></objects>;
			xmlList = XMLList("<type>links</type>");
			object.appendChild(xmlList);
			xmlList = XMLList("<id>"+UIobLink.id+"</id>");
			object.appendChild(xmlList);
			xmlList = XMLList("<name>"+UIobLink.can.name+"</name>");
			object.appendChild(xmlList);
			xmlList = XMLList("<source>"+UIobLink.can.source.name+"</source>");
			object.appendChild(xmlList);
			xmlList = XMLList("<destination>"+UIobLink.can.destination.name+"</destination>");
			object.appendChild(xmlList);
			xmlList = XMLList("<deviceSourcePort>"+UIobLink.can.sourcePort+"</deviceSourcePort>");
			object.appendChild(xmlList);
			xmlList = XMLList("<deviceDestinationPort>"+UIobLink.can.destinationPort+"</deviceDestinationPort>");
			object.appendChild(xmlList);
			xmlList = XMLList("<lineColor>"+UIobLink.lineColor+"</lineColor>");
			object.appendChild(xmlList);
			xmlList = XMLList("<beginX>"+UIobLink.beginX+"</beginX>");
			object.appendChild(xmlList); 
			xmlList = XMLList("<beginY>"+UIobLink.beginY+"</beginY>");
			object.appendChild(xmlList);
			xmlList = XMLList("<lineLength>"+UIobLink.lineLength+"</lineLength>");
			object.appendChild(xmlList); 
			xmlList = XMLList("<lineHeight>"+UIobLink.lineHeight+"</lineHeight>");
			object.appendChild(xmlList);
			for(j=0;j<UIobLink.can.objparaArrayCol.length;j++){
				par = <par></par>;
				xmlList = XMLList("<name>"+UIobLink.can.objparaArrayCol[j].name+"</name>");
				par.appendChild(xmlList);
				
				if(UIobLink.id=="wireless"){
				}
				else{
					xmlList = XMLList("<type>"+UIobLink.can.objparaArrayCol[j].id+"</type>");
					par.appendChild(xmlList);
				}
				if(UIobLink.can.objparaArrayCol[j].id=='options'){
					for(oo=0;oo<UIobLink.can.objparaArrayCol[j].option.length;oo++){
						parOption =XMLList("<option>"+UIobLink.can.objparaArrayCol[j].option[oo].toString()+"</option>");	
						par.appendChild(parOption);
					}
				}
				object.appendChild(par);
			}
			for(k=0;k<UIobLink.can.valueObjArr.length;k++){
				par = <valueObjArr></valueObjArr>;
				xmlList = XMLList("<id>"+UIobLink.can.valueObjArr[k].id+"</id>");
				par.appendChild(xmlList);
				xmlList = XMLList("<name>"+UIobLink.can.valueObjArr[k].name+"</name>");
				par.appendChild(xmlList);
				xmlList = XMLList("<haschanged>"+UIobLink.can.valueObjArr[k].haschanged.toString()+"</haschanged>");
				par.appendChild(xmlList);
				xmlList = XMLList("<IsCombo>"+UIobLink.can.valueObjArr[k].IsCombo.toString()+"</IsCombo>");
				par.appendChild(xmlList);
				xmlList = XMLList("<combeValue>"+UIobLink.can.valueObjArr[k].combeValue+"</combeValue>");
				par.appendChild(xmlList);
				object.appendChild(par);
			}			
		}
		saveXml.appendChild(object);
		
	}  var templates:XMLList = XMLList("<templates></templates>");
	for(var kk:int=0;kk<temaplateArrcol.length;kk++){
		par = <template></template>;		
		xmlList = XMLList("<name>"+temaplateArrcol[kk]+"</name>");
		par.appendChild(xmlList);
		templates.appendChild(par);
	}
	saveXml.appendChild(templates);
	var numberofnodes:XMLList = XMLList("<numberofnodes>"+numberOfNodes+"</numberofnodes>");
	saveXml.appendChild(numberofnodes); 
	var numberOfInstances:XMLList = XMLList("<numberOfInstances>"+numberOfInstances+"</numberOfInstances>");
	saveXml.appendChild(numberOfInstances); 
	var numberOfViews:XMLList = XMLList("<numberOfViews>"+ViewNumber+"</numberOfViews>");
	saveXml.appendChild(numberOfViews); 
	localXmlservice.send();
	Alert.show("After 'Download' Button appeared you can download file ");
	if(saveBool){
		clear();
		saveBool=false;
	}  
}