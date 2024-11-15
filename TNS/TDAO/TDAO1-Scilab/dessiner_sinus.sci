// fonction dessiner_sinus

function dessiner_sinus(pas, f0, A, duree, nom_signal)
    t = 0:pas:duree;
    y = A * sin(2 * %pi * f0 * t);
    
    // Calcul des statistiques
    max_y = max(y);
    min_y = min(y);
    moyenne_y = mean(y);
    mediane_y = median(y);
    dispersion_y = variance(y);

    // Afficher les résultats
    disp("Maximum de " + nom_signal + " : " + string(max_y));
    disp("Minimum de " + nom_signal + " : " + string(min_y));
    disp("Moyenne de " + nom_signal + " : " + string(moyenne_y));
    disp("Médiane de " + nom_signal + " : " + string(mediane_y));
    disp("Dispersion (variance) de " + nom_signal + " : " + string(dispersion_y));
    
    // Tracer graphiquement le signal
    plot(t, y); // Tracé du signal
    xlabel('Temps (s)'); // axe des abscisses
    ylabel ('Amplitude (A)'); // axe des ordonnees
    title("BO Graphik SiGnAL " + nom_signal); // titre
endfunction

// appel de la fonction (petit b)
dessiner_sinus(0.001, 2, 3, 4, "y1");

// nouvelle figure
figure;

// appel de la fonction (petit c)
dessiner_sinus(0.001, 10, 1, 5, "y2");

