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
	 listqosScenarioMaxRate="";
	 listqosScenarioMinRate="";
	 listqosMaxRate = [];
	 listqosMinRate = [];
	 listqosInterface = [];
	 listqosqosName = [];				
	 listqosSwitch = [];
	 listqosService = [];
	 listqosQueue = [];
	 listqosEnqueuePort = [];
	 listqosPriority = [];
	 listqosProtocol = [];
	 listqosEthType = [];
	 listqosIngressPort = [];
	 listqosSourceIP = [];
	 listqosDestinationIP = [];
	 listqosTos = [];
	 listqosVlanID = [];
	 listqosEthSource = [];
	 listqosEthDestination = [];
	 listqosSourcePort = [];
	 listqosDestinationPort = [];
	 listQueueName = [];
	 qoscont=0;
	 queuecont=0;
	 countNumber1=1;
	 arrayContIfacesCheck=[];
	 contSwitch=0;
	 contComputer=0;			
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
                