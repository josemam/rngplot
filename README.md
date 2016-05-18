# rngplot
2D&amp;3D plots of LCG values in a gnuplot command file

Usage: `gnuplot lcg.plt` for an example, `gnuplot -e "a=A;c=C;m=M" lcg.plt` for a particular LCG. `A`, `C` and `M` might be any expressions as long as gnuplot is able to evaluate them into numbers: `0`, `4`, `floor(log(6110))` and `2**32-1` are valid examples.

For example, you can check the behaviour of the infamous [RANDU] (https://en.wikipedia.org/wiki/RANDU) with `gnuplot -e "a=65539;c=0;m=2**31" lcg.plt`. If you rotate the 3D plot, you will notice that all dots fall in 15 planes.
