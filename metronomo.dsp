import("stdfaust.lib"); 
bpm2samp(t) = (60 * ma.SR)/(t);
//freq= vslider("frequenza[style:knob]",1000,1000,5000,1.0);
beat= bpm2samp(vslider("tempo[style:knob]", 60,32,240,0.1));
process = ba.pulsen(1,beat) : fi.lowpass(128,1000);
//tempo(t)= (60 *  )/2;
//ba.pulsen produce un click di durata stabilita ogni quantità di campioni stabiliti.
// in secondo ci sono 44100 campioni.
// in questo programma (metronomo) ba.pulsen produce un click ogni beat
// il beat è un funzione creata da noi che utilizza bpmtwosamp che converte in campioni una durata espressa in beat per minuto.
// i beat per minuto sono il tempo che impostiamo al metronomo.
// (riga 2) la funzione bpmtwosamp di t ci dice che se moltiplichiamo: 60 * 44100.....
//bpm è l'acronimo di beat per minute
//la funzione "ma.SR" chiede alla macchina che frequenza di campionamento sta utilizzando.
