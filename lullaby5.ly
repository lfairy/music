\version "2.20.0"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Lullaby for a restless night"
    copyright = "© 2021"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4. = 45
    \time 6/8

    \clef treble
    \relative c' {
        | g'4\( c8 b4 a8
        | f4 d8 f4.\)
        | d4\( b'8 a4 g8
        | e4 c8 e4.\)
        }

    \relative c' {
        | g'4\( e8 g4 e8
        | g4 cs,8 cs4.\)
        | a'4\( f8 a4 f8
        | a4 d,8 d4.\)
        | g4\( d8 e4 f8
        | g4 b8 g4.\)\fermata
        }

    \break

    \relative c' {
        | g'4\( c8 b4 a8
        | f4 d8 f4.\)
        | d4\( b'8 a4 g8
        | e4 c8 e4.\)
        }

    \relative c' {
        << {
            | g'4\( e8 g4 e8
            | g4 cs,8 cs4.\)
            | a'4\(-> f8 a4-> f8
            | a4 d,8 d4.\)
            }
        \\ {
            | b4. b
            | r4. <g cs>4.
            | <gs c>-> <a cs>->
            | <a d>2.
            } >>
        | g'4\( d8 e4 f8
        | g4 b8 g4. ~
        | g2.\)\fermata
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        | c8 g' e' e, g e'
        | d, a' \parenthesize d c, a' d
        | b, g' d' g,, g' ds'
        | c, g' \parenthesize c g, c g'
        }

    \relative c {
        << {
            | r8 e g r e g
            | r a g e cs a
            | r8 f' a r f a
            | r a f c b a
            }
        \\ {
            | e4. ds
            | cs2.
            | f4. e
            | d2.
            } >>
        | g,8 g' d' f g b ~
        | b <d f>4 ~ q4.
        }

    \relative c {
        << {
            | r8 g' e' r g, e'
            | r a, d r a d
            | r g, d' r g, ds'
            | r g, \parenthesize c r g c
            }
        \\ {
            | <c,, c'>4. <e e'>
            | <d d'> <c c'>
            | <b b'> <g g'>
            | <c c'> <g g'>
            } >>
        }

    \relative c {
        << {
            | r8 e g r e g
            | r <a, a'> <g g'> <e e'> <cs cs'> <a a'>
            }
        \\ {
            | <e e'>4. <ds ds'>
            % | cs4.
            } >>
        | <f f'>4.-> <e f'>->
        | <d' f'>2.\arpeggio
        | g,8\( g' d' f g b ~
        | b <d f>4\) r4.
        | <c e>2.\fermata
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
