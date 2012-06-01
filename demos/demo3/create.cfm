<cfsetting enablecfoutputonly="true" />

<!--- CREATE First Task --->
<cfschedule 
	action="update" 
	task="demo3-t1" 
	group="group3" 
	mode="application" 
	interval="2" 
	startdate="#now()#"
	starttime="#now()#" 
	url="#application.url.full#/demos/demo3/task1.cfm"
	/ >

<!--- CREATE Second Task --->
<cfschedule 
	action="update" 
	task="demo3-t2" 
	group="group3" 
	mode="application" 
	interval="2" 
	startdate="#now()#"
	starttime="#now()#" 
	url="#application.url.full#/demos/demo3/task2.cfm"
	/ >
	
	<cfoutput>
		Tasks created and running...
	</cfoutput>

<cfsetting enablecfoutputonly="false" />