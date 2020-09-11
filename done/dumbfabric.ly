\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Dumb fabric"
    subtitle = \markup {
        "is the second movement of"
        \italic "Cutie Mark Crusaders Classical Composers Yay!"
        }
    copyright = "© 2020"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"

    \time 4/4

    \clef treble
    \relative c' {
        \partial 4 g'16(\p f e d
        | c4)-- r r g'16( f e d
        | c4)-- r r g'16( f e d
        | c8)-.\< c4-- cs-- d8(\mp\> f a
        | c,4)--\p r r
        }

    \relative c' {
        g'16( f e d
        | c4)-- r r g'16( f e d
        | c4)-- r r
        }

    \relative c' {
        g'16( f e d
        | c8\cresc c' c, c' c, c') b16( a g f
        | e8 e' e, e' e, e') d16( c b a
        \time 7/8
        | g8[\< g' g, g'] g,) <g' g'>16[->\f <f f'>-> <e e'>-> <d d'>]->
        \time 4/4
        | <c c'>4--->\f r r
        }

    \relative c' {
        g'16(\p f e d
        | c4)-- r r g'16( f e d
        | c2--\< c4-- c--
        | \times 2/3 { c4-- c)--\ff r }
        r2\fermata_\markup {
            \override #'(baseline-skip . 2)
            \halign #0 \italic \small \center-column { "as though" "torn off" }
            }
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        \partial 4 r4
        | <g f'>-- r r2
        | q4-- r r2
        | r8 <a f'>4-- q-- << f'4. \\ { af,8( g fs | \stemUp <g f'>4)-- } >>
        r4 r2
        }

    \relative c {
        | << { g'4-- r } \\ { e,8( f ~ f fs8) } >> r2
        | << { f'4-- r } \\ { af,8( g ~ g fs8) } >> r2
        }

    \relative c' {
        | r8 <gs e'>4(-- <a e'>-- <bf e>)-- r8
        \clef treble
        | r8 <c gs'>4(-- <cs gs'>-- <d gs>)-- r8
        | r8 <b e b'>4--
        \clef bass
        <g, d' b' f'>--\arpeggio <g' g'>16[-> <f f'>-> <e e'>-> <d d'>]->
        | <g,, g' g' f' g>4-> r r2
        }

    \relative c {
        | <g f'>4-- r r2
        | <g f'>2(-- q4-- q--
        | \times 2/3 { q4-- q)-- r } r2\fermata
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
