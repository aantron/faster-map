set terminal svg size 600,500 font "Helvetica,14"

set output "_report/map.svg"
source="_report/results.txt"
set title "Time elapsed (relative) – lower is better"

set logscale x 10
set xlabel "List size (no. of elements)"
set xrange [1000:1000000]

set yrange [0:110]
set ylabel "Time relative to naive tail-recursive version (%)"

unset border
set tics scale 0

set key bottom horizontal
set key font ",13"

set style line 1 lc 0 lw 3 dt 3 pi 2
set style line 2 lc 9 lw 3
set style line 3 lc 10 lw 3
set style line 4 lc 6 lw 6
set style line 5 lc 5 lw 3
set style line 6 lc 7 lw 3

plot source using 1:3 with lines ls 1 title "naive tail-rec.", \
     source using 1:10 with linespoints ls 1 pt 4 title "stdlib", \
     source using 1:11 with linespoints ls 1 pt 10 title "unrolled 5×", \
     source using 1:5 with lines ls 3 title "batteries", \
     source using 1:4 with lines ls 2 title "base", \
     source using 1:6 with lines ls 5 title "containers", \
     source using 1:8 with lines ls 4 title "new", \
     source using 1:9 with lines ls 6 title "tupled"
