<cfsetting enablecfoutputonly="true" />

<!--- Pause Tasks --->
<cfschedule 
	action="pauseall" 
	mode="application" />

<cfoutput>
	All Tasks Paused!
</cfoutput>

<cfsetting enablecfoutputonly="false" />