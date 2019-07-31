\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Dumb fabric"
    subtitle = \markup {
        "is the second movement of"
        \italic "Cutie Mark Crusaders Classical Composers Yay!"
        }
    copyright = "© 2019"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"

    \time 4/4

    \clef treble
    \relative c' {
        \partial 4 g'16 f e d
        | c4 r r g'16 f e d
        | c4 r r g'16 f e d
        | c8 c4 cs d8 f a
        | c,4 r r
        }

    \relative c' {
        g'16 f e d
        | c4 r r g'16 f e d
        | c4 r r g'16 f e d
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        \partial 4 r4
        | <g f'> r r2
        | q4 r r2
        | r8 <a f'>4 q << f'4. \\ { af,8 g fs } >>
        | <g f'>4 r r2
        }

    \relative c {
        | << f2 \\ { e,8 f4 fs8 } >> r2
        | << f'2 \\ { af,8 g4 fs8 } >> r2
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
