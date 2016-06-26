\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Lullaby no. 4"
    copyright = "© 2015"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 72

    \time 3/4

    \clef bass
    \relative c' {
        << {
            | e4 r f(
            | e) r ef8( a
            | e4 c) b(~
            | b a) g(
            | f) r e8( a
            | d,4) r c8( a')
            }
        \\ {
            | c4 r b(
            | c) r b
            | c r <d, f> ~
            | q2 e4(
            | d) r cs(
            | d) r a
            } >>
        }

    \clef treble
    \relative c'' {
        | r4 b( c
        | b) c8( b a e'
        | g,4) a8( g fs e'
        | f,4 e d
        | c) r b8( e
        | a,4) r g8( e'
        | fs,4)
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        | c4 r df
        | c r df
        | c r g ~
        | <f, g'>2 <cs cs'>4
        | <d d'> r <e e'>
        | <f f'> r <fs fs'>

        | <g b'>
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
