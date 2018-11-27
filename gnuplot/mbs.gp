set terminal png enhanced size 1000,400 font "Helvetica,20"
set output 'mbs.png'

set style data histogram
set style histogram cluster gap 1


#set style fill solid border rgb "black"
set auto x
set yrange [0:*]

set grid ytics lt 0 lw 1 lc rgb "black"

set ylabel "Execution time (secs.)"

set key horizontal top outside

#set boxwidth 2 absolute
set offset -0.5,-0.5,0,0

plot 'mbs.dat' using 2:xtic(1) fs pattern 4 lt rgb "black"  title col, \
        '' using 3:xtic(1) fs pattern 8 lt rgb "black" title col, \
        '' using 4:xtic(1) fs pattern 1 lt rgb "black"  title col, \
        '' using 5:xtic(1) fs pattern 3 lt rgb "black"  title col, \
        '' using 6:xtic(1) fs pattern 5 lt rgb "black"  title col, \
        '' using 7:xtic(1) fs pattern 2 lt rgb "black"  title col, \
        '' using 8:xtic(1) fs pattern 6 lt rgb "black"  title col