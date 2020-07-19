# stream

[stream][] benchmark for docker

## execute

```shell
docker run -it --rm dockbench/stream:ubuntu-18.04 $num_threads | tee stream.log
```

`num_threads` is the number of thread.

Sample result is bellow.

```shell
$ docker run -it --rm dockbench/stream:ubuntu-18.04 2
execute stream with num_threads=2
<command-line>:0:0: warning: "_OPENMP" redefined
<built-in>: note: this is the location of the previous definition
-------------------------------------------------------------
STREAM version $Revision: 5.10 $
-------------------------------------------------------------
This system uses 8 bytes per array element.
-------------------------------------------------------------
Array size = 10000000 (elements), Offset = 0 (elements)
Memory per array = 76.3 MiB (= 0.1 GiB).
Total memory required = 228.9 MiB (= 0.2 GiB).
Each kernel will be executed 10 times.
 The *best* time for each kernel (excluding the first iteration)
 will be used to compute the reported bandwidth.
-------------------------------------------------------------
Number of Threads requested = 2
Number of Threads counted = 2
-------------------------------------------------------------
Your clock granularity/precision appears to be 1 microseconds.
Each test below will take on the order of 20147 microseconds.
   (= 20147 clock ticks)
Increase the size of the arrays if this shows that
you are not getting at least 20 clock ticks per test.
-------------------------------------------------------------
WARNING -- The above is only a rough guideline.
For best results, please be sure you know the
precision of your system timer.
-------------------------------------------------------------
Function    Best Rate MB/s  Avg time     Min time     Max time
Copy:            8573.6     0.019133     0.018662     0.019430
Scale:           8437.5     0.019347     0.018963     0.019815
Add:            11704.5     0.021191     0.020505     0.022334
Triad:          12056.1     0.020515     0.019907     0.020847
-------------------------------------------------------------
Solution Validates: avg error less than 1.000000e-13 on all three arrays
-------------------------------------------------------------
```

[stream]: https://www.cs.virginia.edu/stream/
