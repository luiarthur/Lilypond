% Writing Functions in lilypond:
% http://lilypond.org/doc/v2.16/Documentation/extending-big-page.html#scheme-variables
% \version "2.16.1"
% Transcription for Rachmaninoff's Op 21 No 7 for Piano Solo.

upper = \relative c'' {
  \clef treble
  \key fis \minor

  \times 2/3{<a cis>8 cis, <a' cis>}
  \times 2/3{<a cis>8 cis, <a' cis>}
  \times 2/3{<a cis>8 cis, <a' cis>}
  \times 2/3{<a cis>8 cis, <a' cis>} |
}

lower = \relative c {
  \clef bass
  \key fis \minor
  \time 4/4
  
  r2 e2 |
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
