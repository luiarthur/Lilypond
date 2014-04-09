% Writing Functions in lilypond:
% http://lilypond.org/doc/v2.16/Documentation/extending-big-page.html#scheme-variables
% \version "2.16.1"
\include "LilyJAZZ.ily"   % Jazz package

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

\header {
  title = "Bill Evans and Eddie Gomez Play Invitation"
  composer = ""
}  

\score {
  %\clef treble  % Optional for treble clef
  %\key c \major % Optional for Key of C
  %\time 4/4     % Optional for Common Time

  <<
  \chords{ 
    \set minorChordModifier = \markup {"-"}

    %c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    %c1:m7 | f1:7  | bes1:7 | bes1:7 |
    %ees1:m7 | ees1:m7 | ees1:m7 | ees1:m7 | 
    %ees1:m7 | aes1:7  | des1:7  | des1:7 |

    %cis1:m7 | cis2:m7 fis,2:7.5+ | b1:m7 | b1:m7|
    %b1:m7 | b2:m7 e2:7.5+ | a1:m7 | a1:m7 |
    %a1:m7 | a2:m7 d2:7.5+ | g1:m7 | g1:m7 |
    %ees1:7.5- | ees1:7.5- | d1:7.9- | g1:7.5+ |

    %c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    %c1:m7 | f1:7  | bes1:7 | bes1:7 |
    %ees1:m7 | ees1:m7 | b1:7.5- | b1:7.5- |
    %f1:m7.5- | bes:7.9+ | ees1:m7+ | d2:7.9+ g2:7.9+ |
  }

  \relative c'{ 
    %\tempo 4 =130
    \jazzOn

    %r4 r8 \times2/3{r4 d8} f16 ees d ees g b
    %\break
    %\times2/3{d4 ees8} \times2/3{d4 c8} \times2/3{b4 d8} \times2/3{f4 aes8} 
    %\times2/3{g4 d8} \times2/3{d4 c8} \times2/3{d4 r8} r4 
    %\times2/3{r4 d8} \times2/3{ees4 g,8} \times2/3{b4 d8} r4 
    %\break
    %\times2/3{r4 d8} \times2/3{d4 c8} \times2/3{d4 f8} \times2/3{d4 c8} 
    %\times2/3{f4 c8} \times2/3{d4 ees8} \times2/3{c4 d8} r4 
    %\times2/3{r4 c8} \times2/3{d4 f8} \times2/3{d4 c8} \times2/3{d4 c8} 
    %\times2/3{d4 fis8} \times2/3{d4 c8} \times2/3{d4 ees8} \times2/3{d4 c8} 
    %\break
    %\times2/3{d4 c8} \times2/3{d8 c8 b8} \times2/3{c4 d8} \times2/3{ees4 e8} 
    %\times2/3{f8 fis g} \times2/3{gis8 a bes8}\times2/3{aes4 ges8}\times2/3{f4 ees8}
    %\times2/3{d4 ees8}\times2/3{f8 ges bes}\times2/3{des4 d8}\times2/3{f4 e8}
    %\times2/3{ees4 d8}\times2/3{cis8 ais fis}\times2/3{f4 ees8}\times2/3{aes4 g8}
    %\break
    %\times2/3{fis4 cis8} \times2/3{d4 f8} \times2/3{ees4 des8} \times2/3{bes4 ges8}
    %\times2/3{f4 ees8} \times2/3{aes4 ges8} \times2/3{f4 ees8} r4 
    %\times2/3{r4 ges8} \times2/3{r4 bes8} \times2/3{des4 f8} \times2/3{aes4 b8} 
    %\times2/3{a4 e8} \times2/3{c4 bes8} \times2/3{b4 a8} r4
    %\break
    %r4 \acciaccatura ees'16<e bes'>4\times2/3{aes8 e c} \times2/3{bes4 g8} 
    %\times2/3{aes4 bes16 aes} \times2/3{g4 f8}\times2/3{e4 f8}\times2/3{fis4 g8}
    %\times2/3{aes4 b8} \times2/3{des4 ees8} \times2/3{r4 ees,8} \times2/3{e4 aes8}
    %\times2/3{b4 dis8} \times2/3{fis4 dis8} \times2/3{d4 bes8} \times2/3{r4 d,8}
    %\break
    %\times2/3{fis4 a8}\times2/3{e'4 e16 d}\times2/3{cis4 d8}\times2/3{fis4 a8}
    %\times2/3{cis4 e8}\times2/3{d8 cis a}\times2/3{fis8 f e} d4
    %\times2/3{r4 d,8}\times2/3{fis4 a8}\times2/3{cis4 e8}\times2/3{d8 cis b}
    %\times2/3{d4 d,8}\times2/3{fis8 a cis}\times2/3{c4 f,8}\times2/3{aes4 c8}
    %\break
    %\times2/3{b4 g8}\times2/3{e4 c8}\times2/3{b4 c8}r4
    %\times2/3{r4 b8}\times2/3{c8 e g}\times2/3{bes b d}\times2/3{cis c b}
    %\times2/3{c4 e8}\times2/3{g4 b8}\times2/3{bes a aes}\times2/3{g4 fis8}
    %\times2/3{f4 e8}\times2/3{dis4 c8}\times2/3{d4 cis8}\times2/3{c4 bes8}
    %\break
    %\times2/3{ges4 a8}\times2/3{aes4 g8}\times2/3{ges4 f8}\times2/3{d4 bes8}
    %\times2/3{a4 c8}\times2/3{a4 bes8}\times2/3{g4 f8}r4
    %r4   des'16 f des bes   ees g ees c   f a f bes,  
    %g' bes g ees   a c a f   \times2/3{bes8 d g,} \times2/3{c ees aes,}
    %\break
    %\times2/3{d f bes,}\times2/3{ees g c,}\times2/3{f aes c,}\times2/3{g' bes ees,}
    %\times2/3{f aes des,}\times2/3{ees g ces,}\times2/3{d f bes,}\times2/3{c ees a,}
    %\times2/3{d f bes,}\times2/3{ees g c,}\times2/3{f aes des,}\times2/3{ees g c,}
    %\times2/3{f aes des,}\times2/3{g bes ees,}\times2/3{ees g c,}\times2/3{d f b,}
    %\break
    %\times2/3{ees g c,}\times2/3{c ees aes,}\times2/3{d f b,}\times2/3{c ees a,}
    %\times2/3{d f b,}\times2/3{b d g,}\times2/3{c ees a,}\times2/3{b d g,}
    %\times2/3{c ees a,}\times2/3{a c f,}\times2/3{<b d>4 r8}\times2/3{a c fis,}
    %\times2/3{b d fis,}\times2/3{gis b f}\times2/3{g bes f}\times2/3{f aes d,}
    %\break
    %\times2/3{g bes e,}\times2/3{e g c,}\times2/3{d fis b,}\times2/3{e gis c,}
    \times2/3{fis8 ais d,}\times2/3{d fis b,}\times2/3{r4 bes8}\times2/3{des 4 f8}
    \times2/3{aes4 aes16 ges}\times2/3{f4 ges8}\times2/3{bes4 des8} f16 fis g aes
    \times2/3{f4 ges8}\times2/3{bes,4 des8}\times2/3{f4 ees16 des}\times2/3{ces4 a8}
    \times2/3{aes4 ges8}\times2/3{f4 ees8}\times2/3{des4 ces8}\times2/3{ees4 ces8}
    \times2/3{des4 ees8}\times2/3{f4 g8}aes4\times2/3{a,4 bes8}
    
  }
  >>

  \midi {\tempo 4=150}
  \layout { }

}
