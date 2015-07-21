\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Starswirl–Sparkle correspondence"
    copyright = "© 2015"
    }

A = {
    \time 4/4
    \tempo 4 = 90
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \key g \major

    \relative g' {
        | b4( g8 d' b4 e,8 e' ~
        \time 3/4
        | e2) r8 g(
        \time 4/4
        | fs g b, e d e g,4)
        \time 5/8
        | r4 r8
        << { g( a
            \time 4/4
            | b4 g8 d' b4 e,8 b'' ~
            | b2) r8 g( b b ~
            \time 2/4
            | b[ a a e])
            \time 5/8
            | g[( fs e fs d])
            \time 4/4
            | d4( b8 d) d4( b8 d ~
            \time 6/8
            | d4) r8 g( b b ~
            \time 2/4
            | b[) a( <a, a'> <b b'>]
            \time 5/8
            | d'[ c b c g])
            \time 4/4
            | g4( d8 g) g4( d8 g)
            \time 6/8
            | r4. g,8( d' d ~
            \time 7/8
            | d[ c c e]) e[( g,_> a])_>

            \time 4/4
            | b2 g4 d'
            | b2 e,4 e'
            | b2 g4 d'
            | b2 e,4 e'
            | b2 e,
            | <g'' b>1\fermata
            }
        \\ { s4
            | fs,,2 g
            | R1
            | r4 c
            | r c4.
            << {
                | b,2 e
                }
            \new Voice {
                \voiceFour
                | fs4 g a g
                } >>
            \voiceTwo
            | s4. s4 b8 ~
            | b4 e
            | <c fs b>4\arpeggio <c fs>4.
            | <fs,? b>2 bf
            | s4. s4 ef,8 ~
            | ef4 g <e fs>4.

            | <c e>1
            | <c e>
            | <c e>
            | <c e>
            | <c e> ~
            | q
            } >>
        }

    \bar "|."
    }

dynamics = {
    | s1\p
    | s2.
    | s1
    | s8*5
    | s1

    | s2 s\mp
    | s2-\markup { \italic "poco cresc." }
    | s8*5
    | s1

    | s2.\<
    | s2
    | s8*5\mf\>
    | s2 s\mp
    | s2.
    | s2^\markup { \italic "rit." } s4.\sf

    | s1-\markup { \italic "a tempo" }
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

            | r4 <e' g>
            | r4 << d4. \new Voice { \voiceFour g,4 a8 } >>
            | r4 <g d'> r <c e>
            | s2.
            << {
                | r4 <e g>
                | r g a8
                }
            \new Voice {
                | s4 a,8 b
                \voiceFour
                | s4 <a d>4.
                } >>
            | r4 <b d g> r <g bf e>
            | s8*6
            | r4 <g c e> << {
                \voiceTwo
                s8 g[^> a]^>
                }
            \new Voice {
                \voiceOne
                <d, c'>4.
                } >>

            \voiceOne
            | s1
            | r2 r4 g(
            | fs g b, e
            | d e g,2)
            }
        \\ {
            | g2 c, ~
            | c r4
            | g'2 c,
            | \oneVoice c8( e' b' e4) \voiceTwo
            | g,,2 c, ~
            | c r

            | a2
            | d4 ~ d4.
            | g2 c,
            | \oneVoice c8( e' b' e4.) \voiceTwo
            | a,,,2
            | <d d'>4\arpeggio ~ q4.
            | g2 e
            | \oneVoice b'!8( c e <b' e>4) \voiceTwo bf,,8(
            | a2) d4.

            | <e g c>1
            | <c g' c>
            | <g' d'>
            | <c, g'>
            \oneVoice
            | <g d' g> ~
            | q\fermata
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
        \new Staff = "A" << \A \dynamics >>
        \new Staff = "B" << \B \dynamics >>
        >>
    \midi { }
    }
