<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 2: Simple demo 2 (Create from code)</h1>
  </div>
	<div class="row">
		<div class="span12">
			<h2>Log Data:</h2>
			<div style="padding: 5px; margin-bottom: 1em;">
				<div id="logview" class="ui-corner-all" style="overflow: auto; height: 200px; width: 100%;"></div>
			</div>
		</div>
		<div class="span12">
			<button id="cmdDemo2Create" class="btn btn-default">Create Task</button>
			<button id="cmdResetLog" class="btn btn-danger">Reset Log</button>
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
			<ul>
				<li>Click "Create Task" above to set the task to run in 3 seconds.</li>
			</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=demo1" class="btn btn-info">&lt; Demo 1</a> | 
		<a href="index.cfm?file=demo3" class="btn btn-info">Demo 3 &gt;</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />