<cfsetting enablecfoutputonly="true" />

<!--- Resume Tasks --->
<cfschedule 
	action="run" 
	task="demo4-t1"
	group="group4"
	mode="application"
  />

<cfoutput>
	Tasks Running...
</cfoutput>

<cfsetting enablecfoutputonly="false" />