<cfsetting enablecfoutputonly="true" />

<!--- DELETE Tasks --->
<cfschedule 
	action="delete" 
	task="demo3-t1" 
	group="group3" 
	mode="application"
	/>
	
<cfschedule 
	action="delete" 
	task="demo3-t2" 
	group="group3" 
	mode="application"
	/>

<cfoutput>
	Tasks Deleted!
</cfoutput>

<cfsetting enablecfoutputonly="false" />