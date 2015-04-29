\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Prelude"
    copyright = "© 2015"
    }

A = {
    \clef treble
    \key g \major
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 90

    \time 4/4

    \relative g' {
        << {
            | g4 g g4. a16 b
            | a8 g g a b4 g8 e'16 d
            }
        \\ {
            | r4 b, <b d>2
            | r4 d r d
            }>>
        | c'8 d16 c b8 c16 b a8 <e g> <d fs> <c! e>
        \time 2/4
        | d2
        \time 4/4
        | r4 <d g b d> << { <gs d'>4. c16 b } \\ { r8 d, ~ d4 } >>
        | a'8 gs a b c4. b16 a
        | g8 fs g a b4 a8. g16
        | <d fs a>1
        }

    \relative d'' {
        | d4 e fs4. e16 fs
        | g8 fs e d e4 cs8 d16 e
        | fs8 e16 fs g8 fs16 g a8 g fs d
        \time 2/4
        | << e2 \\ { r4 <e, g> } >>
        \time 4/4
        }

    \relative d {
        \change Staff = "B" \stemUp
        | e4 fs g4. \change Staff = "A" \stemNeutral fs16 g
        | a8 g a b cs4 <g b>8 e'16 fs
        | << { g8 fs e d e d c d } \\ { b4 b b c } >>
        \time 2/4
        | <c e>2
        \time 4/4
        }

    \relative f'' {
        | f4 f f4. g16 a
        | bf8 a g f g4 e8 f16 g
        | a8 g f e f4 d8. c16
        | d4. c16 d c8 bf bf c
        | d2 c8 bf bf c
        | d1
        | d,8 <d d'>[ <fs fs'> <a a'>] <d d'> <d d'>[ <fs fs'> <a a'>]
        }

    \relative g' {
        | <d'' d'>4 \stemUp <g b d g>\arpeggio \stemNeutral << { g,,4. a16 b } \\ <b, d>2 >>
        | << { a'8 g g a b4 g8 e'16 d } \\ { r4 d, r d } >>
        | c'8 d16 c b8 c16 b a8 <b, e g> <a d fs> <g c! e>
        \time 2/4
        | d'2
        \time 4/4
        | r4 <d g b d> d' <d, gs b e>16 d' c b
        << {
            | a8 gs a b c r e8. c16
            | g4 c8. a16 fs8. a16 g4
            }
        \\ {
            | r8 e <ds fs> <b e fs> <c e g> r <d fs>4
            | r <d fs> r <d g>
            } >>
        | g4 <b, d g> g'2
        }

    \bar "|."
    }

B = {
    \clef bass
    \key g \major
    \set Staff.midiInstrument = #"acoustic grand"

    \relative g {
        | r4 <d g> <g, g'>2
        << {
            | r4 c' g2
            }
        \\ {
            | d2 r4 b
            } >>
        | <c' e>8 r <b d> r r <a, b'> <b a'> <cs g'>
        | d d,[ fs a]
        | d4 <g, g'> r8 e' ~ <e, e'>4
        | r8 <b'' d> <a c> <g b> << a2 \\ { fs4 d } >>
        | << { b'2 a } \\ { e4 d cs a } >>
        | d8 d,[ fs a] d2
        }

    \clef treble
    \relative d' {
        | r8 <g a>-- r <g a>-- r << { a( d, a') } \\ fs4. >>
        << {
            | b2 r4 g
            | a2. b4
            }
        \\ {
            | r4 g cs,2
            | b4( cs d2)
            } >>
        | R2
        }

    \clef bass
    \relative d, {
        \stemDown
        | g4 a b cs ~
        \stemNeutral
        | cs << { d ~ d d } \\ { s fs, g } >>
        | <e e'> <fs fs'> <gs gs'> <a a'>
        | << <c g'>2 \\ { r4 c, } >>
        }

    \clef treble
    \relative f' {
        | r4 e d c
        | << { d f e2 } \\ { bf2 r4 c } >>
        \clef bass
        | << c1 \\ { f,4 g a2 } >>
        | bf4( a af2)
        | g4( f ef2)
        | d8 d,[ fs a] d <d, d'>[ <fs fs'> <a a'>]
        | <d, d'>4 <c c'> <b b'> <a a'>
        | r \change Staff = "A" <g'''' b d>\arpeggio \change Staff = "B" << { r8 g,, d g } \\ <g,, g'>2 >>
        | << { r8 fs'' <a c> d, r d b'4 } \\ { d,2 g, } >>
        | <c' e>8 r <b d> r r <a,, a'> <b b'> <cs cs'>
        | <d d'> <d, d'> <fs fs'> <a a'>
        | <d d'>4 <g g'> r <e e'>
        | r8 <c' c'> <b b'> <a a'> <g g'> r <fs fs'>4--
        | r <fs fs'>-- r8 <g g'> <d d'> <b b'>
        | <g g'>4 <d d'> g'2
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
