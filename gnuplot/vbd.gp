# https://stackoverflow.com/questions/18332161/gnuplot-histogram-cluster-bar-chart-with-one-line-per-category

reset
set terminal svg enhanced size 1300,500 font "Helvetica,30"

set datafile separator ";"

set output 'vbd.svg'

set auto x
set yrange [0:12000]
set xtics 0.1
set offset -0.3,-0.3,0,0
unset xtics

set ylabel "Execution time (secs.)"

set grid ytics lt 0 lw 1 lc rgb "black"
set key outside horizontal top
set style fill solid

num_of_categories=5
set boxwidth 0.8/num_of_categories
dx=0.8/num_of_categories
offset=0


plot 'vbd2000s.dat' using ($1+offset):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset):3 title "s2000" with boxes fs pattern 1 lt rgb "black", \
     'vbd4000s.dat' using ($1+offset+dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+dx):3 title "s4000" with boxes fs pattern 4 lt rgb "black", \
     'vbd6000s.dat' using ($1+offset+2*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+2*dx):3 title "s6000" with boxes fs pattern 2 lt rgb "black", \
     'vbd8000s.dat' using ($1+offset+3*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+3*dx):3 title "s8000" with boxes fs pattern 5 lt rgb "black", \
     'vbd10000s.dat' using ($1+offset+4*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+4*dx):3 title "s10000" with boxes fs pattern 8 lt rgb "black"