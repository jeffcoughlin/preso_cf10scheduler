<cfsetting enablecfoutputonly="true" />

<!--- Pause Tasks --->
<cfschedule 
	action="pause" 
	group="group7" 
	mode="application" />

<cfoutput>
	Tasks Paused!
</cfoutput>

<cfsetting enablecfoutputonly="false" />