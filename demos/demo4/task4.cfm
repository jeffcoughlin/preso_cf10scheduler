<!--- First, log the task --->
<cflog text="Group: group4, Task 4" file="#application.log["filename"]#" />

<!--- Then cause a delay (to help demo the pause of a group+chain) --->
<cfset sleep(3000) />