\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Sonatina"
    copyright = "© 2015"
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

            | d16 f d b c ef c a
            | b d a c gs b! g bf
            | r4 e,
            }

        \relative f' {
            | r4 r8 c'
            | g' c, g' c,
            | a' c,4 a'8(
            | bf16 c a c gs c g c
            | fs,4) r8 b,

            | fs' b, fs' b,
            | gs' b,4 cs8-.
            | ds-. e-. fs-. gs-.
            | cs,4-- gs'16( f gs f

            | a f a f d f d b
            | c4) gs'16( f gs f
            | a f a f d f d b
            | c4) r
            }

        }

    \repeat volta 2 {

        \relative f' {
            | b16( d b gs as8)-. as-.
            | as16( cs as g a8)-. a-.
            | a16( c a fs gs8)-. gs-.
            | R2

            | gs16( b gs f g8)-. g-.
            | g16( as g e fs8)-. fs-.
            | fs16( a fs ds f8)-. f-.
            | << { f?-. f-. f-. f-. } \\ { r4 b, } >>
            }

        \relative fs' {
            \key fs \major

            | r4 as16( cs as fs
            | gs8)-. gs-. gs16( b gs es
            | fs8)-. fs-. cs'16( fs cs gs
            | es'8)-. es-. es16( gss es cs
            | fs8)-. fs-. ds16 fs ds c

            \key f \major
            | d f d b c ef c a
            | b[ gs] <e! g ef'>-^_"as annoyingly as possible" r q-^ r q-^ r
            | q-^ r q-^ r q-^ r q-^ r

            | r4 a,
            | r4 r8 f'
            | c' f, c' f,
            | d' f,4 d'8(
            | ef16 f d f cs f c f
            | b,4) r8 e,

            | b' e, b' e,
            | cs' e,4 fs8-.
            | gs-. a-. b-. cs-.
            | ds-. <f,! f'!>-. <g! g'!>-. <a! a'!>-.
            }

        \relative f' {
            | f4-- cs'16( bf cs bf
            | d bf d bf g bf g e
            | f4) cs'16( bf cs bf
            | d bf d bf g bf g e
            | f4) cs'16( bf cs bf
            | d bf d bf g bf g e
            | f4) r
            }

        }

    % \bar "|."
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
                | e e e e
                | f f f f
                }
            \\ {
                | bf,2
                | a
                } >>
            | <bf g'>8 <a fs'> <gs f'> <g e'>
            \clef bass
            | <fs ds'> as16[( b] as b as b
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
                | f'4( e)
                | e( ds)
                | ds( d)
                | R2
                | d4( cs)
                | cs( c)
                | c( b)
                }
            \\ {
                | d2
                | cs
                | c
                | R_"dramatic pause"
                | b
                | as
                | a
                | r4 cs,
                } >>
            }

        \relative fs {
            \key fs \major
            << {
                | r4 as(
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
            | s2*19
            }

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
