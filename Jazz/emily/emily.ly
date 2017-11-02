\version "2.18.2"
\require "lilyjazz"

#(set-global-staff-size 25)

\header {
  title = "Emily"
  composer = "Johnny Mandel"
}  

\score {

  <<
  \chords{ 
    \set minorChordModifier = \markup {"-"}
    %\set majorChordModifier = \markup {"Maj"}

    g2.:maj7 | e:min7 | a:min7 | d:7 |
    g:maj7   | g:7    | c:maj7 | f:7 |

    e:maj7 | cis:min7 | fis:min7 | b:7.9- |
    e:min7 | a:7 | a:min7 | d:7.5+ |

    g:maj7 | e:min7 | a:min7 | d:7 |
    g:maj7 | g:7 | c:maj7 | b:7 |

    e:min7 | fis:7.13- | b:min7 | e:7 |
    a:min7 | d:7 | b:min7.5- | e:7.9- |

    cis:min7.5- | c:min6 | b:min7 | e:7.9- |
    a:min7 | d:7 | g:maj7 | d:7 |
  }

  \relative c' { 
    \jazzOn
    \key g \major
    \clef treble
    \time 3/4
    \revert Score.BarNumber.stencil % required to show bar numbers in lilyjazz

    b'8 fis' d2 | b8 fis' d2 | b8 fis' d2 | r4 b4. a8 | %\break
    g4 a b | e d b | g2.~ | g2. | %\break

    b4 e,2 | b'4 e,2 | b'4 e,2 | r4 g fis | %\break
    e fis g | a'2 g4 | a,2. | ais | %\break

    b8 fis' d2 | b8 fis' d2 | b8 fis' d2 | r4 d c | %\break
    b c d | b' a g | e2. | fis | %\break

    g4 fis e | d2 cis4 | d8 e fis2 | r4 e d | %\break
    c8 d e2 | r4 d c | b8 c d2~ | d2. | %\break

    g4 fis e | d2 c4 | b2 fis'4 | d2. | %\break
    b8 fis' d2 | b8 fis' d2 | b8 fis' d2~ | d2. | %\break
  }
  >>

  \midi{ \tempo 4 = 160 }
  \layout{}
}
