component { 
	this.name = "cf10schedulerdemo";

	/**
	@hint "Runs when a request starts, after the onRequestStart event handler. If you implement this method, it must explicitly call the requested page to process it."
	@TargetPage "Path from the web root to the requested page."
	*/
	public boolean function onApplicationStart() {
		applicationReInit();
		return true;		
	}
	public boolean function onRequestStart(required string TargetPage) {
		param name="url.reinit" default="";
		
		if (len(url.reinit) gt 0 and url.reinit is true){
			applicationReInit();
		}
		return true;		
	}
	/**
	@hint "Reinitializes application variables. Set these values to match your environment."
	*/
	public void function applicationReInit() {
		lock scope="application" timeout="5" type="readonly" {
			application.domain = "presos.scheduler";
			application.log = { "folder"="/Applications/ColdFusion10/cfusion/logs", "filename"="cf10schedulerdemo", "fileextension"="log" };
			application.log["fullPath"] = "#application.log["folder"]#/#application.log["filename"]#.#application.log["fileextension"]#";
			application.runloop = false;
			application.eventListener.packagePath = "demos.eventListener";			
		}  
	}

}