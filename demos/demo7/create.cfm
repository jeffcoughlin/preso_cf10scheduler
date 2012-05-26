<cfsetting enablecfoutputonly="true" />

<!--- CREATE First Task --->
<cfschedule 
	action="update" 
	task="demo7-t1" 
	group="group7" 
	mode="application" 
	interval="2" 
	startdate="#now()#"
	starttime="#now()#" 
	url="http://#application.domain#/demos/demo7/task1.cfm"
	/ >

<!--- CREATE Second Task --->
<cfschedule 
	action="update" 
	task="demo7-t2" 
	group="group7" 
	mode="application" 
	interval="2" 
	startdate="#now()#"
	starttime="#now()#" 
	url="http://#application.domain#/demos/demo7/task2.cfm"
	/ >
	
	<cfoutput>
		Tasks created and running...
	</cfoutput>

<cfsetting enablecfoutputonly="false" />