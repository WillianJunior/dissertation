# https://stackoverflow.com/questions/18332161/gnuplot-histogram-cluster-bar-chart-with-one-line-per-category

reset
set terminal svg enhanced size 1300,500 font "Helvetica,30"

set datafile separator ";"

set output 'moat2.svg'

set auto x
#set yrange [0:80]
set xtics 0.1
set offset -0.3,-0.3,0,0
unset xtics

set ylabel "Execution time (secs.)"

set grid ytics lt 0 lw 1 lc rgb "black"
set key outside horizontal top
set style fill solid

num_of_categories=5
set boxwidth 0.8/num_of_categories
dx=0.7/num_of_categories
offset=0


plot 'moat75s.dat' using ($1+offset):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset):3 title "s75" with boxes fs pattern 1 lt rgb "black", \
     'moat150s.dat' using ($1+offset+dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+dx):3 title "s150" with boxes fs pattern 4 lt rgb "black", \
     'moat225s.dat' using ($1+offset+2*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+2*dx):3 title "s225" with boxes fs pattern 2 lt rgb "black", \
     'moat320s.dat' using ($1+offset+3*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+3*dx):3 title "s320" with boxes fs pattern 5 lt rgb "black", \
     'moat480s.dat' using ($1+offset+4*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+4*dx):3 title "s480" with boxes fs pattern 8 lt rgb "black", \
     'moat640s.dat' using ($1+offset+5*dx):($3+$4) notitle with boxes lc rgb "black", \
     ''                   using ($1+offset+5*dx):3 title "s640" with boxes fs pattern 7 lt rgb "black"


#plot 'moat2r.dat' using ($1+offset):($3+$4) notitle linecolor rgb "#cc0000" with boxes, \
#     ''                   using ($1+offset):3 title "s75" linecolor rgb "#ff0000" with boxes, \
#     'moat2m.dat' using ($1+offset+dx):($3+$4) notitle linecolor rgb "#00cc00" with boxes, \
#     ''                   using ($1+offset+dx):3 title "s150" linecolor rgb "#00ff00" with boxes
     