\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Menuet"
    copyright = "© 2015"
    }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \key f \major
    \tempo 4 = 120

    \relative f' {
        \time 4/4
        | f4 f8 g a4 c ~
        \time 5/4
        | c8 f e c d4\prall d\prall c ~
        \time 4/4
        | c4 d8 e f4 a
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
        #(set-accidental-style 'piano)
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
