\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Lullaby for the stars"
    copyright = "© 2015"
    }

pause = \markup { \musicglyph #"scripts.ufermata" }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 80

    \time 2/4

    \relative e' {
        | gs4( a)
        | fs8( gs e4)
        | a8( fs gs4)

        \bar "||" \mark \pause

        | gs4( a)
        | fs8( gs e4)
        | a8( fs e4)

        \bar "||" \mark \pause

        | fs8( e d fs
        | e4 gs)

        \bar "||" \mark \pause

        | fs8( e d fs
        | e4 cs?)
        }

    % \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative f {
        << {
            | r4 c'
            | r <g c>
            | r <bf d>
            }
        \\ {
            | f2
            | e
            | d
            } >>

        << {
            | r4 <a' c>
            | r <g c>
            | r <bf d>
            }
        \\ {
            | f2
            | e
            | d
            } >>

        << {
            | r4 <f bf>
            | r <bf d>
            | r <f bf>
            | r <g bf>
            }
        \\ {
            | bf,2
            | c
            | bf
            | c
            } >>
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
