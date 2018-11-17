\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "The worst possible thing"
    copyright = "© 2018"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4 = 120
    \key c \major

    \time 3/4

    \relative c'' {
        \partial 4
        \times 2/3 { gs8( f b }
        | c8.) <cs g e>16-> q4-> q-> ~
        | q r

        \times 2/3 { gs8 f b }
        | c8. cs16 cs4 cs
        | cs8. d16 d4 d
        | d8. ds16 ds4 ds ~
        | ds gs fs
        | fs8. e16 e4 e ~

        \time 4/4
        | e ds( d)
        }

    \relative c'' {
        \times 2/3 { gs8 f b }
        \time 3/4
        | c8. cs16 cs4 cs
        | cs8. d16 d4 d
        | d8. ds16 ds4 ds ~
        | ds b' as

        | as8. gs16 gs4 gs ~
        | gs gs fss
        | fss8. es16 es4 es ~
        | es es ds
        }

    \relative c'' {
        | R2.
        | ef
        | f4 bf, c
        | d ef f
        | gf2.
        | af

        | g2.
        | a
        | b4 e, fs
        | gs a b
        | c2.
        | d

        | cs2. ~
        | cs ~
        | cs

        | R2.*3
        }

    \relative c'' {
        | r2 cs4 ~
        | cs cs ds
        | es fs gs
        | as b cs
        | d2. ~
        \time 2/4
        | d4 d ~
        \time 3/4
        | d cs b
        | a gs fs
        | fs8[ ds e as gs8. fs16]
        % | \times 6/8 { fs8 d ds e es as gs fs }
        | fs2. ~
        \time 2/4
        | fs4 fs ~
        \time 3/4
        | fs fs gs
        | as b cs
        | ds e fs
        | gs a b
        | c2. ~
        \time 2/4
        | c4 c ~
        \time 3/4
        | c b a
        | g fs e
        | ef d c
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"
    \key c \major

    \relative c {
        r4
        | r8. <g cs e g>16 q4 q ~
        | q r2

        | gs4 <e'' g> q
        | cs,, <ds'' fs> q
        | fs,, <gs' b f'> q
        | b,, <a'' b ds> <a b a'>

        | e, <b'' e> <b e gs>
        | f, <c'' f a> r
        }

    \relative c {
        r
        | fs, <as' cs e?> q
        | cs,, <as'' d? e> q
        | gs, <gs' as ds> q
        | ds, <fss' cs' ds> <cs' ds b'>

        | <gs,, gs'> <b'' ds gs> q
        | <b,, b'> <b'' ds gs> <b ds gss>
        | <cs,, cs'> <cs'' es gs> q
        | fss, <cs' ds fss> r
        }

    \relative c' {
        % write out repeat by hand to avoid duplicating the accidental
        | <af b? d>8. q16 q4 q
        | <af b d>8. q16 q4 q
        \repeat unfold 2 { | <af bf d>8. q16 q4 q }
        \repeat unfold 2 { | <a c ef>8. q16 q4 q }
        \repeat unfold 2 { | <bf df ff>8. q16 q4 q }
        \repeat unfold 2 { | <b d e>8. q16 q4 q }
        \repeat unfold 2 { | <bs ds fs>8. q16 q4 q }
        \repeat unfold 3 { | <as cs fs>8. q16 q4 q }

        | cs,,8. <b'' cs fs>16 q4 q
        | r <b cs> q
        | r q r
        | q r q
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
