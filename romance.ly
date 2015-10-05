\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 27)

\header {
    title = "Romance"
    copyright = "© 2015"
    }

stuff = \relative c'' {
    \set Staff.midiInstrument = #"violin"
    \tempo "Expressively" 4 = 84

    \key d \minor

    \time 3/4
    | c2(\downbow f,4)
    | e( c') d8(-- e--)
    | ef2( b4)
    | d2.\downbow

    | g,4-- fs-- d'--
    | e( f) d(
    | e) f-- d--

    | cs2(\fermata gs4)
    | cs2(\fermata g4)

    \bar "||"

    | fs'2( b,4)
    | f'2 g,4(
    | ef') f8-- g-- f4--
    | d( c bf)
    | d( cs b)

    | a2.
    | g4 fs d'
    | a2.
    | g8 a fs4 d'
    | e( fs) d(
    | e) fs-- d--

    | d'2(\fermata g,4)
    | cs fs, a
    | c d8 e d4
    | b a g
    | bf a g

    | f2.
    | ef4 d a'
    | f2.
    | ef8 f d4 ef

    \bar "||"

    | c2( f,4)
    | e( c') d8 e
    | ef2( b4)
    | d2( a4)
    | d2.\fermata

    \bar "|."

    }

\score {
    \new Staff {
        #(set-accidental-style 'modern)
        \stuff
        }
    \layout {
        \context {
            \Score
            \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
            }
        }
    }

\score {
    % \articulate \stuff
    \stuff
    \midi { }
    }
