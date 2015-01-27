
import mx.collections.ArrayCollection;
import mx.controls.Alert;
[Bindable]
		    public  var Simobj:String;
public function setSimuOnConfig():void{
       	Configurationpanel.removeAllChildren();
       	
       	var Simul:simulation=new simulation();
       	 Simul.name='Simulation_'+(++SimulationNumber);
       	 
       	 Configurationpanel.addChild(Simul);
       	 if(focusobject!=null){
	        focusobject.removeFoc();
	        focusobject=null;}
       }
       
       public function delSimuOnTree():void{
       	if(Simobj!=null){
       		for(var i:int=0;i<dropCanvas.numChildren;i++){ 
       			var ob:Object=dropCanvas.getChildAt(i);
       			var arr:ArrayCollection=ob.simArray;
       			for(var j:int=0;j<arr.length;j++){ 
       				if(Simobj==arr[j].name){
       					ob.simArray.removeItemAt(j);
       					j--;
       				}
       	
       			}
       		}
       		for(var k:int=0;k<SimulationArr.length;k++){
       		if(Simobj==SimulationArr[k].name){
       		  SimulationArr.removeItemAt(k);
       		  k--;
       		  SimulationArr.refresh();
       		}
         }setSimTree();
         Configurationpanel.removeAllChildren();
         }
       else Alert.show('select a simulation');
       }
    
      
        public  function setSim():void {
		  	if(focusobject!=null){
        	Configurationpanel.removeAllChildren();
        	var objSimu:objetcsSimulation=new objetcsSimulation();
         	objSimu.obj=focusobject;
         	Configurationpanel.addChild(objSimu);
         	}
         	else Alert.show('select an object');
    }
    
   
        public function setSimTree():void{
        Configurationpanel.removeAllChildren();
       
         	simulationXml=<simulation name="simulations"></simulation>;  
            var arr:ArrayCollection=SimulationArr;
         	for(var count:int=0;count<arr.length;count++){
         		var temp:XML=XML("<simulation name='"+arr[count].name+"' simulation='"+arr[count].name+"' />");
         	
         	simulationXml.appendChild(temp);
         	}  scenariosXml.replace("simulation",simulationXml);
         		}