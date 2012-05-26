 <cfcomponent implements="cfide.scheduler.ITaskEventHandler">

	<cffunction name="onTaskStart" access="public" returntype="void">
		<cfargument name="context" type="struct" required="false"/>
	
		<cflog text="#arguments.context.task# - onTaskStart" file="#application.log["filename"]#" />
	</cffunction>
	
	<cffunction name="onTaskEnd" access="public" returntype="void">
		<cfargument name="context" type="struct" required="false"/>
	
		<cflog text="#arguments.context.task# - onTaskEnd" file="#application.log["filename"]#" />
	</cffunction>
	
	<cffunction name="onMisfire" returntype="void">
		<cfargument name="context" type="struct" required="false"/>

		<!--- Note: When creating task 6, it will likely misfire because it is being set in the past (which is considered a fail, although still valid) --->
		<cflog text="#arguments.context.task# - Misfire" file="#application.log["filename"]#" />
	</cffunction>
	
	<cffunction name="onError" returntype="void">
		<cfargument name="context" type="struct" required="false"/>
	
		<cflog text="#arguments.context.task# - ERROR!!" file="#application.log["filename"]#" />
	</cffunction>
	
	<cffunction name="execute" returntype="void">
		<cfargument name="context" type="struct" required="false"/>

		<cflog text="#arguments.context.task# - Complete" file="#application.log["filename"]#" />
	</cffunction>
	
</cfcomponent>