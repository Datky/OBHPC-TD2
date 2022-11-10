set output 'dotprod_clang.png'
red = "#FF0000"; blue = "#0000FF"
set yrange [0:52000]
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format""
set grid ytics

set xlabel "Optimization flags"
set ylabel "MiB/s"
set title "Dotprod performances on clang"
plot "plot_clang.f" using 2:xtic(1) title "BASE" linecolor rgb red, \
     "plot_clang.f" using 3 title "UNROLLx8" linecolor rgb blue
