\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Lullaby no. 3"
    copyright = "© 2015"
    }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4. = 60

    \time 6/8

    \relative c'' {
        | R8*6

        | df4. c
        | ef8 fs gs ef8. df16 c8
        | b8 a fs a4 r8

        | df4. c
        | ef8 fs gs a8. gs16 fs8
        | bf16 a gs8 fs ef4 r8

        \time 9/8
        << {
            | df4. b a16 fs e8 e
            | df'4. b fs16 e ds8 ds
            }
        \\ {
            | e4. ds c
            | e ds c
            } >>

        \time 6/8
        | df'4. c
        | ef8 fs gs ef8. df16 c8
        | b16 a fs8 b a4 r8
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        | fs4( a8) fs4( a8)

        \repeat unfold 5 {
            | fs4( a8) fs4( a8)
            }
        | fs4( a8) fs4 r8

        | <bf, fs'>4. <c fs> <ef fs>
        | <bf fs'> <c fs> << { a'16 g fs8 f } \\ ef4. >>

        << {
            | fs4( a8) fs4( a8)
            | fs4( a8) fs4( a8)
            | fs4( a8) fs4 r8
            }
        \\ {
            | bf,4. a
            | bf a
            | bf ~ bf4 s8
            } >>

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
