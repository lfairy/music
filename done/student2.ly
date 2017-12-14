\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "I wasn’t prepared for this"
    copyright = "© 2017"
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
        \key c \major
        \bar "||"
        | e4 c8 g' e4) a,8( c'
        | bf4 e,8 d' a4 d,)
        | a'4( f8 c' a4) d,8( f'
        | ef4 a,8 g' d4 g,)
        }

    \relative c'' {
        | d4 bf!8 f' d4 fs,8 a'
        | g8 a d, fs e fs b, c
        \time 3/4
        | <b d>8[( q] <g b>[ q] <f a>[ q])
        \time 2/4
        | \times 2/3 { <cs' e>4( q <a cs>) }
        \time 6/4
        | <f' a>8[( q] <d f>[ q] <c e>[ q] <a c>[ q] <g b>[ q] <e g>[ q]
        }

    \key g \major
    \bar "||"
    \relative c' {
        \time 4/4
        | <c e>1->)
        | b'4( g8 d' b4 e,8 g'
        | fs4 b,8 e d4) c8( a
        | b4 g) e( g8 a
        | b b g g) e4( d)
        }

    \relative c'' {
        | b4( g8 d' b4) e,8( g'
        | fs8 g b, e d e c a
        | b4) << { g( e) } \\ { <b d>( c) } >> \slurUp g'8(-- a--
        | b-- b-- g-- g)--
        << { e4( e8 d | e1) } \\ { s4 c-> ~ | c1 } >>
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
    \key c \major
    << \relative c' {
        | r4 <e, gs> r <e g>
        | r <g bf> r <f a>
        }
    \\ \relative c {
        | gs2 a
        | cs, d
        } >>

    << \relative c' {
        | r4 <a cs> r <f a>
        | r <fs c' ef> r <g bf d>
        }
    \\ \relative c {
        | e,2 f
        | fs g
        } >>

    << \relative c' {
        | r4 <d f> r <a d>
        | r <cs g'> r <c g'>
        }
    \\ \relative c {
        | bf2 d,
        | b' c
        } >>

    \relative c {
        | d2.
        | d,2
        | cs1.
        }

    \key g \major
    << \relative g {
        | r4 <c d>(-- q-- q--
        | q-- q-- q-- q--
        | <gs d'>-- q-- <a cs>-- <d, c'>)--
        | r <b' d> r <c e>
        | r <b d> r <a c>
        }
    \\ \relative g, {
        | <d d,>1-> ~
        | q ~
        | q
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
    r4
    | r2
    << \relative g {
        r8 g ~ g4 ~
        | g1
        }
    \\ \relative c, {
        <c c'>2-> ~
        | q1
        } >>

    }

dynamics = {
    | s1*8\p

    \set crescendoText = \markup { \dynamic p \italic { cresc. poco a poco } }
    \set crescendoSpanner = #'text
    | s1*4\<
    | s1*2
    | s2.
    | s2
    \set crescendoSpanner = #'hairpin
    | s1.\mf\<

    | s4\f
    s2.\p
    | s1
    | s
    | s
    | s2 s4\> s\!

    | s1\<
    | s
    | s4 s\mp s\p
    }

stuff = <<
    \new PianoStaff <<
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
