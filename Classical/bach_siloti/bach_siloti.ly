% Bach E minor Prelude (from WTC) transcribed into B minor by Siloti
\version "2.18.2"
\require "lilyjazz"


\header {
  title = "Prelude"
  composer = "Bach-Siloti"
}  

info = {
  \key b \minor
  \time 4/4
  \jazzOn
  \revert Score.BarNumber.stencil % required to show bar numbers in lilyjazz
}

upper = \relative c'' { \clef treble
  \info
  % The `\stemDown` eliminates the need for a new voice
  %<<
  %\new Voice = "first" { \voiceTwo
    b16 d e fis    e fis e d     b d e fis    e fis e d
    b16 e fis g    fis g fis e   b16 e fis g  fis g fis e 
    \break
    ais, cis d e   d e d cis     ais cis d e    d e d cis 
    b16 d e fis    e fis e d     b d e fis    e fis e d
    \break
    \stemDown
    g, cis d e   d e d cis   fis, cis' d e   d e d cis  
    fis, b cis d    cis d cis b     e, b' cis d     cis d cis b
    \break
    e, cis' d e   d e d cis d, d' e fis   e fis e d
    g, b cis d     cis d cis b    g cis d e d     e d cis
    \break
    g e' fis g     fis g fis e     fis, fis' g a     g a g fis
    e, gis' a b     a b a gis     e ais b cis     b cis b ais
    \break
    d, b' cis d     cis d cis b    b, d e fis    e fis e d
    g, e' fis g     fis g fis e     c fis g a     g a g fis
    \break
    b, g' a b a b a g    g, b cis d cis d cis b
    e, cis' d e d e d cis    a dis e fis e fis e dis
    \break
    g, e' fis g fis g fis e    d e fis g fis g fis e
    cis e fis g fis g fis e    b e fis g fis g fis e
    \break
    ais, e' fis g fis g fis e   ais, e' fis g fis g fis e
    a, dis e fis e fis e dis     gis, b cis d cis d cis b
    \break
    g cis d e d e d cis    fis, b cis d cis d cis b
    eis, b' cis d cis d cis b    fis cis' d e d e d cis
    \break
    fis, b cis d cis d cis b     b dis e fis e fis e dis
    b e fis g fis g fis e    ais, e fis g fis g fis e 
    <dis fis b>1 \bar "|."
  %}
  %>>
}

lower = \relative c { \clef bass
  \info

  <<
  \new Voice = "first" { \voiceOne
    b'2 d | cis1 |
    cis2  e | d1 |

    \change Staff = "upper"
    g2 fis | fis e 
    e d | g g |
    g fis | e e' |
    d b | g c |
    b g | e a |
    g d' | cis b |
    ais ais | a gis |
    g fis | eis fis |
    fis b | b ais |
  }

  \new Voice = "second" \relative c { \voiceTwo
    <b d fis>4 r <fis' b> r    <b, e g> r2.
    <b fis'>4 r  <fis' cis'> r <b, fis'> r2.
    <b e d'>4 r  <a e' cis'> r <a d cis'> r <g d' b'> r 
    <g cis a'> r <fis d' a'> r <e b' g'> r <a e' cis'> r
    <d, a' e'> r <d' fis a d> r <d e gis b> r <cis fis ais fis'> r
    <b fis' d'> r <fis' b d fis> r <b, e g c> r <a d fis d'> r
    <g d' b'> r <d' g b  d> r  <g, cis e a> r <fis b dis b'> r
    <e b' g'> r <b' e g b> r <ais e' g cis> r <d g b d> r
    <cis g' ais e'> r <fis, e' ais> r 
    fis32 dis' b'16 r8 r4 eis,,32 b' gis'16 r8 r4
    e,32 b' g'16 r8 r4 fis,32 d' b'16 r8 r4
    \tuplet 3/2 16 {fis,32 cis' gis' } b16 r8 r4
    \tuplet 3/2 16 {fis,32 cis' fis } ais16 r8 r4

    \tuplet 3/2 16 {b,,32 b' fis'} d'16 r8 r4
    \tuplet 3/2 16 {b,32 fis' a} dis16 r8 r4

    \tuplet 3/2 16 {b,32 e g} e'16 r8 r4
    \tuplet 3/2 16 {b,32 e g} cis16 r8 r4

    <b, fis' b>1
  }
  >>
}

\score {
  \new PianoStaff <<
    \accidentalStyle piano % needed so that accidentals carry to next measure
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
