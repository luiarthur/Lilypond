%\version "2.14.1"
\include "english.ly"

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

{
  %\clef treble  % Optional for treble clef
  %\key c \major % Optional for Key of C
  %\time 4/4     % Optional for Common Time

  <<
  \chords{ b:m7.5- }
  \relative c' { 
    r4 f4 f4 e4 | e1 | r4 f4 f4 e4 | e1 |
    af2 ~ af8 c,8 d8 e8| 
  }
  >>
}    

