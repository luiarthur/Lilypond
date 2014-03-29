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

      e2:m7/a   a2:7.9-  | d1:maj7/a |
      e2:m7/a   a2:7     | d1:maj7/a |

      d2:m7/g   g2:7.9-  | c1:maj7/g |
      d2:m7/g   g2:7     | c2:maj7 c2:7|

      fis2:m7/b b2:7.5+  | e2:m7 bes2:7.11+|
      a1:7.5+ | d2:m7 aes2:7.11+ |

      g1:7.5+ | c2:m7 ees2:7 |
      aes2:maj7 c2:7.5+| f1:m7|

      d2:m7.5- g:7.9+ | c2:m7 ees2:7|
      aes2:maj7 g2:7  | c2:maj7 fis:7|

      b2:m7.5- e2:7.9- | a1:m7 |
      ees2:m7/aes aes2:7.9- | cis2:m7 \parenthesize fis2:7 |
    }

    \relative c' {
      \new Staff {
      \jazzOn
        r4 <a d f>4 <aes des f>4 e'4 | <g, b c e>1 | 
        r4 <a d f>4 <aes des f>4 e'4 | <g, b c e>1 | 
        \break
        aes'2 ~ aes8 c,8 d8 ees8| f4 g4 aes4 bes4 | 
        c2 ~ c8 e,8 fis8 g8 | a4 b4 c4 d4 | 
        \break
        r4 e4 e4 dis4 | dis1 |
        r4 cis4 dis4 e4 | ees des ees ces |
        \break
        des2 ~ des8 ces8 des8 ees8 | des4 d4 des4 ces4 | 
        bes4. aes8 ges2~|ges4 aes4 bes4 des4 |
        \break
        fis4 a,4 bes4 fis'4 | e2 ~ \times 2/3 {e8 cis8 b8} a4 |
        d2 ~ d8 g,8 a8 b8 | cis4. a16 g16 fis2 |
        \break
        e'4 g,4 aes4. e'8 | d2 ~ \times 2/3{d8 b8 a8} g4 |
        r8 c8 a4 b4 c4 | d4 c4 d4 e4 |
        \break
        fis g b, dis | e1 |
        r4 f a, cis | d1 |
        \break
        r4 dis g, b | d c c4. bes8 |
        bes4 aes4 aes4. g8 | g2~g4. ees8 |
        \break
        f4 g bes aes | g4. aes8 aes4 g |
        g4. f8 f4. e8 | e1 |
        \break
        r4 f f e |e1 | 
        r4 f f e |e1 |

      }
    }

    \new Staff {
      \clef bass
      \relative c {
        \jazzOn
        b,2 e2 | a,1 |
        b2 e2 | a,1 |
        f'2 bes2 | ees,2 c2|
        a2 d2 | g2 e2 |
        cis2 fis2 | b,2 gis'2 |
        <cis b'>1 | <bes aes' des>2  ees,2 |
      }
    }  
  >>

  \midi {\tempo 4=120}
  \layout {}

}
