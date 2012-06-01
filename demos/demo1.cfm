<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 1: Simple demo 1 (Create from CF Admin)</h1>
  </div>
	<div class="row">
		<div class="span12">
			<h2>Log Data:</h2>
			<div style="padding: 5px; margin-bottom: 1em;">
				<div id="logview" class="ui-corner-all" style="overflow: auto; height: 200px; width: 100%;"></div>
			</div>
		</div>
		<div class="span12">
			<button id="cmdResetLog" class="btn btn-danger">Reset Log</button>
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
			<ul>
				<li>In the Coldfusion administrator, manually Create a Task called "demo1-t1" to start in 1 minute from now with the following URL:
					<ul>
						<li>#application.url.full#/demos/demo1/task1.cfm</li>
					</ul>
				</li>
				<li>Check back here.  When the task has completed, it will update the log which will be displayed here.</li>
			</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=home" class="btn btn-info">&lt; Home</a> | 
		<a href="index.cfm?file=demo2" class="btn btn-info">Demo 2 &gt;</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />