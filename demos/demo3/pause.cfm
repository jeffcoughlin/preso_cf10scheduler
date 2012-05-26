<cfsetting enablecfoutputonly="true" />

<!--- Pause Tasks --->
<cfschedule 
	action="pause" 
	group="group3" 
	mode="application" />

<cfoutput>
	Tasks Paused!
</cfoutput>

<cfsetting enablecfoutputonly="false" />