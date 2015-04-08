\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Humoresque"
    copyright = "© 2015"
    }

pause = \markup { \musicglyph #"scripts.ufermata" }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 90

    \time 4/4

    \relative c'' {
        << {
            | bf8-. c-. bf-. c-. bf( c bf4)
            | bf8( c d c bf4 bf)
            | ef8-. f-. ef-. f-. ef( c ef4)
            | df8( c df bf af4 af4)
            | cf8( bf cf af gf4 gf)
            }
        \\ {
            | a8-. r af-. r g2
            | gf2 <e! g>4 <d af'>
            | d'8-. r df-. r <af bf>2
            | bf4 bff df, c
            | ef8( d df4) r bff
            } >>
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        | f8-. c'-. e,-. c'-. ef,( bf' d d,)
        | df( af' ef' af,) bf,( f' bf4)
        | c8-. g'-. bf,-. g'-. af,( ef c? af)
        | g( df' g4) <f, c'>8(\arpeggio f' ~ f4)
        | af,8( eff' af4) <gf, df'>8(\arpeggio af' ~ af4)
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
