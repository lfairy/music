\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Boat song"
    copyright = "© 2017"
    }

flute = \relative c'' {
    \clef treble
    \set Staff.instrumentName = #"Flute"
    \set Staff.midiInstrument = #"flute"
    \tempo "Lazily" 4. = 42
    \time 6/8

    | R2.*2

    | bf'4.( g)
    | f16( g f8 ef c4.)
    | bf8( g-.) ef'-. c( a-.) f'-.
    | d4-- r8 a'4.( ~
    | a4 bf8 g4) f16( ef
    | f g f8 ef c4) r8
    | bf8( g-.) ef'-. c( a-.) f'-.
    | d2.

    | R2.

    \bar "|."
    }

right_hand = \relative c' {
    \clef treble

    | R2.*2

    | R2.*9

    \clef bass

    \repeat unfold 8 { | c,8( g' c) d,( a' d) }
    | c,2.

    }

left_hand = \relative c {
    \clef bass

    | c8( g' c) d,( a' d)
    | c,( g' c) d,( a' d)
    \repeat unfold 9 { | c,( g' c) d,( a' d) }

    \repeat unfold 4 { | <c,, e'>2. ~ | q }
    | R2.

    }

stuff = <<
    \flute
    \new PianoStaff <<
        #(set-accidental-style 'piano)
        \set PianoStaff.instrumentName = #"Piano"
        \set PianoStaff.connectArpeggios = ##t
        \new Staff = "R" \right_hand
        \new Staff = "L" \left_hand
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
