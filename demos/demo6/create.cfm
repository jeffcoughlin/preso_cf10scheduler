<cfsetting enablecfoutputonly="true" />

<!--- set start time in the past --->
<cfset starttime = timeFormat(DateAdd('s', -3600, now()),'hh:mm:ss tt') />

<!--- CREATE Task --->
<cfschedule 
	action="update" 
	task="demo6-t1"
	group="group6" 
	mode="application" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#"
	eventhandler="#application.eventListener.packagePath#"
	/>
	
	<cfoutput>
		Task created...
	</cfoutput>

<cfsetting enablecfoutputonly="false" />