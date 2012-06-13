# Presentation: Scheduling Services with ColdFusion 10

## About

Slides and demo files from my presentation "Scheduling Services with ColdFusion 10".

## How to

* Must be running ColdFusion 10 Developer or Enterprise
* Edit Application.cfc and modify the values for **url.domain**,  **url.subfolder**, **log.folder** (CF logs folder), and **eventListener.packagePath** as needed for your setup.
    * The CF log folder I have in there by default is set to the default location for a Mac standard install (since that is what I was using when I wrote the demos).  You may need to change it for your setup and/or OS.
    * If you've already run the application and modify these settings afterward, you will need to clear the cached application variables by adding ?reinit=1 to the url.
* Run the pages in your browser and follow the instructions at the bottom of page for each demo.
* You can reset the demo at any time by clicking **Reset Demos** at the top of the page which will delete all of the demo scheduled tasks and the demo log file as well as reinitialize the application (reinit=1).

##Author

Jeff Coughlin
[http://jeffcoughlin.com/blog](http://jeffcoughlin.com/blog)