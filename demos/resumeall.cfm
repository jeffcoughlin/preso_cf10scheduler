<cfsetting enablecfoutputonly="true" />

<!--- Resume Tasks --->
<cfschedule 
	action="resumeall" 
	mode="application" />

<cfoutput>
	All Tasks Resuming...
</cfoutput>

<cfsetting enablecfoutputonly="false" />