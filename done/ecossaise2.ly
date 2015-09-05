\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Chimi-cherry-changa"
    copyright = "© 2015"
    }

A = {
    \time 4/4
    \tempo "Moderato" 4 = 100
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
            << {
                | a8(-> g-> f-> e-> d-> c-> bf-> a)->
                }
            \\ {
                | <c ef> <bf df> <af cf> <g bf>
                <f af> <ef gf> <df ff> <c ef>
                } >>
            | g'8( bf d f e c c4)
            | d8-. c-. bf-. a-. g-. f-. e-. d-.
            | c8( e g bf a f f4)
            }
        }
    }

dynamics = {
    \repeat volta 2 {
        | s1\mf-\markup { \italic "leggero" }
        | s1-\markup { \italic "molto espr." }
        | s1-\markup { \italic "leggero" }
        | s1-\markup { \italic "molto espr." }
        | s1-\markup { \italic "simile" }
        | s1
        }

    \repeat volta 2 {
        | s1\mf
        | s1
        | s1\mp
        | s1\<
        | s1
        | s1
        | s1\ff
        | s1\p
        | s1\mf
        | s1
        }
    }

B = {
    \clef bass
    \key f \major

    \repeat volta 2 {
        \relative f {
            | f,8-. c'-. <f a>4-- f,8-. c'-. <f a>4--
            | <ef, bf'>4\arpeggio <g' ef'>-- <gf, df'>\arpeggio <bf' gf'>--
            | f,8-. c'-. <af' c>4-- f,8-. c'-. <af' c>4--
            | <ef, bf' gf'>4\arpeggio <af c gf'>\arpeggio
            << { g'8 d' b4 } \\ <g, d' g>2\arpeggio >>
            | f8-. c'-. <f a>4-- d,8-. a'-. <d f>4--
            | <g,, g'>4\arpeggio <g' f'>-- << { g'4 e } \\ <c g'>2 >>
            }
        }

    \repeat volta 2 {
        \relative f {
            | <c e g>4-. r2.
            | <bf f' bf>4-. r2.
            | c'8-. bf-. af-. g-. f-. ef-. df-. c-.
            << {
                | g'8-. f-. ef-. d-. af'-. gf-. ff-. ef-.
                | a-. g-. f-. e-. bf'-. af-. gf-. f-.
                | b-. a-. g-. fs-.
                }
            \\ {
                | b,8 a g fs c' bf af g
                | cs b a gs d' c bf a
                | ds cs b r
                } >>
            <bf f' bf>4\arpeggio <d' bf'>--
            | <e, cs'>8( <d b'> <c a'> <b gs'> <a fs'> <g e'> <f d'> <e cs'>)
            | <g d' bf'>4\arpeggio <d' f bf>\arpeggio
            << { c'8 g' e4 } \\ <c, g' c>2\arpeggio >>
            | bf8-. f'-. <bf d>4-- g,8-. d'-. <g bf>4--
            | <c,, c'>4\arpeggio <c' bf'>-- << { c'4 a } \\ <f c'>2 >>
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
