set style line 1 lt 1 lw 2 pt 3 ps 0.5
set style line 2 lt 2 lw 4 pt 3 ps 0.5
set style line 3 lt 3 lw 4 pt 3 ps 0.5
set style line 4 lt 7 lw 4 pt 3 ps 0.5
set style line 5 lt 5 lw 4 pt 3 ps 0.5


set grid
set xlabel "Número de Iterações"
set ylabel "Coeficiente de Dice"
set xtics 5
set ytics 0.02
set yrange [0.8:1]




plot "mean_dice_m01_a000.txt" using 1:2 title "IFT" with linespoints ls 1, \
     "mean_dice_m02_a100.txt"  using 1:2 title "IFT_s_p_1_0_0" with lines ls 2, \
       "mean_dice_m02_a400.txt"  using 1:2 title "IFT_s_p_4_0_0" with lines ls 3, \
     "mean_dice_m02_a900.txt"  using 1:2 title "IFT_s_p_9_0_0" with lines ls 4, \
     "mean_dice_m02_a1600.txt"  using 1:2 title "IFT_s_p_1_6_0_0" with lines ls 5
