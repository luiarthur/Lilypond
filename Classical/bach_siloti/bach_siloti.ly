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
}

upper = \relative c'' { \clef treble
  \info

  b16 d e fis    e fis e d     b d e fis    e fis e d
  b16 e fis g    fis g fis e   b16 e fis g  fis g fis e 
  \break
  ais, cis d e   d e d cis     ais cis d e    d e d cis 
  b16 d e fis    e fis e d     b d e fis    e fis e d
}

lower = \relative c { \clef bass
  \info

  <<
  \new Voice = "first" { \voiceOne
    b'2 d | cis1 |
    cis2  e | d1 |
  }

  \new Voice = "second" { \voiceTwo
    <b, d fis>4 r <fis' b> r <b, e g> r4 r2
    <b fis'>4 r <fis' cis'> r <b, fis'> r4 r2
  }
  >>
}

\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  %\midi { }
}
