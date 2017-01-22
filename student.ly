\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Your faithful student"
    copyright = "© 2016"
    }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 90
    \key g \major

    \time 4/4

    \relative c'' {
        | b4( g8 d' b4) e,8( g'
        | fs4 b,8 e d4) c8( a
        | b4 g) e( g8 a
        | b b g g) e4( d)
        }

    \relative c'' {
        | b4( g8 d' b4) e,8( g'
        | fs8 g b, e d e c a
        | b4) << { g( e) } \\ { <b d>( c) } >> g'8( a
        | b b g g e4)
        }

    \relative c' {
        e8( d
        \key d \minor
        \bar "||"
        | e4 c8 g' e4) a,8( c'
        | bf4 e,8 d' a4)
        << { d,8( f'
            | ef8 f a, d c[ d] gs,)
            }
        \\ { s4
            | r f( fs) s8
            } >>
        r8\fermata
        }

    \relative f' {
        | a4( f8 c' a4) d,8( f'
        | ef4 a,8 g' d4) g,8( bf'
        | af bf d, g f g c,) r\fermata
        }

    \key g \major
    \bar "||"
    \relative c'' {
        | b4( g8 d' b4) e,8( g'
        | fs4 b,8 e d4) c8( a
        | b4 g) e( g8 a
        | b b g g) e4( d)
        }

    \relative c'' {
        | b4( g8 d' b4) e,8( g'
        | fs8 g b, e d e c a
        | b4) << { g( e) } \\ { <b d>( c) } >> \slurUp g'8(-- a--
        | b-- b-- g-- g)--
        << { e4( e8 d | e1) } \\ { s4 c ~ | c1 } >>
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"
    \key g \major

    << \relative g {
        | r4 <b d> r <g c>
        | r <g d'> r <c e>
        | r <b d> r <c e>
        | r <b d> r <a c>
        }
    \\ \relative g, {
        | g2 c,
        | g' c,
        | g' c,
        | g' c,
        } >>

    << \relative g {
        | r4 <b d> r <g c>
        | r <g d'> r <c e>
        | r g( g)
        }
    \\ \relative g, {
        | g2 c,
        | g' c,
        | r4 b'( c)
        } >>
    r4
    \relative c, {
        | r2 c8( c' e g)
        }

    \break
    \key d \minor
    << \relative c' {
        | r4 <e, gs> r <e g>
        | r <g bf> r <f a>
        | r a( gs)
        }
    \\ \relative c {
        | gs2 a
        | cs, d
        | r4 b'( c)
        } >>
    r4

    << \relative c' {
        | r4 <a cs> r <f a>
        | r <c' ef> r <bf d>
        }
    \\ \relative c {
        | cs,2 d
        | fs g
        } >>
    \relative c {
        | r4 <f b>( <c g' ef'>)\arpeggio r
        }

    \key g \major
    << \relative g {
        | r4 <c d>(-- q-- q--
        | <gs d'>-- q-- <a cs>-- <d, c'>)--
        | r <b' d> r <c e>
        | r <b d> r <a c>
        }
    \\ \relative g, {
        | d1 ~
        | d1
        | g2 c,
        | g' d->
        } >>

    << \relative g {
        | r4 <b ds> r <g b>
        | r <a cs es> r <a d fs>
        | r g( g)
        }
    \\ \relative g, {
        | ds2 e
        | es fs
        | r4 b( c)
        } >>
    \relative g {
        a8(-- b--
        | c-- c-- a-- a)--
        }
    << \relative g {
        r8 g ~ g4 ~
        | g1
        }
    \\ \relative c, {
        <c c'>2 ~
        | q1
        } >>

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
