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

    d2.:7 g,2.:7 |
    g,2.:7 | g,2.:7 | g,1:7 | g,1:7 |
    %g,1.:7 | g,1.:7 | g,1:7 | g,1:7 |
    c1:7   | c1:7   | g,1:7 | g,1:7 |
    %c1:7 | c1:7 | g2:7 fis2:7 | f2:7 e2:7 |
    bes2:m7 ees,2:7 | a2:m7 d,2:7 | g2:7 e2:7 | a2:m7 d2:7 |
  }

  \relative c' { 
    %\tempo 4 =130
    \jazzOn
    r2 \times2/3{d8 e g} \times2/3{<b e>8 <b e>8 r8}|

    \times2/3{<c e>8 <c e>8 r8} \times2/3{<cis e>8 <cis e>8 r8}
    \times2/3{<d e>8 <d e>8 r8} \times2/3{<cis e>8 c8 bes8}|
    g8 e16 r  g8 e16 r \acciaccatura a16 <bes d>4 r4|

    \acciaccatura bes16 <b g'>4 \times2/3{<c g'>4 <d g>8} 
    \acciaccatura bes16 \times2/3{<b g'>4 g8} \times2/3{e4 d8}| 
    \break
    \times2/3{g4 <b, e>8}  \times2/3{r4 <b ees>8 } 
    \times2/3{r4 a''8} \times2/3{g8 d8 c8} |

    <g bes>4 \acciaccatura aes16 <a c>4 <g bes>2 |
    r4 \acciaccatura{d'16 ees} <e g>8 \grace{d16 ees} <e g>8 ~ 
    <e g>4 \times 2/3{bes8 g e} |
    <g bes>4 \acciaccatura aes16 <a c>4 <g bes>2 |
    r2 \times 2/3{r4 c'8} \times 2/3{b4 a8} |
    \break

    \times 2/3{bes4 aes8} \times 2/3{f4 des8} 
    \times 2/3{c4 des8} \times 2/3{ees4 f8} 
    \times 2/3{e4 c8} e,4
    \times 2/3{fis4 b8} \times 2/3{dis,8 c8 fis8} 
    \times 2/3{a4 g8} d4 b4 \acciaccatura {dis8 e f}\times 2/3{f4 dis8} |
    \times 2/3{e4 ees'8} e2 \times 2/3{r4 e8} |
  }
  >>

  \midi {\tempo 4=120}
  \layout { }

}
