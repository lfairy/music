\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Party cannon"
    copyright = "© 2014"
    }

global = {
    \time 2/2
    \set Staff.midiInstrument = #"acoustic grand"
    }

A = {
    \tempo "Andante" 2 = 84
    \clef treble
    \key f \major

    \relative f' {
        \repeat unfold 2 {
            | a4( bf8 c) bf?4-! a-!
            | g8( a g f) g4-! e-!
            | a4( bf8 c) bf4-! a-!
            | g8( a g f) g2

            | a4( bf8 c) <bf b'>4-! a-!
            | g8( a g f) <g fs'>4-! e-!
            | a8( bf c d c bf a g
            | f4)-. e-. f2
            }
        }

    \key d \major
    \relative d' {
        | d8( e fs?4) d8( e fs4)
        | g8( fs e4) g8( fs e4)
        | fs8( e d fs e4)-. a-.
        | fs8( e d fs e4)-. a,-.

        | <b fs'>8(\arpeggio e d4) fs8( e d4)
        | g8( fs e4) g8( fs e4)
        | fs8( e d fs e4)-. a-.
        | d,8( cs? b d cs4)-. fs,-.

        | d'8( cs b4) d'8( cs b4)
        | d,8( c b4) d'8( c b4)
        | d,8( c bf4) d'8( c bf4)
        }

    \bar "||"

    \key f \major
    \relative f' {
        | a4( bf8 c) bf?4-! a-!
        | g8( a g f) g4-! e-!
        | a4( bf8 c) bf4-! a-!
        | g8( a g f) g2

        %{
        | a4( bf8 c) b'16( bf,? b' bf,) a4-!
        | g8( a g f) fs'16( g, fs' g,) e4-!
        %}
        | a4( bf8 c) <bf b'>4-! a-!
        | g8( a g f) <g fs'>4-! e-!
        | a8( bf c d c bf a g
        | a bf c d c bf a g
        | a bf c d c bf a g
        | f4)-. e-. <f f'>2\arpeggio\fermata
        }

    \bar "|."
    }

dynamics = {
    | s1*8\mf
    | s1*8\f
    | s1*4\mf
    | s1*2\mp
    | s1*2-\markup { \italic "cresc." }
    | s1\sf
    | s1-\markup { \italic "dim." }
    | s1-\markup { \italic "rit." }
    | s1*3\ff
    | s1-\markup { \italic "molto rit." }
    | s1*2-\markup { \italic "a tempo" }
    | s1*3\mp\<
    | s2\! s\ff
    }

B = {
    \clef bass
    \key g \major

    \arpeggioArrowUp

    \relative g, {
        | g4( d') <g b?>-! d-!
        | a4( d) <d' fs>-! d,-!
        | g,4( d') <g b>-! d-!
        | a4( d) <d' fs>-! <c fs>-!

        | g,4( d') <g b>-! d-!
        | a4( d) <d' fs>-! d,-!
        | r2 c8( d e fs)
        | r4 g4-. <c, g' e'>2\arpeggio
        }

    \relative g, {
        | <g, g'>4( d'') <g b?>-! d-!
        | a4( d) <d' fs>-! d,-!
        | <g,, g'>4( d'') <g b>-! d-!
        | a4( d) <d' fs>-! <c fs>-!

        | <g,, g'>4( d'') <g b>-! d-!
        | a4( d) <d' fs>-! d,-!
        | r2 c8( d e fs)
        | r4 g4-. <c, g' e'>2\arpeggio
        }

    \key bf \major
    \relative bf, {
        | bf4( <bf' d>) bf,4( <bf' d>)
        | ef,,4( <bf'' d>) ef,,4( <bf'' d>)
        | g,4( <g' bf>) a,4( <f' c'>)
        | g,4( <g' bf>) a,4( <f' c'>)

        \key g \major
        | <g,, g'>4(->\arpeggio <g'' b>) d4( <g b>)
        | c,4( <g' c>) e4( <g c>)
        \arpeggioArrowUp
        | <g, d' b'>2\arpeggio c'?4-. <c e>-.
        | <d,, a' fs'>2\arpeggio <d' fs>4-. d-.

        | <b, fs' d'>2\arpeggio <b'' d fs>\arpeggio
        | <e,, b' g'>\arpeggio <b'' e g>\arpeggio
        | <c,, g' e'>\arpeggio e''8( fs g4)
        }

    \relative g, {
        \arpeggioArrowDown
        | <g d' b'>4->(\arpeggio d') <g b>-! d-!
        \arpeggioArrowUp
        | <a d a'>4(\arpeggio d) <d' fs>-! d,-!
        \arpeggioArrowDown
        | <g, d' b'>4(\arpeggio d') <g b>-! d-!
        | r4 <c' d fs>--( <b d fs>-- <a d fs>--)

        | <g,, g'>4( d'') <g b?>-! d-!
        | <a, a'>4( d') <d' fs>-! d,-!
        | r2 c8( d e fs?)
        | r2 c'8( d e fs)
        | r2 <c,, c'>8( <d d'> <e e'> <fs fs'>)
        \arpeggioArrowUp
        | r4 <g' b>4-.
        << <c, g' e'>2\arpeggio_\fermata \\ { s4 <g, g'>->\fermata } >>
        }

    }

\score {
    \new PianoStaff <<
        \new Staff = "A" << \global \A >>
        \new Dynamics \dynamics
        \new Staff = "B" << \global \B >>
        >>
    \layout { }
    }

\score {
    \articulate \new PianoStaff <<
        \new Staff = "A" << \global \A >>
        \new Dynamics \dynamics
        \new Staff = "B" << \global \B >>
        >>
    \midi { }
    }
