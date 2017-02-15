set style line 1 lt 1 lw 2 pt 3 ps 0.5
set style line 2 lt 2 lw 4 pt 3 ps 0.5
set style line 3 lt 3 lw 4 pt 3 ps 0.5
set style line 4 lt 7 lw 4 pt 3 ps 0.5
set style line 5 lt 5 lw 4 pt 3 ps 0.5


set grid
set xlabel "raio de erosão das sementes"
set ylabel "Acurácia"
set xtics 5
set ytics 0.02




plot "ift.txt" using 1:2 title "IFT" with linespoints ls 1, \
     "ift100.txt"  using 1:2 title "IFT_s_p_1_0_0" with lines ls 2, \
       "ift400.txt"  using 1:2 title "IFT_s_p_4_0_0" with lines ls 3, \
     "ift900.txt"  using 1:2 title "IFT_s_p_9_0_0" with lines ls 4, \
     "ift1600.txt"  using 1:2 title "IFT_s_p_1_6_0_0" with lines ls 5
