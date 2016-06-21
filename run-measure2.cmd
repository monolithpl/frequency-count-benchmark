@echo off
for /L %%x in (1,1,10) do (
	measure2.cmd > result%%x.txt
	type result%%x.txt | find "Execution" > results%%x.txt
	del result%%x.txt
)