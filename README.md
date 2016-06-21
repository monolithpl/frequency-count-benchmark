# frequency count benchmark
Benchmark various solutions for counting word and phrase frequency in corpora

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

### benchmarks - 7 runs
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
