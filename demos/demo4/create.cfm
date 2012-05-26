<cfsetting enablecfoutputonly="true" />

<!--- set start time in the future --->
<cfset starttime = timeFormat(DateAdd('s', 3600, now()),'hh:mm:ss tt') />

<!--- CREATE Tasks --->
<cfschedule 
	action="update" 
	task="demo4-t1" 
	group="group4" 
	mode="application" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#" 
	url="http://#application.domain#/demos/demo4/task1.cfm"
	onComplete="demo4-t2:group4:application"
	/>
	
<cfschedule 
	action="update" 
	task="demo4-t2" 
	group="group4" 
	mode="application" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#" 
	url="http://#application.domain#/demos/demo4/task2.cfm"
	onComplete="demo4-t3:group4:application"
	/>
	
<cfschedule 
	action="update" 
	task="demo4-t3" 
	group="group4" 
	mode="application" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#" 
	url="http://#application.domain#/demos/demo4/task3.cfm"
	onComplete="demo4-t4:group4:application"
	/>
	
<cfschedule 
	action="update" 
	task="demo4-t4" 
	group="group4" 
	mode="application" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#" 
	url="http://#application.domain#/demos/demo4/task4.cfm"
	onComplete="demo4-t5:group4:application"
	/>

<cfschedule 
	action="update" 
	task="demo4-t5" 
	group="group4" 
	mode="application" 
	interval="once" 
	startdate="#now()#" 
	starttime="#starttime#" 
	url="http://#application.domain#/demos/demo4/task5.cfm"
	/>

	<cfoutput>
		Tasks created...
	</cfoutput>

<cfsetting enablecfoutputonly="false" />