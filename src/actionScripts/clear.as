public function clear():void{ 
	 dropCanvas.removeAllChildren();
     undoRedoDescriptor=-1;
     undostepsArray.removeAll();
     undostepsArray.refresh();
     firsTime=true;
     temaplateArrcol.removeAll();
     viewsarray.removeAll();
     setNetworkTree();
     setViewTree();
     focusobject=null;
     numberOfNodes=0;
     ViewNumber=0;
	 
	 
	 countNumber3=1;
	 countNumber1=1;
	 arrayContIfacesCheck=[];
	 contSwitch=670;
	 getValueListenPort=[];
	 getValueRouterSSID=[]
	 getValueStationSSID=[]
	 getValueSignalRange=[]
	 getValueIPAddress=[];
	 getValueMacAddress=[];
	 getValueSwitchMacAddress=[];
	 source="";
	 isInport=false;
 }
                