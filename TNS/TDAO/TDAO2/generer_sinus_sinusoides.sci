// fonction generer_sinus_sinusoïde
function [x, axe_t] = generer_sinus(T, d, N, phi)
    Fs = N / d; // Nombre d'échantillons divisé par la durée
    axe_t = 0:1/Fs:d; // Temps de 0 à d
    f = 1 / T; // Fréquence
    
    x = sin(2 * %pi * f * axe_t + phi); // Génération du signal
endfunction

// Paramètres 1er signal
T1 = 1;      // Période
d1 = 5;      // Durée
N1 = 256;    // Nombre d'échantillons
phi1 = 0;    // Phase

// Paramètres 2ème signal
T2 = 1;      // Période
d2 = 10;     // Durée
N2 = 512;    // Nombre d'échantillons
phi2 = 0;    // Phase

// Appel fonction 1er signal
[x1, axe_t1] = generer_sinus(T1, d1, N1, phi1);

// Appel fonction 2ème signal
[x2, axe_t2] = generer_sinus(T2, d2, N2, phi2);

clf; 

// 1er tracé
subplot(2, 1, 1); // on place le tracé 1 sur le dessus
plot(axe_t1, x1); 
xlabel('Temps (s)'); // abscisses
ylabel('Amplitude (A)'); // ordonnées
title('Signal Sinusoïdal 1'); 

// 2ème tracé
subplot(2, 1, 2); // on place le tracé 2 en dessous
plot(axe_t2, x2); 
xlabel('Temps (s)'); // abscisses
ylabel('Amplitude (A)'); // ordonnées
title('Signal Sinusoïdal 2'); 

[C1, lagindex1] = xcorr(x1); // Autocorrélation de x1
[C2, lagindex2] = xcorr(x2); // Autocorrélation de x2

figure; // Nouvelle figure pour l'autocorrélation

// Autocorrélation 1er signal
subplot(2, 1, 1); // Position : haut dessus
plot(lagindex1, C1); // Tracé de l'autocorrélation
xlabel('Lag Index'); // abscisses
ylabel('Autocorrélation'); // ordonnées
title('Autocorrélation du Signal 1'); 

// Autocorrélation 2ème signal
subplot(2, 1, 2); // Position : en dessous
plot(lagindex2, C2); // Tracé de l'autocorrélation
xlabel('Lag Index'); // abscisses
ylabel('Autocorrélation'); // ordonnées
title('Autocorrélation du Signal 2'); 
