package{
	import mx.collections.ArrayCollection;
	
	[RemoteClass]
  	public class UserPrefs {
   	
		public var xx:int;
	    public var yy:int;
	    public var lineLength:int;
		public var lineHeight:int;
		public var name:String;
		public var type:String;
		public var isLine:Boolean;
		public var savingUIobject:Object;
		public var linesStartingArray:Array;
		public var linesEndingArray:Array;
		public var objLine:String;
	    
      	public function UserPrefs() {
      		this.linesEndingArray=new Array();
	    	this.linesStartingArray=new Array();
	   }
	}
}