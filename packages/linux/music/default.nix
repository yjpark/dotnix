{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    bitwig-studio
    musescore
    lilypond-with-fonts
    MIDIVisualizer
    coltrane
    tuxguitar
  ];
}


