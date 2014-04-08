% Writing Functions in lilypond:
% http://lilypond.org/doc/v2.16/Documentation/extending-big-page.html#scheme-variables
% \version "2.16.1"
\include "LilyJAZZ.ily"   % Jazz package

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

\header {
  title = "Gerald Clayton Playing Blues at Junushoff"
  composer = ""
}  

\score {
  %\clef treble  % Optional for treble clef
  %\key c \major % Optional for Key of C
  %\time 4/4     % Optional for Common Time

  <<
  \chords{ 
    \set minorChordModifier = \markup {"-"}

    c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    c1:m7 | f1:7  | bes1:7 | bes1:7 |
    ees1:m7 | ees1:m7 | ees1:m7 | ees1:m7 | 
    ees1:m7 | aes1:7  | des1:7  | des1:7 |
    cis1:m7 | cis2:m7 fis2:7.5+ | b1:m7 | b1:m7|
    b1:m7 | b2:m7 e2:7.5+ | a1:m7 | a1:m7 |
    a1:m7 | a2:m7 d2:7.5+ | g1:m7 | g1:m7 |
    ees1:7.5- | ees1:7.5- | d1:7.9- | g1:7.5+ |

    c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    c1:m7 | f1:7  | bes1:7 | bes1:7 |
    ees1:m7 | ees1:m7 | b1:7.5- | b1:7.5- |
    f1:m7.5- | bes:7.9+ | ees1:m7+ | d2:7.9+ g2:7.9+ |
  }

  \relative c' { 
    %\tempo 4 =130
    \jazzOn

    %\acciaccatura bes16 \times2/3{<b g'>4 g8} \times2/3{e4 d8}| 
    %\break
    \times2/3{r4 d8} f16 ees d ees \times2/3{g4 b8} \times2/3{d4 ees8} 
    \times2/3{d4 c8} \times2/3{b4 d8} \times2/3{f4 aes8} \times2/3{g4 d8}
    \times2/3{d4 c8} \times2/3{d4 r8} r4 \times2/3{r4 d8} 
    \times2/3{ees4 g,8} \times2/3{b4 d8} r4 \times2/3{r4 d8}
    \times2/3{d4 c8} \times2/3{d4 f8} \times2/3{d4 c8} \times2/3{f4 c8}
    \times2/3{d4 ees8} \times2/3{c4 d8} r4 \times2/3{r4 c8}
    \times2/3{d4 f8} \times2/3{d4 c8} \times2/3{d4 c8} \times2/3{d4 fis8}
    \times2/3{d4 c8} \times2/3{d4 ees8} \times2/3{d4 c8} \times2/3{d4 \times2/3{c16 d c}}
  }
  >>

  \midi {\tempo 4=180}
  \layout { }

}
