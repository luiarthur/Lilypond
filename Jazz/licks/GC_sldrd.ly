\version "2.16.1"
\require "lilyjazz"

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

\header {
  title = "sldrd Lick"
  composer = "Gerald Clayton"
}  

\score {
  %\clef treble  % Optional for treble clef
  %\key c \major % Optional for Key of C
  %\time 4/4     % Optional for Common Time

  <<
  
  \chords{ 
    \set minorChordModifier = \markup {"-"}
    d2:m7 g2:7 | c1:maj7 |
  }
  \relative c' { 
    %\tempo 4 =130
    \jazzOn
    r4 r4 r4 g16 a c d | c1 |
    }
  >>

  \midi {\tempo 4 = 120 }
  \layout { }

}
