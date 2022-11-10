set output 'dotprod_base.png'
red = "#FF0000"; blue = "#0000FF"
set yrange [0:31000]
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format""
set grid ytics


set xlabel "Optimization flags"
set ylabel "Bandwidth (MiB/s)"
set title "Dotprod performances on gcc and clang with base implementation"
plot "plot_base.f" using 2:xtic(1) title "gcc" linecolor rgb red, \
     "plot_base.f" using 3 title "clang" linecolor rgb blue
