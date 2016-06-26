\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 27)

\header {
    title = "Romance"
    copyright = "© 2015"
    }

stuff = \relative c' {
    \set Staff.midiInstrument = #"violin"
    \tempo "Expressively" 4 = 84

    \time 3/4
    | ef2(\f\downbow af,4)
    | g( ef') f8(-- g--)
    | gf2( d4)
    | f2.~\>
    | f2\p r4

    | bf,4-- a-- f'--
    | g(\< af) f(
    | g) af--\> f--

    | e2.\p ~
    | e4 r4 b
    | e2._\markup { \italic "rit." } ~
    | e4 r bf

    | a''2(-\mp_\markup { \italic "a tempo" } d,4)
    | gs(\< cs,) fs8 gs
    | a4\mf b8 cs b4
    | gs(\> fs) e(
    | g) fs-- e--

    | d2.\p ~
    | d2 r4
    | c4\p b fs'
    | d2. ~
    | d2 r4
    | c8 d b4 g'
    | a(\< b) g(
    | a) b-- g--

    | g'2.\f ~
    | g4 c,2
    | fs2.(
    | b,4) d e8\< fs
    | g4\> a8 b a4\!
    | fs( e) d(
    | f)\> e-- d--

    | c2.\mp ~
    | c2 r4
    | bf4_\markup { \italic "dim." } a e'\open
    | c2. ~
    | c2 r4
    | bf8 c a4 bf

    | g2.(\p ~
    | g2\< c,,4)
    | b(\> g'\! b)
    | d( g) a8 b
    | bf2.(_\markup { \italic "rit." } ~
    | bf2 f4)
    | a2.(\> ~
    | a2 e4)
    | a2.\pp\open\fermata

    \bar "|."

    }

\score {
    \new Staff {
        #(set-accidental-style 'modern)
        \stuff
        }
    \layout {
        \context {
            \Score
            \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
            }
        }
    }

\score {
    % \articulate \stuff
    \stuff
    \midi { }
    }
