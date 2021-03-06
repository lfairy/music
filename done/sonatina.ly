\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 22)

\header {
    title = "Chicken on wheels"
    subtitle = \markup {
        "is the first movement of"
        \italic "Cutie Mark Crusaders Classical Composers Yay!"
        }
    copyright = "© 2017"
    }

awkwardSilence = \markup {
    \center-column {
        \line { "awkward silence" }
        \line { \musicglyph #"scripts.ufermata" }
        }
    }

A = {
    \clef treble
    \key f \major
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo "Allegro moderato" 4 = 112

    \time 2/4

    \repeat volta 2 {

        \relative f' {
            | a16( c a f g8)-. g-.
            | g16( bf g e f8)-. f-.
            | c'16( f c g e'8)-. e-.
            | e16( gs e c f8)-. f-.

            | d16( f d b) c( ef c a)
            | b( d a c gs b! g bf)
            | r4 e,
            }

        \relative f' {
            | r4 r8 c'-.
            | g'-. c,-. g'-. c,-.
            | a'-. c,4-- a'8(
            | bf16 c a c gs c g c
            | fs,4) r8 b,-.

            | fs'-. b,-. fs'-. b,-.
            | gs'-. b,4-- cs8-.
            | ds-. e-. fs-. gs-.
            | cs,4-- gs'16( f gs f

            | a f a f d f d b
            | c4) gs'16( f gs f
            | a f a f d f d b
            | c4) r
            }

        }

    \break

    \repeat volta 2 {

        \relative f' {
            | r4 b16( d b gs
            | as8)-. as-. as16( cs as g
            | a16 c a fs gs8)-. gs-.
            | R2

            | r4 gs16( b gs f
            | g8)-. g-. g16( as g e
            | fs16 a fs ds f8)-. f-.
            | << { f?-. f-. f-. f-. } \\ { r4 b, } >>
            }

        \relative fs' {
            \key fs \major

            | r4 as16( cs as fs
            | gs8)-. gs-. gs16( b gs es
            | fs8)-. fs-. cs'16( fs cs gs
            | es'8)-. es-. es16( gss es cs
            | fs8)-. fs-. ds16( fs ds bs)

            \key f \major
            | d( f d b) c( ef c a)
            \slurUp
            | b([ gs)] <e! c' ef>(->_"as annoyingly as possible"
            gs <e! c' ef>-> gs <e! c' ef>-> gs
            | <e! c' ef>-> gs <e! c' ef>-> gs <e! c' ef>-> gs <e! c' ef>-> gs)
            \slurNeutral

            | r4 a,
            | r4 r8 f'-.
            | c'-. f,-. c'-. f,-.
            | d'-. f,4-- d'8(
            | ef16 f d f df f c f
            | b,4) r8 e,-.

            | b'-. e,-. b'-. e,-.
            | cs'-. e,4-- fs8-.
            | gs-. a-. b-. cs-.
            }

        \relative f' {
            | fs4-- cs'16( bf cs bf
            | d bf d bf g bf g e
            | f4) cs'16( bf cs bf
            | d bf d bf g bf g e
            | f4) r
            }

        }

    % \bar "|."
    }

dynamics = {
    \repeat volta 2 {
        | s2*4\p
        | s2
        | s\<
        | s4\> s\p
        | s2

        | s2
        | s
        | s\<
        | s\mf
        | s
        | s
        | s\<

        | s\f
        | s2*3
        | s2\f
        }

    \repeat volta 2 {
        | s2*4\p
        | s2*4\p

        | s2*4\mp
        | s2
        | s\<
        | s\f
        | s
        | s4\> s\p
        | s2

        | s
        | s
        | s\<
        | s\mf
        | s
        | s
        | s\<
        | s\f
        | s2
        | s2*2
        | s2\f
        }
    }

B = {
    \clef bass
    \key f \major
    \set Staff.midiInstrument = #"acoustic grand"

    \repeat volta 2 {

        \relative f {
            << {
                | c'4( bf)
                | bf( a)
                \clef treble
                | f'2
                | g4( a)
                }
            \\ {
                | f,2
                | f
                | a4( bf)
                | c2
                } >>

            | <g' b>8-^ r <d a'>-^ r
            \clef bass
            | g,-. f-. e-. d-.
            | \slurDown c16( e g c
            \change Staff = "A" \stemDown \once \hideNotes e4)
            \change Staff = "B" \stemNeutral \slurNeutral
            }

        \relative f' {
            \clef treble
            | r8 e-. e-. e-.
            << {
                | e-. e-. e-. e-.
                | f-. f-. f-. f-.
                }
            \\ {
                | bf,2(
                | a)
                } >>
            | <bf g'>8-. <a fs'>-. <gs f'>-. <g e'>-.
            \clef bass
            | <fs ds'>-- as16[( b] as b as b
            | a b a b a b a b
            | gs b gs b gs b gs b
            | fs b e, b' ds, b' d, b'
            | cs,4) <cs bf'>(
            | <d a'>) <gs f'>(
            | <a e'>)
            << { cs(
                | d)
                }
            \\ { a ~
                | a
                } >>
            <g b f'>-.
            | c16( g e c c,4)
            }

        }

    \repeat volta 2 {
        \relative f {
            << {
                | r4 f' ~
                | f e ~
                | e d?
                | R2
                | r4 d ~
                | d cs ~
                | cs c
                }
            \\ {
                | b,2 ~
                | b ~
                | b
                | b_"meow"
                | gs ~
                | gs ~
                | gs
                | r4 cs
                }
            \\ {
                \stemDown \tieDown
                | s4 d'
                | cs2
                | c
                | R
                | s4 b
                | as2
                | a
                | s2
                \stemNeutral \tieNeutral
                } >>
            }

        \relative fs {
            \key fs \major
            << {
                | r4 cs'(
                | b cs)
                | r4 as(
                | b gs)
                }
            \\ {
                | fs,2 ~
                | fs
                | fs ~
                | fs
                | fs
                }
            \\ {
                \stemDown \tieDown
                | s4 fs' ~
                | fs2
                | s4 fs ~
                | fs2
                | r4 <fs bs>
                \stemNeutral \tieNeutral
                } >>

            \key f \major
            | R2
            | r8 f-^ ef-^ d-^
            | c-^ bf-^ a-^ g-^
            \slurDown \stemDown
            | f16( a c f \change Staff = "A" a4)
            \change Staff = "B" \stemNeutral \slurNeutral

            | r8 a-. a-. a-.
            << {
                | a8-. a-. a-. a-.
                | bf-. bf-. bf-. bf-.
                }
            \\ {
                | ef,2(
                | d)
                } >>
            | <ef c'>8-. <d b'>-. <df bf'>-. <c a'>-.
            | <b gs'>-- ds16[( e] ds e ds e
            | d e d e d e d e
            | cs e cs e cs e cs e)
            | b( e a, e' gs, e' g, e'
            | fs,4)
            }

        \relative f {
            <fs, ef'>4(
            | <g d'>) <cs bf'>(
            | <d a'>)
            << { fs(
                | g)
                }
            \\ { d ~
                | d
                } >>
            <c e bf'>-.
            | f16( c a f f,4)
            }

        }

    }

stuff = <<
    \new PianoStaff <<
        #(set-accidental-style 'piano)
        \new Staff = "A" { \A }
        \new Dynamics { \dynamics }
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
