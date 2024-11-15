// fonction générer_sinus_creation

function [x, axe_t] = generer_sinus(T, d, N, phi)
    Fs = N / d; // Nombre d'échantillons divisé par la durée
    axe_t = 0:1/Fs:d; // Temps de 0 à d
    f = 1 / T; // Fréquence = 1 sur la période
    
    x = sin(2 * %pi * f * axe_t + phi); // Génération du signal
    
    // Tracer graphiquement le signal
    plot(axe_t, x); 
    xlabel('Temps (s)'); // abscisses
    ylabel('Amplitude (A)'); // ordonnées
    title("Bo Graphik"); 
    
endfunction

// Appel de la fonction 
[x, axe_t] = generer_sinus(0.001, 2, 3, 4); 
