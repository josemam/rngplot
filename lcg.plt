set samples 10000
unset parametric
mod(a,b) = a - int(a/b)*b
lcga(a,c,m) = (sa = mod((a*sa+c),m))
lcgb(a,c,m) = (sb = mod((a*sb+c),m))
lcgc(a,c,m) = (sc = mod((a*sc+c),m))
if (!exists("a")) a = 1221
if (!exists("c")) c = 4643
if (!exists("m")) m = 2**16
start = 0
if (c == 0) start = 1
set xrange [0:m-1]
set yrange [0:m-1]
set zrange [0:m-1]
sa = start
set xlabel 'i'
set ylabel 'x_i'
plot lcga(a,c,m) title "" with points pointtype 7 pointsize 0.3
pause -1
set parametric
sa = sb = start
set xlabel 'x_i'
set ylabel 'x_{i+1}'
null = lcgb(a,c,m)
plot lcga(a,c,m), lcgb(a,c,m) title "" with points pointtype 7 pointsize 0.3
pause -1
set samples 100
sa = sb = sc = start
set zlabel 'x_{i+2}' offset -3
null = lcgb(a,c,m)
null = lcgc(a,c,m)
null = lcgc(a,c,m)
splot lcga(a,c,m), lcgb(a,c,m), lcgc(a,c,m) title "" with points pointtype 7 pointsize 0.2
pause -1
