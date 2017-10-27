% Writing Functions in lilypond:
% http://lilypond.org/doc/v2.16/Documentation/extending-big-page.html#scheme-variables
% \version "2.16.1"
\require "lilyjazz"   % Jazz package

% Example: 
% musicA = \relative c' { r4 f4 f4 e4 | e1 | } 

#(set-global-staff-size 25)

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

    %c1:m7 | c1:m7 |
    c1:m7 | c1:m7 | c1:m7 | c1:m7  |
    c1:m7 | c1:m7 | f1:7  | bes1:7 |

    ees1:m7 | ees1:m7 | ees1:m7 | ees1:m7 | 
    ees1:m7 | aes1:7  | des1:7  | des1:7 |

    cis1:m7 | cis2:m7 fis,2:7.5+ | b1:m7 | b1:m7|
    b1:m7 | b2:m7 e2:7.5+ | a1:m7 | a1:m7 |
    a1:m7 | a2:m7 d2:7.5+ | g1:m7 | g1:m7 |
    ees1:7.5- | ees1:7.5- | d1:7.9- | g1:7.5+ |

    c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    c1:m7 | f1:7  | bes1:7 | bes1:7 |
    ees1:m7 | ees1:m7 | b1:7.5- | b1:7.5- |
    f1:m7.5- | bes:7.9+ | ees1:m7+ | d2:7.9+ g2:7.9+ |
    
    r1 r1 r1 r2 

    c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    c1:m7 | f1:7  | bes1:7 | bes1:7 |

    ees1:m7 | ees1:m7 | ees1:m7 | ees1:m7 | 
    ees1:m7 | aes1:7  | des1:7  | des1:7 |

    cis1:m7 | cis2:m7 fis,2:7.5+ | b1:m7 | b1:m7|
    b1:m7 | b2:m7 e2:7.5+ | a1:m7 | a1:m7 |
    a1:m7 | a2:m7 d2:7.5+ | g1:m7 | g1:m7 |
    ees1:7.5- | ees1:7.5- | d1:7.9- | g1:7.5+ |

    c1:m7 | c1:m7 | c1:m7  | c1:m7 |
    c1:m7 | f1:7  | bes1:7 | bes1:7 |
    ees1:m7 | ees1:m7 | b1:7.5- | b1:7.5- |
    f1:m7.5- | bes:7.9+ | ees1:m7+ | d2:7.9+ g2:7.9+ |
    %f1:m7.5- | bes:7.9+ | ees1:m7+ | ees1:m7+ |
    %d1:7.9- | g1:7.5+ | c1:m7  | f1:7 |
  }

  \relative c'{ 
    %\tempo 4 =130
    \jazzOn

    r4 r8 \times2/3{r4 d8} f16 ees d ees g b
    %\break
    \times2/3{d4 ees8} \times2/3{d4 c8} \times2/3{b4 d8} \times2/3{f4 aes8} 
    \times2/3{g4 d8} \times2/3{d4 c8} \times2/3{d4 r8} r4 
    \times2/3{r4 d8} \times2/3{ees4 g,8} \times2/3{b4 d8} r4 
    \break
    \times2/3{r4 d8} \times2/3{d4 c8} \times2/3{d4 f8} \times2/3{d4 c8} 
    \times2/3{f4 c8} \times2/3{d4 ees8} \times2/3{c4 d8} r4 
    \times2/3{r4 c8} \times2/3{d4 f8} \times2/3{d4 c8} \times2/3{d4 c8} 
    \times2/3{d4 fis8} \times2/3{d4 c8} \times2/3{d4 ees8} \times2/3{d4 c8} 
    \break
    \times2/3{d4 c8} \times2/3{d8 c8 b8} \times2/3{c4 d8} \times2/3{ees4 e8} 
    \times2/3{f8 fis g} \times2/3{gis8 a bes8}\times2/3{aes4 ges8}\times2/3{f4 ees8}
    \times2/3{d4 ees8}\times2/3{f8 ges bes}\times2/3{des4 d8}\times2/3{f4 e8}
    \times2/3{ees4 d8}\times2/3{cis8 ais fis}\times2/3{f4 ees8}\times2/3{aes4 g8}
    \break
    \times2/3{fis4 cis8} \times2/3{d4 f8} \times2/3{ees4 des8} \times2/3{bes4 ges8}
    \times2/3{f4 ees8} \times2/3{aes4 ges8} \times2/3{f4 ees8} r4 
    \times2/3{r4 ges8} \times2/3{r4 bes8} \times2/3{des4 f8} \times2/3{aes4 b8} 
    \times2/3{a4 e8} \times2/3{c4 bes8} \times2/3{b4 a8} r4
    \break
    r4 \acciaccatura ees'16<e bes'>4\times2/3{aes8 e c} \times2/3{bes4 g8} 
    \times2/3{aes4 bes16 aes} \times2/3{g4 f8}\times2/3{e4 f8}\times2/3{fis4 g8}
    \times2/3{aes4 b8} \times2/3{des4 ees8} \times2/3{r4 ees,8} \times2/3{e4 aes8}
    \times2/3{b4 dis8} \times2/3{fis4 dis8} \times2/3{d4 bes8} \times2/3{r4 d,8}
    \break
    \times2/3{fis4 a8}\times2/3{e'4 e16 d}\times2/3{cis4 d8}\times2/3{fis4 a8}
    \times2/3{cis4 e8}\times2/3{d8 cis a}\times2/3{fis8 f e} d4
    \times2/3{r4 d,8}\times2/3{fis4 a8}\times2/3{cis4 e8}\times2/3{d8 cis b}
    \times2/3{d4 d,8}\times2/3{fis8 a cis}\times2/3{c4 f,8}\times2/3{aes4 c8}
    \break
    \times2/3{b4 g8}\times2/3{e4 c8}\times2/3{b4 c8}r4
    \times2/3{r4 b8}\times2/3{c8 e g}\times2/3{bes b d}\times2/3{cis c b}
    \times2/3{c4 e8}\times2/3{g4 b8}\times2/3{bes a aes}\times2/3{g4 fis8}
    \times2/3{f4 e8}\times2/3{dis4 c8}\times2/3{d4 cis8}\times2/3{c4 bes8}
    \break
    \times2/3{ges4 a8}\times2/3{aes4 g8}\times2/3{ges4 f8}\times2/3{d4 bes8}
    \times2/3{a4 c8}\times2/3{a4 bes8}\times2/3{g4 f8}r4
    r4   des'16 f des bes   ees g ees c   f a f bes,  
    g' bes g ees   a c a f   \times2/3{bes8 d g,} \times2/3{c ees aes,}
    \break
    \times2/3{d f bes,}\times2/3{ees g c,}\times2/3{f aes c,}\times2/3{g' bes ees,}
    \times2/3{f aes des,}\times2/3{ees g ces,}\times2/3{d f bes,}\times2/3{c ees a,}
    \times2/3{d f bes,}\times2/3{ees g c,}\times2/3{f aes des,}\times2/3{ees g c,}
    \times2/3{f aes des,}\times2/3{g bes ees,}\times2/3{ees g c,}\times2/3{d f b,}
    \break
    \times2/3{ees g c,}\times2/3{c ees aes,}\times2/3{d f b,}\times2/3{c ees a,}
    \times2/3{d f b,}\times2/3{b d g,}\times2/3{c ees a,}\times2/3{b d g,}
    \times2/3{c ees a,}\times2/3{a c f,}\times2/3{<b d>4 r8}\times2/3{a c fis,}
    \times2/3{b d fis,}\times2/3{gis b f}\times2/3{g bes f}\times2/3{f aes d,}
    \break
    \times2/3{g bes e,}\times2/3{e g c,}\times2/3{d fis b,}\times2/3{e gis c,}
    \times2/3{fis8 ais d,}\times2/3{d fis b,}\times2/3{r4 bes8}\times2/3{des 4 f8}
    \times2/3{aes4 aes16 ges}\times2/3{f4 ges8}\times2/3{bes4 des8} f16 fis g aes
    \times2/3{f4 ges8}\times2/3{bes,4 des8}\times2/3{f4 ees16 des}\times2/3{ces4 a8}
    \break
    \times2/3{aes4 ges8}\times2/3{f4 ees8}\times2/3{des4 ces8}\times2/3{ees4 ces8}
    \times2/3{des4 ees8}\times2/3{f4 g8}\times2/3{aes8 r4}\times2/3{a,4 bes8}
    \times2/3{ces4 ees8}\times2/3{g4 bes8}\times2/3{des8 r c,}\times2/3{des4 d8}
    \times2/3{fis4 ais8}\times2/3{cis4 d8}\times2/3{r4 d,8}\times2/3{ees4 f8}
    \break
    \times2/3{fis4 ais8}\times2/3{d4 f8}\times2/3{r4 f,8}\times2/3{fis4 ais8}
    \times2/3{d4 f8}\times2/3{aes4 bes8}\times2/3{r4 aes8}\times2/3{f4 c8}
    \times2/3{bes4 g8}\times2/3{aes4 bes8}\times2/3{b4 d8}\times2/3{f4 aes8}
    \times2/3{b4 d8}\times2/3{f4 ees16 c}\times2/3{g4 ges8}\times2/3{f4 ees8}
    \break
    \times2/3{d4 des8}\times2/3{c4 bes8}\times2/3{b4 g8}\times2/3{r4 fis8}

    \time 2/4 \times2/3{g4 d'8}\times2/3{ees4 d8~} \time 4/4

    \break
    d1~
    \times2/3{d4 g,8}\times2/3{c4 d8}\times2/3{g4 c8}\times2/3{d4 c8~}
    c2.\times2/3{g4 fis8}
    \times2/3{f4 ees8}\times2/3{c4 g8}\times2/3{fis4 f8}r4
    r4\times2/3{r4 ees8}\times2/3{f4 g8}\times2/3{bes4 g8}
    \break
    a4 \times2/3{bes4 c8}\times2/3{d4 ees8}\times2/3{f4 ges8}
    f4 \times2/3{e4 f8}\times2/3{g4 aes8}\times2/3{bes4 ces8}
    \times2/3{bes8 aes g}\times2/3{f4 e8}\times2/3{aes4 ges8}\times2/3{f4 ees8}
    f4~ \times2/3{r4 bes,8} bes4 bes
    \break
    bes bes \times2/3{bes4 des8}\times2/3{f4 aes8}
    \times2/3{f4 ges8}\times2/3{bes4 des8}\times2/3{f4 aes8}\times2/3{f4 fis8}
    \times2/3{d4 ees8}\times2/3{a,4 bes8}\times2/3{f4 ges8}\times2/3{d4 ees8}
    r4 \times2/3{ges,4 bes8}\times2/3{des4 f8}\times2/3{aes4 b8}
    \break
    \times2/3{a8 e c}\times2/3{b4 a8}\times2/3{b4 a8}\times2/3{aes4 ges8}
    \times2/3{r4 bes'8}\times2/3{aes8 e c}\times2/3{bes4 aes8}\times2/3{bes4 aes8}
    \times2/3{g4 f8}\times2/3{e4 g8}\times2/3{e4 f8}r4
    \times2/3{r4 e8}\times2/3{gis4 b8}\times2/3{ees4 b8}\times2/3{des4 e8}
    \break
    gis4 \acciaccatura bes8 \times2/3{b4 bes8~} bes4 \times2/3{aes4 ges8~}
    ges4~ \times2/3{ges4 cis,8}\times2/3{e4 ees8}\times2/3{c4 cis8}
    \times2/3{d4 fis8}\times2/3{a4 cis8}\times2/3{e4 ees8} \times2/3{d8 r4}
    r4 {cis16 e cis b} \times2/3{b8 d bes}\times2/3{b cis a}
    \break
    \times2/3{bes b gis}\times2/3{a b g}\times2/3{aes bes ges}\times2/3{ges aes f}
    \times2/3{fis g e}\times2/3{e fis d}\times2/3{d e c}\times2/3{c d b}
    \times2/3{r4 d16 c16}\times2/3{b4 c8}\times2/3{e4 g8}\times2/3{b4 bes8}
    \times2/3{a8 r aes}\times2/3{g8 fis f}\times2/3{e4 ees8}\times2/3{d4 des8}
    \break
    \times2/3{c4 d8}\times2/3{ees4 f8}\times2/3{aes4 ges8}\times2/3{f4 ees8}
    \times2/3{d4 bes8}\times2/3{g4 aes8}\times2/3{a4 c8}\times2/3{a4 bes8}
    \times2/3{d4 f8}\times2/3{a4 f8}\times2/3{bes4 f8} r4
    \ottava #1
    \times2/3{r4 ees'8}\times2/3{r8 a, f}\times2/3{ees4 des8} r4
    \break
    \times2/3{r4 f'8}\times2/3{ees c g}\times2/3{f4 ees8} r4
    \times2/3{r4 bes''8}\times2/3{aes ees c}\times2/3{bes4 aes8}\times2/3{r4 ees''8}
    \times2/3{d des c}\times2/3{b4 aes8}\times2/3{g4 fis8}\times2/3{f4 e8}
    \times2/3{ees4 g8}\times2/3{d4 g8}\times2/3{d4 c8} r4
    \break
    \times2/3{r4 g8}\times2/3{c4 g'8}\times2/3{c,4 b8} r4
    \times2/3{r4 g8}\times2/3{b4 g'8}\times2/3{b,4 g8}\times2/3{bes4 g'8}
    \times2/3{bes,4 a8} r4 \times2/3{r4 g8} \times2/3{aes4 g'8}
    \times2/3{a,4 g8} r4 \times2/3{r4 g8}\times2/3{d'4 g8}
    \break
    \times2/3{cis,4 fis,8} r4 \times2/3{r4 fis8} \times2/3{cis'4 fis8}
    \times2/3{f4 f,8} \times2/3{c'4 f8} \times2/3{e4 e,8} \times2/3{b'4 e8}
    \times2/3{d4 d,8}\times2/3{a'4 d8} \times2/3{cis4 cis,8} r4
    \ottava #0
    r4 \times2/3{c8 f c'}\times2/3{bes4 c,8}\times2/3{aes'4 f8}
    \break
    \times2/3{g4 d8}\times2/3{f4 ees8}\times2/3{des4 bes8} \times2/3{ges8 r4}
    \times2/3{r4<cis'gis'>8}\times2/3{fis cis a}\times2/3{gis4 g8}\times2/3{fis4 f8}
    \times2/3{ees4 des8}\times2/3{ces4 bes8}\times2/3{aes4 g8}\times2/3{bes4 g8}
    \times2/3{aes4 bes8}\times2/3{b4 ees8}\times2/3{ges4 bes8}\times2/3{r4 des8}
    \break
    \times2/3{b fis d}\times2/3{cis4 b8}\times2/3{bes4 aes8} r4 
    r4 \times2/3{r4 bes8}\times2/3{b4 c8}\times2/3{cis4 d8}
    \times2/3{ees e f} \times2/3{d4 cis8}\times2/3{c4 b8}\times2/3{bes4 g8}
    \times2/3{aes4 bes8} \times2/3{c4 d8}\times2/3{e4 g8}\times2/3{bes4 aes8}
    \break
    \times2/3{ees4 b8} \times2/3{bes4 aes8}\times2/3{g4 f8} r4 
    r4 \times2/3{r4 d'8}\times2/3{d4 c8}\times2/3{d4 c8}
    \times2/3{g4 ees8} \times2/3{bes'4 aes8} \times2/3{g4 f8} \times2/3{ees4 c8} 
    \times2/3{d4 ees8}\times2/3{g4 d'8} a2
  }
  >>

  \midi {\tempo 4=200}
  \layout { }

}
