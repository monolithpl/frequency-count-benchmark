@echo off
for /L %%x in (1,1,10) do (
	run-once-sensitive.cmd > result%%x.txt
	type result%%x.txt | find "Execution" > results%%x.txt
	del result%%x.txt
)
