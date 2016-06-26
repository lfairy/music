\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Lullaby no. 2"
    copyright = "© 2015"
    }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 60

    \time 4/4

    \relative c' {
        | e8 ds e fs g4 fs
        | e8 ds e c e4 e
        }

    % \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        | c4 cs8 ds \times 2/3 { e8 fs g } a4
        | g8 a bf a g4 fs
        }

    }

stuff = <<
    \new PianoStaff <<
        \new Staff = "A" { \A }
        \new Staff = "B" { \B }
        >>
    >>

\score {
    \stuff
    \layout { }
    }

\score {
    \articulate \stuff
    \midi { }
    }
