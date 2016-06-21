# frequency count benchmark
Benchmarking various solutions for counting word and phrase frequency in corpora.

### why?
there are at least half a dozen popular utilities that search for strings inside text files. most of them claim to be the fastest. to test their claims, we put them to the test.

### how?
- testing was done on a very modest Intel Pentium N3540 @ 2.16GHz (4 cores)  with 8GB RAM running Windows 8.1 x64
- the ```corpus.txt``` file is a 792 MB fragment of the OpenSubtitles2016 corpus [freely available here](http://opus.lingfil.uu.se/OpenSubtitles2016.php) / direct link to the [English version](http://opus.lingfil.uu.se/download.php?f=OpenSubtitles2016/en.tar.gz)
- an extensive collection of file searching binaries was tested, see below

### tl;dr - operations per second (higher is better)
![benchmark1](http://monolithpl.github.io/frequency-count-benchmark/benchmark.png "benchmark 800mb")

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


### implementation details
- see ```measure.cmd``` and the benchmark runner ```run-measure.cmd``` 
- number of characters of corpus.txt was established by running ``` cat corpus.txt | wc -m ```

### the never-ending argument
Benchmarks are always hotly contested. Your mileage may vary. However, two conclusions come to mind:
- benchmarks published by creators of the respective utilities - [sift](https://sift-tool.org/performance), [ag](https://github.com/ggreer/the_silver_searcher), [pt](https://github.com/monochromegane/the_platinum_searcher) and others - unsurprisingly have them beat every other solution (= mine is the best!)
- the fastest tool - for counting word frequency in large corpora - are those which are not heavily publicized, advertised or benchmarked on the 'net (grep!)

For examples of people ranting about whose tool is faster, see:
* [Hacker News - Sift: Grep on steroids (sift-tool.org)](https://news.ycombinator.com/item?id=10509802)
