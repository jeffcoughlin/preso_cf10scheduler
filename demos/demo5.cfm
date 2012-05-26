<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 5: List tasks (by server/application)</h1>
  </div>
	<div class="row">
		<div class="span12">
			<cfschedule
				action="list"
				result="qTasks"
				mode="application"
				/>
			<cfdump var="#qTasks#" />
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
				<ul>
					<li>Assuming you haven't deleted the tasks for this application, you should see them listed here.  If you have deleted them, run demos 3 and/or 4 to re-populate the data.</li>
					<li>Notice that you don't see any of the tasks form demos 1 and 2. That is because we set the mode to only show tasks in this specific application and the tasks for demos 1 and 2 were set at the server level. To see those tasks listed here, edit this file (demo5.cfm) and change the mode to "server".</li>
				</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=demo4" class="btn btn-info">&lt; Demo 4</a> | 
		<a href="index.cfm?file=demo6" class="btn btn-info">Demo 6 &gt;</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />