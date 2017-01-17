\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Variations assignment"
    copyright = "© 2015"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 120

    \time 4/4

    \mark "A"
    \clef bass
    \relative c {
        | <cs cs'>1
        | <c c'>
        }

    \bar "||"

    \mark "A1"
    \clef treble
    \tempo 4 = 120
    \relative c' {
        | fs4( g gs a
        | bf a af g)
        | gs( a as b
        | c b bf a)
        }

    \bar "||"

    \mark "A2"
    \tempo 4 = 180
    \clef treble
    \relative c' {
        | r8 <f g cs> r q r q r q
        \time 11/8
        | r8 q4. r8 q4. r8 q r
        \time 4/4
        | r8 <e fs c'> r q r q r q
        \time 11/8
        | r8 q4. r8 q4. r8 q r
        }

    \bar "||"

    \mark "B"
    \tempo 4. = 60
    \clef treble
    \relative c' {
        \time 6/8
        | c8( gf' ef) a4. ~
        | a4. c8( gf a)
        | ef4. a8( ef gf)
        | c,4. d
        }

    \bar "||"

    \mark "B1"
    \tempo 4 = 120
    \clef treble
    \relative c' {
        \time 4/4
        | c4( gf'8 ef) a4.(-- a8)-.
        | ef4( a8 gf) c4.(-- c8)-.
        | ef4 b8( d) bf4 bf8(-. bf)-.
        | df4 a8( c) af4-- g--
        }

    \bar "||"

    \mark "B2"
    \tempo 4 = 60
    \relative c' {
        \time 4/4
        | r2 a'8( ef'4 c8)
        | <a fs'>1 ~
        | q
        }

    \bar "||"

    \mark "AB"
    \tempo 4 = 120
    \relative c' {
        \time 4/4
        | c4.( gf'8 f e ef c)
        | ef4.( c8) ef4.( c8)
        | a'1
        | af
        | g4.( df'8 c b bf g)
        | bf4.( g8) bf4.( g8)
        | e'1
        | f
        }

    \bar "||"

    \mark "C"
    \tempo 4. = 90
    \relative c' {
        \time 6/8
        | R8*6
        | R8*6
        | R8*6
        | R8*6
        }

    \bar "||"

    \mark "C1"
    \tempo 2 = 60
    \relative c'' {
        \time 2/2
        | r8 c4 c8 cs16( d cs8) gs cs,
        | r8 c'4 c8 cs16( d cs8) gs' cs
        | r2 r4 gs8-. <es cs'>-^
        }

    \bar "||"

    \mark "C2"
    \tempo 4 = 60
    \relative c' {
        \time 4/4
        | r2.. c8(
        | g'4. g8 c4. c8
        | g'8 c, g' c, g4.) c8(
        | g2. ~ g8 c
        | g1)
        }

    \bar "||"

    \mark "AC"
    \tempo 4 = 120
    \relative c'' {
        \time 4/4
        | c8-. e-. g-. c-. cs-. gs-. es-. cs-.
        | d fs a d ef bf g ef
        | f a c f e b gs e
        | f a c f e b gs e
        }

    \bar "||"

    \mark "BC"
    \tempo 4 = 120
    \relative c'' {
        \time 7/8
        | \acciaccatura a'8 bf8-.[ e,-. g-.] cs,4-- cs--
        | \acciaccatura ds8 e8-.[ bf-. cs-.] g4-- g--
        | \acciaccatura bf8 a8([ d) b-.] ds2\trill
        | \acciaccatura e8 cs8([ f) d-.] fs4(\trill f)
        }

    \bar "||"

    \mark "ABC"
    \tempo 4 = 90
    \relative c'' {
        \time 3/4
        | <c e g c>2.\f\<
        | cs'8\p gs es cs
        \times 2/3 { \repeat unfold 3 { \acciaccatura as8 b8 } }
        | gs8 es cs4 \times 2/3 { g'8 e cs! }
        | fs8 ds a'2
        | a8 fs c'2
        }

    \bar "|."
    }

B = {
    \set Staff.midiInstrument = #"acoustic grand"

    \clef bass
    \relative c,, {
        | <fs fs'>4 <g g'> <gs gs'> <a a'>
        | <bf bf'> <a a'> <af af'> <g g'>
        }

    % A1
    \relative c' {
        | <g b ds>1
        | <fs as d>
        | <f a cs>
        | <e gs c>
        }

    % A2
    \relative c {
        | fs4( g gs a
        | bf2 a af8) r af(
        | g4 gs a as
        | b2 bf a8) r a
        }

    % B
    \relative c {
        | r4. c8 gf' ef
        | a8 gf c a4.
        | c8 gf a ef4.
        | gf4. af
        }

    % B1
    \relative c {
        | <gf df'>4 <f c'>2.
        | <a e'>4 <af ef'>2.
        | <f' c'>4 <fs cs'> <g d'>2
        | <ds as'>4 <e b'> << { c'4( cs) } \\ f,2 >>
        }

    % B2
    \relative c {
        | c8( fs4 ef8) <c fs>2
        | <bf g'>2 <g e'>
        | <bf g'> <g e'>
        }

    % AB
    \relative c {
        | <c fs a>1
        | <b f' af>
        | as8( b c cs d ds e f)
        | e8( ef d df c b bf a)
        | <g cs e>1
        | <fs c' ef>
        | f8( fs g gs a as b c)
        | <f, cs'>1
        }

    % C
    \relative c {
        | c8 g' c cs\prall gs cs,
        | e b' e f\prall c f,
        | fs, cs' fs af, ef' af
        | bf, f' bf ~ bf4.
        }

    % C1
    \relative c {
        | c4. g'8( <c! e>-!) r g-. r
        | c,4. g'8( <c e>-!) r g-. r
        | r2 r4 g!8-. <c,,! c'!>-^
        }

    % C2
    \relative c {
        | R1
        << {
            | g'8( c g c) f,( bf f bf)
            | ef,( af ef af) f( bf f bf)
            | ef,( af ef af) f( bf f bf)
            | ef,( af c af) g2
            }
        \\ {
            | <c, g'>2 <bf f'>
            | <af ef'> <bf f'>
            | <af ef'> <bf f'>
            | <g d'>1
            } >>
        }

    % AC
    \relative c {
        | c4-. <c' e>-. cs,-. <cs' es>-.
        | d, <d' fs> ef, <ef' g>
        | <f,, f'>2-- <e e'>4-. r
        | <f f'>2-- <e e'>4-. r
        }

    % BC
    \relative c {
        | c8[-. g'-. c-.] <cs es gs>2
        | fs,,8[-. cs'-. fs-.] <g b d>2
        | f8[( c') f-.] <b, ds fs>2
        | a8[( e') a-.] <g, b d>2
        }

    % ABC
    \relative c, {
        | c8 c' g' c e g
        | <b,, b' ds fs>2 <b b' e g>4
        | <bf f' bf>2 <a e' a>4
        << {
            | b'4( \times 2/3 { c8 cs d } \times 2/3 { ds8)-- ds-- ds-- }
            | ds4( e8 f \times 2/3 { fs8)-- fs-- fs-- }
            }
        \\ {
            | <b,, fs' b>2.
            | <c g' c>2.
            } >>
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
    % \articulate \stuff
    \stuff
    \midi { }
    }
