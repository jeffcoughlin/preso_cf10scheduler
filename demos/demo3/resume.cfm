<cfsetting enablecfoutputonly="true" />

<!--- Resume Tasks --->
<cfschedule 
	action="resume" 
	group="group3" 
	mode="application" />

<cfoutput>
	Tasks Resuming...
</cfoutput>

<cfsetting enablecfoutputonly="false" />