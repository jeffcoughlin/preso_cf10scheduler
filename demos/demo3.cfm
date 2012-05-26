<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 3: Grouping, deleting, pause/resume</h1>
  </div>
	<div class="row">
		<div class="span12">
			<h2>Log Data:</h2>
			<div style="padding: 5px; margin-bottom: 1em;">
				<div id="logview" class="ui-corner-all" style="overflow: auto; height: 200px; width: 100%;"></div>
			</div>
		</div>
		<div class="span12">
			<button id="cmdDemo3Create" class="btn btn-default">Create Tasks</button> | 
			<button id="cmdDemo3Pause" class="btn btn-primary">Pause Tasks</button>
			<button id="cmdDemo3Resume" class="btn btn-primary">Resume Tasks</button> | 
			<button id="cmdDemo3Delete" class="btn btn-default">Delete Tasks</button> | 
			<button id="cmdResetLog" class="btn btn-danger">Reset Log</button>
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
				<ul>
					<li>Click "Create Task" to create 2 tasks in the same group (set to run every 2 seconds - starting now).</li>
					<li>Pause all the tasks in the group.</li>
					<li>Resume all the tasks in the group.</li>
					<li>Delete tasks just in this group.</li>
				</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=demo2" class="btn btn-info">&lt; Demo 2</a> | 
		<a href="index.cfm?file=demo4" class="btn btn-info">Demo 4 &gt;</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />