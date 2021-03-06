﻿load voz_8192m.txt;
x3 = voz_8192m';
Fs = 8000;
N = 8192;
x3 = x3 .* hanning(N)';
X3 = fft(x3);
M3 = 2 * (2/N) * abs(X3);
k = [0 : 999];
f = (Fs/N)* k;
plot(f, M3(1:1000));
title('Mag[X3]');
xlabel('Hz');
ylabel('mV');
grid;