\version "2.18.2"
\require "lilyjazz"   % Jazz package

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

\header {
  title = "You Must Believe in Spting"
  composer = "Michel Legrand"
}  

\score {
  <<
  %\key c \major % Optional for Key of C
  %\clef treble  % Optional for treble clef
  %\time 4/4     % Optional for Common Time

  \chords{ 
    \set minorChordModifier = \markup {"-"}

    cis2:m7.5- g4:7 fis4:7 | b2:m7+ b:m7|
    %b2:m7.5-  e2:7.9- | a2:m7      a2:7.9-  | 
    %d2:m7     g2:7    | c2:maj7    a2:m7    |  

    %f2:m7     bes:7   | ees:maj7    c:m7    |
    %a2:m7     d2:7    | g2:maj7    e2:m7    |
    %ees2:m7/aes aes2:7.9- | cis2:m7 \parenthesize fis2:7 |

  }

  \relative c' { 
    %\tempo 4 =130
    \key b \minor % Optional for Key of C
    \jazzOn
    r8 e fis g b, g' ais, fis' | e d e cis d2 |
    %e'4 g,4 aes4. e'8 | d2 ~ \times 2/3{d8 b8 a8} g4 |
    %r8 c8 a4 b4 c4 | d4 c4 d4 e4 |
    \break
  }
  >>

  \midi { }
  \layout { }

}
