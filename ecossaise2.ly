\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Écossaise #2"
    copyright = "© 2015"
    }

A = {
    \time 4/4
    \tempo "Moderato, ma con molto rubato" 4 = 100
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \key f \major

    \repeat volta 2 {
        \relative f' {
            | f'8-. e-. d-. c-. bf-. a-. g-. f-.
            | ef8( g bf ef) gf,( bf) gf'4--
            | f8-. ef-. df-. c-. bf-. af-. gf-. f-.
            | ef8( gf a c b g g4)
            | a8-. g-. f-. e-. d-. c-. b-. a-.
            | g8( b d f e c c4)
            }
        }

    \repeat volta 2 {
        \relative c' {
            | c'8-. b-. a-. g-. f-. e-. d-. c-.
            | d'8-. c-. bf-. a-. g-. f-. ef-. d-.
            | ef'8-. d-. c-. bf-. af-. g-. f-. ef-.
            | df8( f af df) e,( gs) e'4--
            | e,8( gs b e) g,( b) g'4--
            | g,8( b d g) bf,( d) bf'?4--
            | a8-. g-. f-. e-. d-. c-. bf-. a-.
            | g8( bf d f e c c4)
            | d8-. c-. bf-. a-. g-. f-. e-. d-.
            | c8( e g bf a f f4)
            }
        }

    \bar "|."
    }

dynamics = {
    }

B = {
    \clef bass
    \key f \major

    \repeat volta 2 {
        \relative f {
            | f,8 c' <f a>4 f,8 c' <f a>4
            | <ef, bf'>4 <g' ef'> <gf, df'> <bf' gf'>
            | f,8 c' <af' c>4 f,8 c' <af' c>4
            | R1
            | R1
            | R1
            }
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
