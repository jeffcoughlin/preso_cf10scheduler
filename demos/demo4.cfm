<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 4: Chaining</h1>
  </div>
	<div class="row">
		<div class="span12">
			<h2>Log Data:</h2>
			<div style="padding: 5px; margin-bottom: 1em;">
				<div id="logview" class="ui-corner-all" style="overflow: auto; height: 200px; width: 100%;"></div>
			</div>
		</div>
		<div class="span12">
			<button id="cmdDemo4Create" class="btn btn-default">Create Tasks</button> | 
			<button id="cmdDemo4Run" class="btn btn-info">Run Now</button> | 
			<button id="cmdResetLog" class="btn btn-danger">Reset Log</button>
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
				<ul>
					<li>Click "Create Task" above to create 5 chained tasks (set to run in an hour).
						<ul>
							<li>You will not see a confirmation here, but if you check the CF admin you'll see the five new tasks in group4.</li>
						</ul>
					</li>
					<li>Run the task "demo4-t1" from either CF Admin (by running the first task in group 4) or click the "Run Now" button and watch the chain in the logs above.</li>
				</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=demo3" class="btn btn-info">&lt; Demo 3</a> | 
		<a href="index.cfm?file=demo5" class="btn btn-info">Demo 5 &gt;</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />