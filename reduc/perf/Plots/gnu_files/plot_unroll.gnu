set output 'reduc_unroll.png'
red = "#FF0000"; blue = "#0000FF"
set yrange [0:20000]
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format""
set grid ytics


set xlabel "Optimization flags"
set ylabel "Bandwidth (MiB/s)"
set title "Reduc performances on gcc and clang with unroll implementation"
plot "plot_unroll.f" using 2:xtic(1) title "gcc" linecolor rgb red, \
     "plot_unroll.f" using 3 title "clang" linecolor rgb blue
