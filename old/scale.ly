\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Scale thing"
    copyright = "© 2015"
    }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 60

    \time 4/4

    \relative c' {
        << {
            | fs8. b16 a4 b8. ds16 cs4
            | c8. a16 b4 a8. ds,16 e4
            | fs8. b16 a4
            }
        \\ {
            } >>
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
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
