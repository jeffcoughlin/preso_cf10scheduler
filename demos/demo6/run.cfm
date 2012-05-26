<cfsetting enablecfoutputonly="true" />

<!--- Resume Tasks --->
<cfschedule 
	action="run" 
	task="demo6-t1"
	group="group6"
	mode="application"
  />
	
<cfoutput>
	Task Running...
</cfoutput>

<cfsetting enablecfoutputonly="false" />