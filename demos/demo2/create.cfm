<cfsetting enablecfoutputonly="true" />

<!--- Set starttime to 3 seconds from now --->
<cfset starttime = timeFormat(DateAdd('s', 3, now()),'hh:mm:ss tt') />

<!--- CREATE/UPDATE a Scheduled Task --->
<cfschedule 
	action="update" 
	task="demo2-t1" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#" 
	url="#application.url.full#/demos/demo2/task1.cfm"
	/>

	<cfoutput>
		Tasks created...
	</cfoutput>

<cfsetting enablecfoutputonly="false" />