<cfsetting enablecfoutputonly="true" />

<cfoutput>
<section id="demo">
  <div class="page-header">
    <h1>Demo 6: Event Handling</h1>
  </div>
	<div class="row">
		<div class="span12">
			<h2>Log Data:</h2>
			<div style="padding: 5px; margin-bottom: 1em;">
				<div id="logview" class="ui-corner-all" style="overflow: auto; height: 200px; width: 100%;"></div>
			</div>
		</div>
		<div class="span12">
			<button id="cmdDemo6Create" class="btn btn-default">Create Tasks</button> | 
			<button id="cmdDemo6Run" class="btn btn-info">Run Now</button> | 
			<button id="cmdResetLog" class="btn btn-danger">Reset Log</button>
		</div>
	</div>
  <div class="page-header">
		<h1>Instructions</h1>
  </div>
	<div class="row">
		<div class="span12">
				<ul>
					<li>Click "Create Task" above to create a task through an event handler.
						<ul>
							<li>Note: You will see a <b>misfire</b> because we are setting a one-time event to run in the past.</li>
						</ul>
					</li>
					<li>Click "Run Now" and watch as each respective method is called.
						<ul>
							<li>To see the methods, see the eventListener.cfc file.</li>
						</ul>
					</li>
				</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="pull-right">
		<a href="index.cfm?file=demo5" class="btn btn-info">&lt; Demo 5</a> | 
		<a href="index.cfm?file=demo7" class="btn btn-info">Demo 7 &gt;</a>
		<br><br>
		<p class="pull-right"><a href="##">Back to top</a></p>
	</div>
</footer>
</cfoutput>

<cfsetting enablecfoutputonly="false" />