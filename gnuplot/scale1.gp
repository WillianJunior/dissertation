set terminal svg enhanced size 700,600 font "Helvetica,20"
set output 'scale1.svg'

set style data histogram
set style histogram cluster gap 1


#set style fill solid border rgb "black"
set auto x
set yrange [0:*]

set grid ytics lt 0 lw 1 lc rgb "black"

set ylabel "Execution time (secs.)"
set xlabel "Worker Processes"

set key horizontal top outside

plot 'scale1.dat' using 2:xtic(1) fs pattern 1 lt rgb "black"  title col, \
        '' using 3:xtic(1) fs pattern 2 lt rgb "black" title col, \
        '' using 4:xtic(1) fs pattern 3 lt rgb "black"  title col

set y2tics 20 nomirror
unset ylabel 
set y2label "Execution time (secs.)"
