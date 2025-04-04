%% diff amp Variable Load
clc
mat = readmatrix("variableLoad.csv");
gain = mat(:,3)./mat(:,2);

mat(:,1)

figure(1)
semilogx(mat(:,1), gain)
ylim([-0.01,0.18])
title("Differential Amplifier Regulator Noise Testing With Variable Load")
xlabel("Load Resistance (ohm)")
ylabel("Noise Gain (V/V)")
grid on
set(figure(1), 'Position', [400, 100, 800, 400]);
exportgraphics(figure(1), 'Diff amp var load.png', 'Resolution', 800);

%% Diff amp Variable Amplitude
clc
mat2 = readmatrix("variableAmp.csv")

figure(2)
plot(mat2(:,1), mat2(:,2)*1000)
title("Differential Amplifier Regulator Noise Testing With Variable Noise Amplitude")
xlabel("Input Noise Peak-Peak Amplitude (V)")
ylabel("Output Noise Peak-Peak Amplitude (mV)")
grid on
set(figure(2), 'Position', [400, 100, 800, 400]);
exportgraphics(figure(2), 'Diff amp var noise.png', 'Resolution', 800);

%% op amp variable amplitude
clc
mat3 = readmatrix("opAmp_variable_amp.csv")

figure(3)
plot(mat3(:,1), mat3(:,2)*1000)
title("LM741 Regulator Noise Testing With Variable Noise Amplitude")
xlabel("Input Noise Peak-Peak Amplitude (V)")
ylabel("Output Noise Peak-Peak Amplitude (mV)")
grid on
set(figure(3), 'Position', [400, 100, 800, 400]);
exportgraphics(figure(3), 'opamp var noise.png', 'Resolution', 800);
