<cfsetting enablecfoutputonly="true" />

<!--- Delete demo 1 tasks --->
<cftry>
<cfschedule 
	action="delete" 
	task="demo1-t1" 
	mode="server"
	/>
<cfcatch><!--- Silently fail in case some tasks don't exist yet ---></cfcatch>
</cftry>

<!--- Delete demo 2 tasks --->
<cftry>
<cfschedule 
	action="delete" 
	task="demo2-t1" 
	mode="server"
	/>
<cfcatch><!--- Silently fail in case some tasks don't exist yet ---></cfcatch>
</cftry>

<!--- Delete demo 3 tasks --->
<cftry>
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
<cfcatch><!--- Silently fail in case some tasks don't exist yet ---></cfcatch>
</cftry>

<!--- Delete demo 4 tasks --->
<cftry>
<cfschedule 
	action="delete" 
	task="demo4-t1" 
	group="group4" 
	mode="application"
	/>
<cfschedule 
	action="delete" 
	task="demo4-t2" 
	group="group4" 
	mode="application"
	/>
<cfschedule 
	action="delete" 
	task="demo4-t3" 
	group="group4" 
	mode="application"
	/>
<cfschedule 
	action="delete" 
	task="demo4-t4" 
	group="group4" 
	mode="application"
	/>
<cfschedule 
	action="delete" 
	task="demo4-t5" 
	group="group4" 
	mode="application"
	/>
<cfcatch><!--- Silently fail in case some tasks don't exist yet ---></cfcatch>
</cftry>

<!--- Delete demo 6 tasks --->
<cftry>
<cfschedule 
	action="delete" 
	task="demo6-t1" 
	group="group6" 
	mode="application"
	/>
<cfcatch><!--- Silently fail in case some tasks don't exist yet ---></cfcatch>
</cftry>

<!--- Delete demo 7 tasks --->
<cftry>
<cfschedule 
	action="delete" 
	task="demo7-t1" 
	group="group7" 
	mode="application"
	/>
<cfschedule 
	action="delete" 
	task="demo7-t2" 
	group="group7" 
	mode="application"
	/>
<cfcatch><!--- Silently fail in case some tasks don't exist yet ---></cfcatch>
</cftry>


<!--- Clear the demo log --->
<cffile action = "write" 
    file="#application.log["fullPath"]#"
		output=""  
    mode="777" />
<cflog text="New Log" file="#application.log["filename"]#" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demos Reset</h1>
  </div>
	<p class="lead">Log file and tasks have been deleted/reset.</p>
	<br>
</section>
</cfoutput>

<cfsetting enablecfoutputonly="false" />