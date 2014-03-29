% \version "2.16.1"
\include "LilyJAZZ.ily"   % Jazz package

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

\header {
  title = "Turn Out The Stars"
  composer = "Bill Evans"
}  


\score {
  \new PianoStaff <<
    \relative c' {
      \new Staff {
      \jazzOn
        r4 <a d f>4 <aes des f>4 e'4 | <g, b c e>1 | 
        r4 <a d f>4 <aes des f>4 e'4 | <g, b c e>1 | 
      }
    }
    \new Staff {
      \clef bass
      \relative c {
        \jazzOn
        b,2 e2 | a,1 |
        b2 e2 | a,1 |
      }
    }  
  >>

  \midi {\tempo 4=120}
  \layout {}

}
