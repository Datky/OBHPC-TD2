set output 'dgemm_clang.png'
red = "#FF0000"; blue = "#0000FF"; green = "#00FF00"; purple = "#800080"; yellow = "#FFFF00"; gray = "#808080"
set yrange [0:320]
set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9
set xtics format""
set grid ytics

set xlabel "Optimization flags"
set ylabel "MiB/s"
set title "Dgemm performances on clang"
plot "plot_clang.f" using 2:xtic(1) title "IJK" linecolor rgb red, \
     "plot_clang.f" using 3 title "IKJ" linecolor rgb blue, \
     "plot_clang.f" using 4 title "IEX" linecolor rgb green, \
     "plot_clang.f" using 5 title "UNROLLx4" linecolor rgb purple, \
     "plot_clang.f" using 6 title "CBLAS" linecolor rgb yellow, \
     "plot_clang.f" using 7 title "UNROLLx8" linecolor rgb gray
