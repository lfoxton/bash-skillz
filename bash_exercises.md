EXERCISES

Bash one-liner exercises
========================

(1) What are YOUR favourite bash commands?
	
	(1a) Use bash commands to list your 10 most recent commands, then your 10 oldest commands in your history
	
	(1b) Use the history and other chained commands to print all distinct commands in your shell history

	(1c) HARDER: List the 15 most common commands that you use


Log Analysis
============

For these exercises, please use the splendia log files provided

(1) Logger INFO analysis

	(1a) Output how many times the sync job started. Sample: inventoryJob' running...

	(1b) Output how many times dates were marked as synchronized. Sample: "Synchronized dates: optimisticLock=[2015-04-21 23:59:44], dates=[2015-05-10, ]"

	(1c) HARDER: Output the full count of hoteliers that have been synchronized today. Sample: 'Hotelier ............: [5511, 6071]'


(2) Logger ERROR analysis

	(2a) Follow a single ERROR thread accross all files using the thread identifier (what is this?)

	(2b) Given a single log file, find all line occurences of the word ERROR between 2 9am and 10am

	(2c) HARDER: Output all hotelier ids that are experiencing the error


(3) Case study https://jira.siteminder.com/browse/HBD-127

    (3a) Find out how many HOTELS are affected the hotelbeds currency issue on the 7 march 2016. 

    The logger pattern example is "Error in currency setup. [${roomInfo}] membership room type currency does not match hotelier currency setup. Skipping sync process for this room."
