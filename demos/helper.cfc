component {
	remote string function readLog() {
		var data = fileRead("#application.log["fullPath"]#");
		return data;
	}
	remote numeric function readCpu() {
		return getCPUUsage();
	}
	remote void function resetlog(){
		fileWrite(application.log["fullPath"], "");
		writeLog(type="Information", file="#application.log["filename"]#", text="New Log");
	}
	/**
	@hint "Causes an Endless loop until stoploop() is called. Used for high CPU simulation."
	*/
	remote void function startloop() {
		application.runloop = true;
		while (application.runloop is true) {
			// Evil endless loop >=)
		}
		return;
	}
	remote void function stoploop() {
		application.runloop = false;
		return;
	}
}