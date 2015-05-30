\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "Variations for flute"
    copyright = "© 2015"
    }

stuff = \relative c'' {
    \tempo "Freely" 4 = 72

    \time 3/4
    | e16( cs a f a c) r8 r4
    \time 4/4
    | \acciaccatura af'8 f2( e16 d c8) r4
    \time 3/4
    | \acciaccatura af'8 f2( \times 2/3 { e8 d c }
    | e-_) cs-_ a-_ f-_ a-_ c-_
    | \acciaccatura { af'16 f } e8( d c4) r
    | \acciaccatura e8 cs-. r r2

    \bar "||"
    \tempo "Triumphantly" 4 = 112

    \time 4/4
    | e8.( cs16 a'4 ~ a8.) f32( a c4)
    | \acciaccatura af'8 f8.( e32 d c8.) e32( d c8 e \acciaccatura d c) r
    | e,8.( cs16 a'4 ~ a8.) \times 2/3 { f32( a c } af'4) ~
    | af8. f32( e d8.) f,32( e d4\trill c8) r

    | e8.( cs16 a4 ~ a8) f'16( a c,8) r
    | \acciaccatura af8 f'8.( e32 d c'8.) e,32( d c'8. e,16 d8) r
    | \acciaccatura e8 cs8.( a16 f4 ~ f8.) a32( c af8) r
    | \acciaccatura f'8 e8.( d32 c e8.) d32( c e4\trill d)
    \time 2/4
    | \acciaccatura { f16 e } d2\trill
    \time 4/4
    | c1
    | \acciaccatura e8 cs-. r r4 r r8 r16

    a16(
    \bar "||"
    \tempo "Clumsily" 4 = 88
    \time 2/4
    | f8)-. a-. c( af16 f e8)-. d-. c-. r
    | e8.( cs16 a' f a f a8 c) r gs'16( a
    | f8)-. a,-. c-. af'16( f e,8)-. d-. c-. r
    | e8.( cs16 a'8 f16 a f4) r8 a16( c

    | af'8. f16 af8. f16 e d c8) r c16( e
    | cs8)-. c16( e cs8)-. c16( e cs4 a16 f a c)
    | af'8.( f16 c'8 af16 f e d c8) r c16( e
    | cs8)-. c16( e d c e d
    | c4) r8

    c16( a
    | f8)-. a-. c( af16 f e8)-. d-. c-. r
    | e8.( cs16 a' f a f a8 c) r gs'16( a
    | f8)-. a,-. c-. af'16( f e f e d) c,8-- r
    | e'( cs16 a' f8 e16 d
    \time 4/4
    | c1)
    | \acciaccatura e8 cs-. r r4 r2

    \bar "||"
    \tempo "Plainly" 4 = 80
    | e8( cs' a d, c'4) r
    \time 3/4
    | r e,8( cs a') r
    \time 4/4
    | e8( cs' a f a--) r c-- r
    | r4 af8.( a32 c af8 f e4)

    | af,8( f' e d c'4) r
    \time 3/4
    | r e,8( cs a) r
    \time 4/4
    | f1
    \time 2/4
    | e'8( cs' a) r
    \time 4/4
    | \acciaccatura f8 a1
    \time 2/4
    | c,8( af' f) r

    \time 4/4
    | e8( cs a d c'4) r
    | r e,8.( cs32 e cs8 af') r f(

    \bar "||"

    \time 3/4
    | e d c2)
    | \acciaccatura e8 cs-. r r2
    | \acciaccatura { e16 d } c2.
    | \acciaccatura e8 cs-_ a-_ f-_ a-_ c-_ af'-_
    | \acciaccatura f8 e16( d c8 ~ c2)\fermata

    \bar "|."

    }

\score {
    \stuff
    \layout { }
    }

\score {
    % \articulate \stuff
    \stuff
    \midi { }
    }
