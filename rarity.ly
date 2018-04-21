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
        | d2.
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
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"
    \key c \major

    \relative c {
        r4
        | r8. <gs gs'>16 q4 q ~
        | q r2

        | gs4 <e'' g> q
        | cs,, <ds'' fs> q
        | fs,, <gs' b f'> q
        | b,, <a'' b ds> <a b a'>

        | e, <b'' e> <b gs'>
        | f, <c'' f a> r
        }

    \relative c {
        r
        | fs, <as' cs> <as cs e?>
        | cs,, <as'' d?> <as d e>
        | gs, <gs' as ds> q
        | ds, <fss' cs' ds> r

        | <gs,, gs'> <b'' ds gs> q
        | <b,, b'> <b'' ds gs> <b ds gss>
        | <cs,, cs'> <cs'' es as> q
        | fss, <cs' ds as'> r
        }

    \clef treble
    \relative c' {
        \repeat unfold 2 { | <ef gf bff>8. q16 q4 q }
        \repeat unfold 2 { | <d f af>8. q16 q4 q }
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
