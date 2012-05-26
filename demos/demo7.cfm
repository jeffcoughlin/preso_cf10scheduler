<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 7: Use Cases (CPU Monitoring)</h1>
  </div>
	<div class="row">
		<div class="span2">
			<h2>Current CPU</h2>
			<div id="gauge" class="ui-corner-all"></div>
		</div>
		<div class="span10">
			<h2>Log Data:</h2>
			<div style="padding: 5px;">
				<div id="logview" class="ui-corner-all" style="margin-bottom: 1em; overflow: auto; height: 400px; width: 100%;"></div>
			</div>
		</div>
		<div class="span2">
			<button id="cmdStartLoop" class="btn btn-primary">Start</button>
			<button id="cmdStopLoop" class="btn btn-secondary">Stop</button>
		</div>
		<div class="span3">
			<button id="cmdDemo7Create" class="btn btn-default">Create Tasks</button> | 
			<button id="cmdResetLog" class="btn btn-danger">Reset Log</button>
		</div>
		<div class="span7 pull-right">
			<button id="cmdDemo7Pause" class="btn btn-default">Pause Tasks</button>
			<button id="cmdDemo7Resume" class="btn btn-default">Resume Tasks</button> | 
			<button id="cmdResumeAll" class="btn btn-default">Resume ALL Tasks</button>
			<button id="cmdPauseAll" class="btn btn-default">Pause ALL Tasks</button>
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
			<ul>
				<li>Click "Create Task" to create 2 tasks in the same group (set to run every 2 seconds - starting now).</li>
				<li>Click "Start" to start an infinite loop. The processor goes into high usage, so we tell the scheduled task group to pause.</li>
				<li>Click "Stop". The processor goes into normal usage so the scheduled task group is set to resume.</li>
				<li>Assuming you haven't deleted the tasks from demo 3, click "Resume ALL Tasks" to resume all the recurring tasks in this application.
					<ul>
						<li>You can also change the code in pauseall.cfm/resumeall.cfm and set the mode to "server" to pause/resume all server-level tasks.</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=demo6" class="btn btn-info">&lt; Demo 6</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />