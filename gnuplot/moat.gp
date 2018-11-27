# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
set terminal png enhanced size 1300,500 font "Helvetica,20"
set output 'moat.png'

# set output 'histograms.8.png'
set bar 1.000000 front
#set border 3 front lt black linewidth 1.000 dashtype solid
set boxwidth 0.8 absolute
set style fill   solid 1.00 noborder
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   lt 0 linewidth 0.500,  lt 0 linewidth 0.500
set key bmargin center horizontal Left reverse noenhanced autotitle columnhead nobox
set style histogram rowstacked title textcolor lt -1 offset character 2, 0.25, 0
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set datafile missing '-'
set style data histograms
set style histogram rowstacked title offset 0, -1.1
#set xtics border in scale 0,0 nomirror rotate by -45  autojustify
#set xtics  norangelimit  font ",8"
#set xtics   ()
#unset xtics
set ytics border in scale 0,0 mirror norotate  autojustify
#set ytics  norangelimit autofreq  font ",8"
#set ztics border in scale 0,0 nomirror norotate  autojustify
set cbtics border in scale 0,0 mirror norotate  autojustify
set rtics axis in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 1 tics  rangelimit autofreq 
set paxis 2 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 2 tics  rangelimit autofreq 
set paxis 3 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 3 tics  rangelimit autofreq 
set paxis 4 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 4 tics  rangelimit autofreq 
set paxis 5 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 5 tics  rangelimit autofreq 
set paxis 6 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 6 tics  rangelimit autofreq 
set paxis 7 tics border in scale 0,0 nomirror norotate  autojustify
set paxis 7 tics  rangelimit autofreq 
#set title "Immigration from different regions\n(give each histogram a separate title)" 
set ylabel "Execution time (secs.)" 
#set yrange [ 0.00000 : 900000. ] noreverse nowriteback
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front bdefault
x = 0.0
i = 24
## Last datafile plotted: "moat.dat"

set key horizontal top outside
#set key noautotitle

plot newhistogram "No Reuse", 'moat.dat' using "nr":xtic(1) notitle, \
 newhistogram "Coarse-Grain", '' u "cg":xtic(1)  , \
 newhistogram "Fine-Grain Naive", '' u "naive":xtic(1) t col, '' u "naive-m" notitle, \
 newhistogram "Fine-Grain SCA", '' u "sc":xtic(1) t col, '' u "sc-m" notitle, \
 newhistogram "Fine-Grain RTMA", '' u "rt":xtic(1) t col, '' u "rt-m" notitle
#set term png
#set output "moat.png"
#replot
#set term x11