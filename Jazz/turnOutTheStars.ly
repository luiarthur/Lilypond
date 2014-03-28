% \version "2.16.1"
\include "LilyJAZZ.ily"   % Jazz package

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 


\score {
  %\clef treble  % Optional for treble clef
  %\key c \major % Optional for Key of C
  %\time 4/4     % Optional for Common Time

  <<
  \chords{ 
    \set minorChordModifier = \markup {"-"}

    b2:m7.5-  e2:7.9- | a2:m7      a2:7.9-  | 
    d2:m7     g2:7    | c2:maj7    a2:m7    |  

    f2:m7     bes:7   | ees:maj7    c:m7    |
    a2:m7     d2:7    | g2:maj7    e2:m7    |

    cis2:m7   fis2:7  | b2:maj7    gis:m7   |
    cis1:m7           | bes2:m7.5- ees:7.5+ | 

    aes1:m7           | f2:m7.5-   bes2:7.9+|
    ees2:m7 ees2:m7/des | ces:maj7   ees2:m7/bes|
  }

  \relative c' { 
    \jazzOn
    r4 f4 f4 e4 | e1 | 
    r4 f4 f4 e4 | e1 |
    \break
    aes2 ~ aes8 c,8 d8 ees8| f4 g4 aes4 bes4 | 
    c2 ~ c8 e,8 fis8 g8 | a4 b4 c4 d4 | 
    \break
    r4 e4 e4 dis4 | dis1 |
    r4 cis4 dis4 e4 | ees des ees ces |
    \break
    des2 ~ des8 ces8 des8 ees8 | des4 d4 des4 ces4 | 
    bes4. aes8 ges2~|ges4 aes4 bes4 des4 |

  }
  >>

  \midi { }
  \layout { }

}    

