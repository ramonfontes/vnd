// ActionScript file
private function exportFile():void{
      	xml = <root></root>;
        for(var i:int=0;i<cc.numChildren;i++){
        var UIob:Object= cc.getChildAt(i) ;
         if(UIob.className=='domain'){
         var xmlLi:XML = <domain></domain>;
         var xmlList:XMLList = XMLList("<id>"+UIob._id+"</id>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<active>"+UIob._active+"</active>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<name>"+UIob._name+"</name>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<notes>"+UIob.notes+"</notes>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<bandwidth>"+UIob.bandwidth+"</bandwidth>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<delay>"+UIob.delay+"</delay>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<loss>"+UIob.loss+"</loss>");
         xmlLi.appendChild(xmlList); 
         xml.appendChild(xmlLi);         
         }
         
         else if(UIob.className=='BasicLine'){
         var xmlLi:XML = <link></link>;
         var xmlList:XMLList = XMLList("<id>"+UIob._id+"</id>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<active>"+UIob._active+"</active>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<name>"+UIob._name+"</name>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<notes>"+UIob.notes+"</notes>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<type>"+UIob.type+"</type>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<delay>"+UIob.delay+"</delay>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<loss>"+UIob.loss+"</loss>");
         xmlLi.appendChild(xmlList); 
         var xmlList:XMLList = XMLList("<jitter>"+UIob.jitter+"</jitter>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<source>"+UIob.source+"</source>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<destination>"+UIob.destination+"</destination>");
         xmlLi.appendChild(xmlList); 
         xml.appendChild(xmlLi);         
         }
         
         
         else if(UIob.className=='com'){
         var xmlLi:XML = <computer></computer>;
         var xmlList:XMLList = XMLList("<id>"+UIob._id+"</id>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<active>"+UIob._active+"</active>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<name>"+UIob._name+"</name>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<notes>"+UIob.notes+"</notes>");
         xmlLi.appendChild(xmlList);
         
          var xmlLi2:XML = <applications></applications>;
          var xmlLi21:XML = <application1></application1>;
          var xmlList:XMLList = XMLList("<id>"+UIob.application1_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<role>"+UIob.application1_role+"</role>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<packetsize>"+UIob.application1_packetsize+"</packetsize>");
              xmlLi21.appendChild(xmlList); 
         xmlLi2.appendChild(xmlLi21); 
          var xmlLi21:XML = <application2></application2>;
          var xmlList:XMLList = XMLList("<id>"+UIob.application2_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<role>"+UIob.application2_role+"</role>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<packetsize>"+UIob.application2_packetsize+"</packetsize>");
              xmlLi21.appendChild(xmlList);
         xmlLi2.appendChild(xmlLi21); 
         xmlLi.appendChild(xmlLi2);
         
         var xmlLi3:XML = <protocols></protocols>;
          var xmlLi21:XML = <protocol1></protocol1>;
          var xmlList:XMLList = XMLList("<id>"+UIob.protocol1_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<active>"+UIob.protocol1_active+"</active>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<name>"+UIob.protocol1_name+"</name>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<tcpiplayer>"+UIob.protocol1_tcpiplayer+"</tcpiplayer>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<isolayer>"+UIob.protocol1_isolayer+"</isolayer>");
              xmlLi21.appendChild(xmlList); 
         xmlLi3.appendChild(xmlLi21); 
          var xmlLi21:XML = <protocol2></protocol2>;
          var xmlList:XMLList = XMLList("<id>"+UIob.protocol2_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<active>"+UIob.protocol2_active+"</active>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<name>"+UIob.protocol2_name+"</name>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<tcpiplayer>"+UIob.protocol2_tcpiplayer+"</tcpiplayer>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<isolayer>"+UIob.protocol2_isolayer+"</isolayer>");
              xmlLi21.appendChild(xmlList); 
         xmlLi3.appendChild(xmlLi21); 
         xmlLi.appendChild(xmlLi3);
         
         var xmlLi4:XML = <interfaces></interfaces>;
          var xmlLi21:XML = <interface1></interface1>;
          var xmlList:XMLList = XMLList("<id>"+UIob.interface1_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<linked_to>"+UIob.interface1_linked_to+"</linked_to>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<bandwidth>"+UIob.interface1_bandwidth+"</bandwidth>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<delay>"+UIob.interface1_delay+"</delay>");
              xmlLi21.appendChild(xmlList);
              
         xmlLi4.appendChild(xmlLi21); 
          
          var xmlLi21:XML = <interface2></interface2>;
          var xmlList:XMLList = XMLList("<id>"+UIob.interface2_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<linked_to>"+UIob.interface2_linked_to+"</linked_to>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<bandwidth>"+UIob.interface2_bandwidth+"</bandwidth>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<delay>"+UIob.interface2_delay+"</delay>");
              xmlLi21.appendChild(xmlList);
              
         xmlLi4.appendChild(xmlLi21); 
         xmlLi.appendChild(xmlLi4);
         
         xml.appendChild(xmlLi); 
         	
         }
         
         else if(UIob.className=='node'){
         var xmlLi:XML = <node></node>;
         var xmlList:XMLList = XMLList("<id>"+UIob._id+"</id>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<active>"+UIob._active+"</active>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<name>"+UIob._name+"</name>");
         xmlLi.appendChild(xmlList);
         var xmlList:XMLList = XMLList("<notes>"+UIob.notes+"</notes>");
         xmlLi.appendChild(xmlList);
         
          var xmlLi2:XML = <applications></applications>;
          var xmlLi21:XML = <application1></application1>;
          var xmlList:XMLList = XMLList("<id>"+UIob.application1_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<role>"+UIob.application1_role+"</role>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<packetsize>"+UIob.application1_packetsize+"</packetsize>");
              xmlLi21.appendChild(xmlList); 
         xmlLi2.appendChild(xmlLi21); 
          var xmlLi21:XML = <application2></application2>;
          var xmlList:XMLList = XMLList("<id>"+UIob.application2_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<role>"+UIob.application2_role+"</role>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<packetsize>"+UIob.application2_packetsize+"</packetsize>");
              xmlLi21.appendChild(xmlList);
         xmlLi2.appendChild(xmlLi21); 
         xmlLi.appendChild(xmlLi2);
         
         var xmlLi3:XML = <protocols></protocols>;
          var xmlLi21:XML = <protocol1></protocol1>;
          var xmlList:XMLList = XMLList("<id>"+UIob.protocol1_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<active>"+UIob.protocol1_active+"</active>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<name>"+UIob.protocol1_name+"</name>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<tcpiplayer>"+UIob.protocol1_tcpiplayer+"</tcpiplayer>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<isolayer>"+UIob.protocol1_isolayer+"</isolayer>");
              xmlLi21.appendChild(xmlList); 
         xmlLi3.appendChild(xmlLi21); 
          var xmlLi21:XML = <protocol2></protocol2>;
          var xmlList:XMLList = XMLList("<id>"+UIob.protocol2_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<active>"+UIob.protocol2_active+"</active>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<name>"+UIob.protocol2_name+"</name>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<tcpiplayer>"+UIob.protocol2_tcpiplayer+"</tcpiplayer>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<isolayer>"+UIob.protocol2_isolayer+"</isolayer>");
              xmlLi21.appendChild(xmlList); 
         xmlLi3.appendChild(xmlLi21); 
         xmlLi.appendChild(xmlLi3);
         
         var xmlLi4:XML = <interfaces></interfaces>;
          var xmlLi21:XML = <interface1></interface1>;
          var xmlList:XMLList = XMLList("<id>"+UIob.interface1_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<linked_to>"+UIob.interface1_linked_to+"</linked_to>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<bandwidth>"+UIob.interface1_bandwidth+"</bandwidth>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<delay>"+UIob.interface1_delay+"</delay>");
              xmlLi21.appendChild(xmlList);
              
         xmlLi4.appendChild(xmlLi21); 
          
          var xmlLi21:XML = <interface2></interface2>;
          var xmlList:XMLList = XMLList("<id>"+UIob.interface2_id+"</id>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<linked_to>"+UIob.interface2_linked_to+"</linked_to>");
              xmlLi21.appendChild(xmlList);
          var xmlList:XMLList = XMLList("<bandwidth>"+UIob.interface2_bandwidth+"</bandwidth>");
              xmlLi21.appendChild(xmlList);
              var xmlList:XMLList = XMLList("<delay>"+UIob.interface2_delay+"</delay>");
              xmlLi21.appendChild(xmlList);
              
         xmlLi4.appendChild(xmlLi21); 
         xmlLi.appendChild(xmlLi4);
         
         xml.appendChild(xmlLi); 
         	
         }		
        }
     
      createxml.send();
   
      fileRef = new FileReference();
          fileRef.addEventListener(Event.COMPLETE, SaveToLocalMachineResult);
          fileRef.addEventListener(ProgressEvent.PROGRESS, downloading_progress);
          var request:URLRequest = new URLRequest('output.xml');
           fileRef.download(request);  
           // Alert.show( 'download'); 
      }