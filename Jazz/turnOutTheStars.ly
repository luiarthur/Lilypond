%\version "2.14.1"
\include "english.ly"
%\include "../LilyJazz/LilyJAZZ.ily"

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

{
  %\clef treble  % Optional for treble clef
  %\key c \major % Optional for Key of C
  %\time 4/4     % Optional for Common Time

  <<
  \chords{ 
    b2:m7.5-  e2:7.9- | a2:m7    a2:7.9- | 
    d2:m7     g2:7    | c2:maj7  a2:m7   |  
    f2:m7     bf:7    | ef:maj7  c:m7    |
  }
  \relative c' { 
    %\jazzOn
    r4 f4 f4 e4 | e1 | 
    r4 f4 f4 e4 | e1 |
    af2 ~ af8 c,8 d8 e8| 
    f4 g4 af4 bf4 |
  }
  >>
}    

