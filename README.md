# frequency count benchmark
Benchmarking various solutions for counting word and phrase frequency in corpora.

Also provides ready-to-use win32/win64 binaries of **grep**, **ag** *aka silver searcher*, **pt** *aka platinum searcher* and **sift** for those who are too lazy to compile their own and just want the best tool for the job.

### why?
There are at least half a dozen popular utilities that search for strings inside text files. Most of them claim to be the fastest. To test their claims, we put them to the test.

### how?
- testing was done on a very modest Intel Pentium N3540 @ 2.16GHz (4 cores)  with 8GB RAM running Windows 8.1 x64
- the ```corpus.txt``` file is a 792 MB fragment of the OpenSubtitles2016 corpus [freely available here](http://opus.lingfil.uu.se/OpenSubtitles2016.php) / direct link to the [English version](http://opus.lingfil.uu.se/download.php?f=OpenSubtitles2016/en.tar.gz)
- an extensive collection of file searching binaries was tested, see below

### tl;dr - operations per second (higher is better)
![benchmark](http://monolithpl.github.io/frequency-count-benchmark/benchmark.png "benchmark 800mb")

### benchmark candidates - popular text searching utilities
Utility | Arch | Source url | Folder|
|-------|---------------|------------|-------|
|ag 0.29.1 | x86 | https://chocolatey.org/ | ag|
|ag 0.31.0 | x64 | https://cygwin.com/setup-x86_64.exe | ag64|
|GNU grep 2.5.1 | x86 | http://unxutils.sourceforge.net/ | grep1|
|GNU grep 2.5.4 | x86 | http://gnuwin32.sourceforge.net/ | grep2|
|GNU grep 2.5.4 | x86 | http://www.mingw.org/wiki/msys | grep3|
|GNU grep 2.0d | x86 | http://www.interlog.com/~tcharron/grep.html | grep4|
|GNU grep 2.24 | x64 | https://cygwin.com/setup-x86_64.exe | grep5|
|GNU grep 2.3 | x86 | http://john.fender.free.fr/Export/cmds/grep.exe | grep6|
|GNU grep 2.4.2 | x86 | http://130.207.37.211/software/wbin/grep.exe | grep7|
|GNU grep 2.4.2 | x86 | http://www.mingw.org/wiki/msys | grep8|
|pt 2.1.2 | x86 | https://github.com/monochromegane/the_platinum_searcher/releases/download/v2.1.2/pt_windows_386.zip | pt|
|pt 2.1.2 | x64 | https://github.com/monochromegane/the_platinum_searcher/releases/download/v2.1.2/pt_windows_amd64.zip | pt64|
|sift 0.8.0 | x86 | https://sift-tool.org/downloads/sift/sift_0.8.0_windows_386.zip | sift|
|sift 0.8.0 | x64 | https://sift-tool.org/downloads/sift/sift_0.8.0_windows_amd64.zip | sift64|
|find MS windows 8.1 | x64 | n/a (system) | n/a (system)|

## case insensitive

### average results of 7 runs
|Utility | Average Time | Characters per second|
|--------|--------------|----------------------|
|ag 0.29.1 | 1.691857143 | 487,376,204|
|ag 0.31.0 | 2.035142857 | 405,166,109|
|GNU grep 2.5.1 | 3.366142857 | 244,960,166|
|GNU grep 2.5.4 | 3.109571429 | 265,171,883|
|GNU grep 2.5.4 | 4.200428571 | 196,306,376|
|GNU grep 2.0d | 4.490285714 | 183,634,398|
|GNU grep 2.24 | 2.710285714 | 304,237,634|
|GNU grep 2.3 | 1.225714286 | 672,726,851|
|GNU grep 2.4.2 | 1.246571429 | 661,471,050|
|GNU grep 2.4.2 | 1.276714286 | 645,853,909|
|pt 2.1.2 | 236.8115714 | 3,481,971|
|pt 2.1.2 | 224.435 | 3,673,985|
|sift 0.8.0 | 15.03757143 | 54,834,048|
|sift 0.8.0 | 4.597142857 | 179,365,954|
|find MS windows 8.1 | 196.0131429 | 4,206,712|

### detailed benchmarks - 7 runs
|Utility | Command | Run #1 | Run #2 | Run #3 | Run #4 | Run #5 | Run #6 | Run #7|
|--------|---------|----------|----------|----------|----------|----------|----------|---------|
|ag 0.29.1 | binaries\ag\ag -ciF "fair game" corpus.txt | 1.749 | 1.687 | 1.681 | 1.682 | 1.679 | 1.678 | 1.687|
|ag 0.31.0 | binaries\ag64\ag -ciF "fair game" corpus.txt | 2.344 | 2.018 | 1.928 | 1.931 | 2.008 | 2.008 | 2.009|
|GNU grep 2.5.1 | binaries\grep1\grep -ciF "fair game" corpus.txt | 3.44 | 3.348 | 3.35 | 3.36 | 3.363 | 3.354 | 3.348|
|GNU grep 2.5.4 | binaries\grep2\grep -ciF "fair game" corpus.txt | 3.181 | 3.092 | 3.093 | 3.102 | 3.09 | 3.103 | 3.106|
|GNU grep 2.5.4 | binaries\grep3\grep -ciF "fair game" corpus.txt | 4.292 | 4.159 | 4.199 | 4.189 | 4.187 | 4.189 | 4.188|
|GNU grep 2.0d | binaries\grep4\grep -ciF "fair game" corpus.txt | 4.566 | 4.471 | 4.468 | 4.491 | 4.472 | 4.468 | 4.496|
|GNU grep 2.24 | binaries\grep5\grep -ciF "fair game" corpus.txt | 2.791 | 2.697 | 2.694 | 2.699 | 2.697 | 2.691 | 2.703|
|GNU grep 2.3 | binaries\grep6\grep -ciF "fair game" corpus.txt | 1.294 | 1.219 | 1.227 | 1.208 | 1.21 | 1.21 | 1.212|
|GNU grep 2.4.2 | binaries\grep7\grep -ciF "fair game" corpus.txt | 1.335 | 1.215 | 1.318 | 1.211 | 1.212 | 1.214 | 1.221|
|GNU grep 2.4.2 | binaries\grep8\grep -ciF "fair game" corpus.txt | 1.401 | 1.256 | 1.266 | 1.257 | 1.245 | 1.26 | 1.252|
|pt 2.1.2 | binaries\pt\pt /c /i "fair game" corpus.txt | 248.294 | 234.95 | 234.85 | 234.943 | 234.922 | 235.018 | 234.704|
|pt 2.1.2 | binaries\pt64\pt /c /i "fair game" corpus.txt | 227.625 | 223.743 | 223.763 | 223.813 | 224.1 | 223.907 | 224.094|
|sift 0.8.0 | binaries\sift\sift -cQi "fair game" corpus.txt | 16.298 | 14.87 | 14.835 | 14.805 | 14.806 | 14.816 | 14.833|
|sift 0.8.0 | binaries\sift64\sift -cQi "fair game" corpus.txt | 5.062 | 4.524 | 4.508 | 4.498 | 4.522 | 4.51 | 4.556|

## case sensitive

### average results of 10 runs
|Utility | Average Time | Characters per second|
|--------|--------------|----------------------|
|ag 0.29.1 | 1.7064 | 483,222,522|
|ag 0.31.0 x64 | 1.9827 | 415,882,843|
|GNU grep 2.5.1 unxutils | 3.1709 | 260,043,178|
|GNU grep 2.5.4 gnuwin32 | 2.9238 | 282,020,286|
|GNU grep 2.5.4 msys | 4.0008 | 206,101,508|
|GNU grep 2.0d tcharron | 4.2958 | 191,948,161|
|GNU grep 2.24 cygwin x64 | 2.7343 | 301,565,634|
|GNU grep 2.3 fender | 1.0047 | 820,713,558|
|GNU grep 2.4.2 wbin | 1.02 | 808,402,855|
|GNU grep 2.4.2 msys | 1.0334 | 797,920,372|
|pt 2.1.2 | 5.9739 | 138,028,911|
|pt 2.1.2 x64 | 4.8024 | 171,699,757|
|sift 0.8.0 | 2.2718 | 362,959,289|
|sift 0.8.0 x64 | 1.5032 | 548,543,715|
|find MS windows 8.1 | too long |too long |

### detailed benchmarks - 10 runs
|Utility | Command | Run #1 | Run #2 | Run #3 | Run #4 | Run #5 | Run #6 | Run #7 | Run #8 | Run #9 | Run #10|
|--------|---------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|
|ag 0.29.1 | binaries\ag\ag -cF "fair game" corpus.txt | 1.707 | 1.708 | 1.704 | 1.708 | 1.711 | 1.701 | 1.708 | 1.704 | 1.71 | 1.703|
|ag 0.31.0 x64 | binaries\ag64\ag -cF "fair game" corpus.txt | 1.987 | 2.051 | 1.967 | 1.967 | 2.045 | 1.96 | 1.956 | 1.969 | 1.967 | 1.958|
|GNU grep 2.5.1 unxutils | binaries\grep1\grep -cF "fair game" corpus.txt | 3.174 | 3.178 | 3.176 | 3.169 | 3.172 | 3.166 | 3.163 | 3.171 | 3.164 | 3.176|
|GNU grep 2.5.4 gnuwin32 | binaries\grep2\grep -cF "fair game" corpus.txt | 2.925 | 2.935 | 2.916 | 2.933 | 2.924 | 2.92 | 2.929 | 2.916 | 2.917 | 2.923|
|GNU grep 2.5.4 msys | binaries\grep3\grep -cF "fair game" corpus.txt | 4.042 | 4.04 | 3.98 | 4.02 | 3.988 | 3.978 | 3.987 | 3.988 | 3.985 | 4|
|GNU grep 2.0d tcharron | binaries\grep4\grep -cF "fair game" corpus.txt | 4.301 | 4.292 | 4.302 | 4.297 | 4.295 | 4.286 | 4.287 | 4.301 | 4.31 | 4.287|
|GNU grep 2.24 cygwin x64 | binaries\grep5\grep -cF "fair game" corpus.txt | 2.828 | 2.762 | 2.716 | 2.723 | 2.776 | 2.711 | 2.708 | 2.71 | 2.703 | 2.706|
|GNU grep 2.3 fender | binaries\grep6\grep -cF "fair game" corpus.txt | 1.05 | 0.997 | 0.996 | 1.008 | 0.997 | 1.003 | 0.995 | 0.998 | 0.995 | 1.008|
|GNU grep 2.4.2 wbin | binaries\grep7\grep -cF "fair game" corpus.txt | 1.167 | 1.004 | 1 | 1.001 | 1.003 | 1 | 1.002 | 1.001 | 1.01 | 1.012|
|GNU grep 2.4.2 msys | binaries\grep8\grep -cF "fair game" corpus.txt | 1.039 | 1.039 | 1.031 | 1.029 | 1.04 | 1.025 | 1.036 | 1.037 | 1.031 | 1.027|
|pt 2.1.2 | binaries\pt\pt /c "fair game" corpus.txt | 6.419 | 5.929 | 5.924 | 5.925 | 5.919 | 5.924 | 5.916 | 5.914 | 5.961 | 5.908|
|pt 2.1.2 x64 | binaries\pt64\pt /c "fair game" corpus.txt | 5.086 | 4.764 | 4.765 | 4.786 | 4.789 | 4.768 | 4.791 | 4.756 | 4.757 | 4.762|
|sift 0.8.0 | binaries\sift\sift -cQ "fair game" corpus.txt | 2.616 | 2.231 | 2.227 | 2.236 | 2.231 | 2.245 | 2.223 | 2.238 | 2.24 | 2.231|
|sift 0.8.0 x64 | binaries\sift64\sift -cQ "fair game" corpus.txt | 1.995 | 1.441 | 1.442 | 1.452 | 1.459 | 1.456 | 1.438 | 1.452 | 1.457 | 1.44|

### implementation details
- see ```measure.cmd``` (case insensitive), ```measure2.cmd``` (case sensitive) and the respective benchmark runners ```run-measure.cmd``` and ```run-measure2.cmd```
- number of characters of corpus.txt was established by running ``` cat corpus.txt | wc -m ```
- as there's no ```time``` on windows, the freeware utility ```ptime``` was used to measure running time. see [here](http://www.pc-tools.net/win32/ptime/)
- all binaries are available in the ```binaries``` folder of this repository

### wouldbe contenders
- [highway](https://github.com/tkengo/highway) - doesn't have a count option

### the never-ending argument
Benchmarks are always hotly contested. Your mileage may vary. However, some conclusions come to mind:
- benchmarks published by creators of the respective utilities - [sift](https://sift-tool.org/performance), [ag](https://github.com/ggreer/the_silver_searcher), [pt](https://github.com/monochromegane/the_platinum_searcher) and others - unsurprisingly have them beat every other solution. unfortunately, their claims do not stack up in this real use case scenario.
- the fastest tool is the one that humbly doesn't advertise much - grep!
- but a ***lot*** depends on how grep is compiled
- x64 is not necessarily faster than x32

For a lengthy discussion, see:
* [Hacker News - Sift: Grep on steroids (sift-tool.org)](https://news.ycombinator.com/item?id=10509802)
