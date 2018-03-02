set terminal postscript enhanced color "Helvetica" 32
set title "" 
set xlabel "density" font "Helvetica,30"
set ylabel "ratio" font "Helvetica,30"
set y2label "cost (# dist. measures x10^3)" font "Helvetica,30"
set ytics 0.1
set y2tics
set xtics 5000
set key box
set key reverse
set key samplen 1
set key spacing 0.85
set key center at 7600,1.76

set output 'lsh_ratio.eps'

plot "< awk '{print $1,$2}' density_ratio.txt"  with points title "lsh ratio" lt 1 lw 3  axis x1y1,\
"< awk '{print $1,$3/1000}' density_ratio.txt"  with points title "lsh cost" lt 2 lw 3 axis x1y2,\
"< awk '{print $1,$2}' density_ratio_mp.txt"  with points title "mplsh ratio" lt 3 lw 3  axis x1y1,\
"< awk '{print $1,$3/1000}' density_ratio_mp.txt"  with points title "mplsh cost" lt 4 lw 3 axis x1y2
