\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 22)

\header {
    title = "Loop thing"
    copyright = "© 2015"
    }

stuff = \relative c'' {
    \time 3/4
    | e16( cs a f a c) r8 r4
    \time 4/4
    | \acciaccatura af'8 f2( e16 d c8) r4
    \time 3/4
    | \acciaccatura af'8 f2( \times 2/3 { e8 d c }
    | e-_) cs-_ a-_ f-_ a-_ c-_
    | \acciaccatura { af'16 f } e8-- d-- c-- r r4
    | \acciaccatura e8 cs-. r r2

    \bar "||"

    \time 4/4
    | e8.( cs16 a'4 ~ a8.) f32( a c4)
    | \acciaccatura af'8 f8.( e32 d c8.) e32( d c8 e \acciaccatura d c) r
    | e,8.( cs16 a'4 ~ a8.) \times 2/3 { f32( a c } af'4) ~
    | af8. f32( e d8.) f,32( e d4\trill c8) r

    | e8.( cs16 a4 ~ a8) f'16( a c,8) r
    | \acciaccatura af8 f'8.( e32 d c'8.) e,32( d c'8. e,16 d8) r
    | \acciaccatura e8 cs8.( a16 f4 ~ f8.) a32( c af8) r
    | \acciaccatura af8 f''8.( e,32 d f'8.) e,32( d f'8. e,16 d8) r
    \time 2/4
    | \acciaccatura { f16 e } d2\trill
    \time 4/4
    | c1
    | \acciaccatura e8 cs-. r r4 r r8 r16

    a16(
    \bar "||"
    \time 2/4
    | f8) a c af16( f e8) d c r
    | e8.( cs16 a' f a f a8) c r gs'16( a
    | f8) a, c af'16( f e,8) d c r
    | e8.( cs16 a'8 f16 a f4) r8 a16( c

    | af'8. f16 af8. f16 e d c8) r c16( e
    | cs8) c16( e cs8) c16( e cs4) a16( f a c
    | af'8. f16 c'8 af16 f e d c8) r c16( e
    | cs8) c16( e d c e d
    \time 4/4
    | c1)
    | \acciaccatura e8 cs r r4 r2

    }

\score {
    \stuff
    \layout { }
    }

\score {
    \articulate \stuff
    \midi { }
    }
