set terminal png enhanced size 900,500 font "Helvetica,20"
set output 'eff.png'

set grid ytics lt 0 lw 1 lc rgb "black"

set xlabel "Worker Nodes"
set ylabel "Stages per Worker Ratio"
set y2label "Parallel Efficiency"
set key horizontal top outside

set y2range[0:100]
set y2tics
set logscale y
set nologscale y2

set style line 1 lc rgb 'grey30' ps 0 lt 1 lw 2
set style line 2 lc rgb 'grey70' lt 1 lw 2
set style fill solid 1.0 border rgb 'grey30'

set xtics nomirror scale 0

#plot "eff.dat" axes x1y1 using 1:5 title "Packet Latency" with linespoints pt 7 ps 2,\
#      "eff.dat" axes x1y2 using 1:6 title "Queue Size" with linespoints pt 7 ps 2

set style data histogram
set style histogram cluster gap 1
plot 'eff.dat' using 2:xtic(1) title "NR S/W" fs pattern 4 lt rgb "black", \
	'' using 5:xtic(1) axes x1y2 title "NR eff" with linespoints lc "black" pt 10, \
	'' using 3:xtic(1) title "RTMA S/W" fs pattern 3 lt rgb "black", \
	'' using 6:xtic(1) axes x1y2 title "RTMA eff" with linespoints lc "black" pt 5, \
	'' using 4:xtic(1) title "TRTMA S/W" fs pattern 2 lt rgb "black", \
	'' using 7:xtic(1) axes x1y2 title "TRTMA eff" with linespoints lc "black" pt 3, \

#plot "eff.dat"  using 1:2 axes x1y1 title "NR S/W" with boxes,\
	#"eff.dat"  using 1:3 axes x1y1 title "RTMA S/W" with boxes
	#"eff.dat"  using 1:4 axes x1y2 title "NR eff" with lines,\
	#"eff.dat"  using 1:5 axes x1y2 title "RTMA eff" with lines,\
	#"eff.dat"  using 1:6 axes x1y2 title "TRTMA eff" with lines