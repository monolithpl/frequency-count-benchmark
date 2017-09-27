@echo off
for /L %%x in (1,1,10) do (
	run-once-insensitive.cmd > result%%x.txt
	type result%%x.txt | find "Execution" > results%%x.txt
	del result%%x.txt
)
