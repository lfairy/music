\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 22)

\header {
    title = "How Doth The Little Crocodile"
    poet = "Lewis Carroll"
    copyright = "© 2015"
    }

vocals = <<
    \relative c' {
        \clef treble
        \set Staff.instrumentName = #"Voice"
        \set Staff.midiInstrument = #"acoustic grand"
        \tempo "Lazily" 4 = 80
        \time 4/4

        \partial 8
        c'8
        | c fs, fs fs a16 g a8 ~ a e
        | e g fs d c4 r8 c'
        | c b e, g \times 2/3 { a g fs ~ } fs e
        | e g fs d e4 r8

        c'8
        | c fs, fs fs a g16 b ~ b8 e,
        | e g ef a d,4 r8 c'
        | c b e, g \times 2/3 { a g b ~ } b f?
        | e a ef d c2

        \bar "|."
        }

    \addlyrics {
        How doth the lit -- tle croc -- o -- dile
        Imp -- rove his shin -- ing tail,
        And pour the wat -- ers of the Nile
        On ev -- ery gold -- en scale!

        How cheer -- ful -- ly he seems to grin,
        How neat -- ly spread his claws,
        And wel -- come lit -- tle fish -- es in
        With gent -- ly smi -- ling jaws!
        }
    >>

right_hand = \relative c' {
    r8
    << {
        | c4 c d16 e fs8 ~ fs b,
        | <g c e>4 <a d fs> <f a c>2
        }
    \\ {
        | <g e'>2_\markup { \small \italic "arpeggiatedly" } <fs a>
        } >>
    }

left_hand = \relative c {
    \clef bass
    r8
    << {
        | s2 a4 a
        }
    \\ {
        | <c, g' c>2 <d d'>
        | <c g' c>4 <d a' d> <f? c'>2
        } >>
    }

stuff = <<
    \vocals
    \new PianoStaff <<
        \set PianoStaff.instrumentName = #"Piano"
        \new Staff \right_hand
        \new Staff \left_hand
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
