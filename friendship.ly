\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Starswirl-Sparkle correspondence"
    copyright = "© 2015"
    }

A = {
    \time 4/4
    \tempo 4 = 90
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \key g \major

    \relative g' {
        | b4 g8 d' b4 e,8 e' ~
        \time 3/4
        | e2 r8 g
        \time 4/4
        | fs g b, e d e g,4
        \time 5/8
        | r4 r8
        << { g a
            \time 4/4
            | b4 g8 d' b4 e,8 b'' ~
            | b2 r8 g b b ~
            \time 2/4
            | b[ a a e]
            \time 5/8
            | g[ fs e fs d]
            \time 4/4
            | d4 b8 d d4 b8 d ~
            \time 6/8
            | d4 r8 g b b ~
            \time 2/4
            | b[ a a b]
            \time 5/8
            | d[ c b c g]
            \time 4/4
            | g4 d8 g g4 d8 g
            \time 6/8
            | r4. g,8 d' d ~
            \time 7/8
            | d[ c c e] e[ g, a]
            \time 4/4
            | b1
            }
        \\ { s4
            | fs2 g
            | R1
            | r4 c
            | r c4.
            | <b, fs'>2 <e g>
            | s8*6
            | r4 <c' e>
            | <c fs b>\arpeggio <d fs>4.
            | b4 c8 b bf2
            } >>
        }

    \bar "|."
    }

dynamics = {
    | s1\p
    }

B = {
    \clef bass
    \key g \major

    \relative g {
        << {
            | r4 <b d> r <g c> ~
            | q2 r4
            | r4 <g d'> r <c e>
            | s8*5
            | r4 <b d> r <g c> ~
            | q2 r

            | r4 <a g'>
            | r4 << d4. \new Voice { \voiceFour g,4 a8 } >>
            | r4 <g d'> r <c e>
            | s2.
            | r4 <a e' g>
            | r <a d fs>4.
            }
        \\ {
            | g,2 c, ~
            | c r4
            | g'2 c,
            | c8 e' b' e4
            | g,,2 c, ~
            | c r

            | a2
            | d4 ~ d4.
            | g2 c,
            | c8 e' b' e4.
            | a,,,2
            | d4 ~ d4.
            | g2 e
            } >>
        }
    }

\score {
    \new PianoStaff <<
        #(set-accidental-style 'piano)
        \new Staff = "A" \A
        \new Dynamics \dynamics
        \new Staff = "B" \B
        >>
    \layout { }
    }

\score {
    \articulate \new PianoStaff <<
        \new Staff = "A" \A
        \new Dynamics \dynamics
        \new Staff = "B" \B
        >>
    \midi { }
    }
