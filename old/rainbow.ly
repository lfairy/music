\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 22)

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
            | g4 g g4. a16( b
            | a8 g g a b4 g8) \stemNeutral e'16[( d]
            | c8) d16( c b8) c16( b a8) <e g> <d fs> <cs e>
            }
        \\ {
            | r4 b <b d>2
            | r4 d r d
            }>>
        \time 2/4
        | d2
        \time 4/4
        | r4 <d g b d>
        << {
            <gs d'>4. c16( b
            \stemNeutral \slurNeutral
            | a8 gs a b c4.) b16( a
            | g8 fs g a b4) a8.( g16
            | <d fs a>1)
            }
        \\ {
            r8 d ~ d4
            } >>
        }

    \relative d'' {
        << {
            \stemNeutral \slurNeutral
            | d4( e fs4.) e16( fs
            | g8 fs e d e4 cs8) d16( e
            | fs8) e16( fs g8) fs16( g a8 g fs d
            \time 2/4
            \stemUp
            | e2)
            }
        \\ {
            | s1*3
            | r4 <e, g>
            } >>
        \time 4/4
        }

    \relative d {
        << {
            \change Staff = "B" \stemUp
            | e4( fs g4.) \change Staff = "A" \stemNeutral fs16( g
            | a8 g a b cs4 <g b>8) e'16( fs
            | g8 fs e d e d c d
            \time 2/4
            | <c e>2)
            \time 4/4
            }
        \\ {
            | s1*2
            | b4 b b c
            | s2
            } >>
        }

    \relative f'' {
        | f4-- f-- f4.-- g16( a
        | bf8 a g f g4 e8) f16( g
        | a8 g f e f4) d8.( c16
        | d4.) c16( d c8 bf bf c
        | d2) c8( bf bf c
        | d1)
        | d,8 <d, d'>[ <fs fs'> <a a'>] <d d'> <d d'>[ <fs fs'> <a a'>]
        }

    \relative g' {
        | <d' d'>4 \stemUp <g' b d g>\arpeggio \stemNeutral
        << { g,,4. a16( b
            | a8 g g a b4 g8) \stemNeutral \slurNeutral e'16([ d]
            | c8) d16( c b8) c16( b a8) <b, e g> <a d fs> <g c! e>
            \time 2/4
            | d'2
            \time 4/4
            }
        \\ {
            <b d>2
            | r4 d r d
            } >>
        | r4
        << {
            \stemNeutral \slurNeutral
            <d g b d> d' <d, gs b e>16( d' c b
            \stemUp \slurUp
            | a8) gs( a b c) r e8.( c16
            | g4) c8.( a16 fs8. a16 g4)
            }
        \\ {
            s2.
            | r8 e( <ds fs> <b e fs> <c e g>) r <d fs>4
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
        | <e' g>8-. r <d fs>-. r r <a, b'> <b a'> <cs g'>
        | d d,[ fs a]
        | d4 <g, g'> r8 e' ~ <e, e'>4
        | r8 << { d''8( c b a2) } \\ { <b d>8( <a c> <g b> fs4 d) } >>
        | << { b'2( a) } \\ { e4( d cs a) } >>
        | d8 d,[ fs a] d2
        }

    \clef treble
    \relative d' {
        r4
        << {
            a'2.
            | b4( g) r g(
            | a2. b4)
            }
        \\ {
            g4( fs d) ~
            | d2 cs(
            | b4 cs d2)
            } >>
        | R2
        }

    \clef bass
    \relative d, {
        \stemDown \slurDown
        | g4( a b cs) ~
        \stemNeutral \slurNeutral
        | cs << { d ~ d d } \\ { s fs, g } >>
        | <e e'>( <fs fs'> <gs gs'> <a a'>)
        | << <c g'>2 \\ { r4 c, } >>
        }

    \relative f' {
        | r4 e( d c)
        << {
            | d( f e2)
            | c1
            }
        \\ {
            | bf2.( c4)
            | f,4( g a2)
            } >>
        | bf4( a af2)
        | g4( f ef2)
        | d8 d,[ fs a] d <d, d'>[ <fs fs'> <a a'>]
        | <d, d'>4-> <c c'>-> <b b'>-> <a a'>->
        }

    \relative g {
        | r \change Staff = "A" <g'' b d>\arpeggio
        \change Staff = "B" << { r8 g,,( d g) } \\ <g,, g'>2-> >>
        | << { r8 fs''( <a c> d,) r d( b'4) } \\ { d,2 g, } >>
        | <e'' g>8-. r <d fs>-. r r <a,, a'> <b b'> <cs cs'>
        | <d d'> <d, d'>[ <fs fs'> <a a'>]
        | <d d'>4-- <g g'> r <e e'>
        | r8 <c' c'>( <b b'> <a a'> <g g'>) r <fs fs'>4--
        | r <fs fs'>-- r8 <g g'> <d d'> <b b'>
        | <g g'>4 <d d'> g'2
        }
    }

dynamics = {
    {
        | s4\p\< s s2\f
        | s2.\> s4\!
        | s2 s\<
        | s2\f
        | s4 s\sf s2\p
        | s1
        | s1
        | s1
        }

    {
        | s1\p
        | s1
        | s1
        | s2
        }

    {
        | s1\mp
        | s2\< s4\> s\!
        | s1\<
        | s2\sf
        }

    {
        | s1\p
        | s1
        | s1
        | s1
        | s1
        | s1-\markup { \italic "cresc." }
        | s2\< s2^\markup { \italic "rit." }
        }

    {
        | s2\! s\ff
        | s1
        | s2 s8 s4.\<
        | s2\f
        | s4 s\sf s s\sf
        | s2. s4\sf
        | s4 s\sf s2
        | s4 s\sf s2\p
        }
    }

stuff = <<
    \new PianoStaff <<
        #(set-accidental-style 'piano)
        \new Staff = "A" { \A }
        \new Dynamics \dynamics
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
