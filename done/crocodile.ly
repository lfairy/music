\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "How Doth The Little Crocodile"
    poet = "Lewis Carroll"
    copyright = "© 2015"
    }

vocals = <<
    \relative c' {
        \clef treble
        \set Staff.instrumentName = #"Voice"
        \set Staff.midiInstrument = #"acoustic grand"
        \tempo "Lazily" 4 = 80
        \time 4/4

        \partial 8
        c'8
        | c fs, fs fs a16 g a8 ~ a e
        | e g fs d c2
        \time 3/4
        | R4*3
        \time 4/4
        | r2 r4 r8

        c'
        | c b e, g \times 2/3 { a g fs ~ } fs e
        | e g fs d e2
        \time 3/4
        | R4*3
        \time 4/4
        | r2 r4 r8

        c'8
        | c fs, fs fs a g16 b ~ b8\fermata e,
        | e-! g-! ef-! a-! d,4-- r8\fermata c'
        | c b e, g \times 2/3 { a^\markup { \italic "molto rit." } g b ~ } b ef,
        | e a ef d c2^>

        \bar "|."
        }

    \addlyrics {
        How doth the lit -- tle croc -- o -- dile
        Imp -- rove his shin -- ing tail,
        And pour the wat -- ers of the Nile
        On ev -- ery gold -- en scale!

        How cheer -- ful -- ly he seems to grin,
        How neat -- ly spread his claws,
        And wel -- come lit -- tle fish -- es in
        With gent -- ly smi -- ling jaws!
        }
    >>

right_hand = \relative c' {
    r8\p
    << {
        | c4 c d16\arpeggio e fs8 ~ fs b,
        | <g c e>4\arpeggio <a d fs>\arpeggio <f a c>2\arpeggio
        }
    \\ {
        | <g e'>2\arpeggio <fs a>\arpeggio
        } >>

    | <c'' e>8-. <c e>-. <d fs>-. <d fs>-. <c e>-. <c e>-.
    | <f, a c>1\arpeggio

    | << { r8 <b fs'>( <e, b'> <g d'>) } \\ <g, c e>2\arpeggio >>
    \times 2/3 { <e' a e'>8( <d g d'> <cs fs cs'> ~ } <cs fs cs'>4)
    | <g c e>4\arpeggio <a d fs>\arpeggio <gs b e>2\arpeggio

    | <c'' g'>8[( <b fs'>] <e, b'> <d a'>
    \times 2/3 { <b fs'>8 <a e'> <g d'>) }
    | r4 <f c'>2.--

    << {
        | c4 c <fs, a d>2\arpeggio\fermata
        }
    \\ {
        | <g e'>2\arpeggio
        }
    \\ {
        | s2. <fs'' cs'>4\arpeggio\fermata
        } >>

    | <c, e>8-!-\markup { \italic "sharply" } <e g>-! <b ef>-! <ef a>-!
    <f, a d>2\arpeggio\fermata
    | <e' a c>8( <d g b> <c f a> <b e g>)
    << <d f>2 \\ { \times 2/3 { a8( g b ~ } b4) } >>

    | <f a c e>4 <g b ef> <e g c>2\fermata\sf
    }

left_hand = \relative c {
    \clef bass
    r8
    << {
        | g4. g8 a4 a
        }
    \\ {
        | <c, c'>2\arpeggio <d d'>\arpeggio
        | <c g' c>4\arpeggio <d a' d>\arpeggio <f c'>2\arpeggio
        } >>

    \clef treble
    | <c'' g'>8-. <c g'>-. <d a'>-. <d a'>-. <c g'>-. <c g'>-.
    \clef bass
    | << <f, c'>1\arpeggio \\ { r4 f,2. } >>

    << {
        | r4 <g' c> r <g b>
        }
    \\ {
        | <c, g' c>2\arpeggio <d a' d>\arpeggio
        } >>
    | <c g' c>4\arpeggio <d a' d>\arpeggio <e b' e>2\arpeggio

    | R4*3
    | \stemDown <f c' f a c>1\arpeggio \stemNeutral

    | <c g' c>2\arpeggio <d a' d>\arpeggio\fermata
    | c'8-! g'-! b,-! g'-!
    << <f, c'>2\arpeggio\fermata \\ { s4 \acciaccatura g8 <g g,>4\fermata } >>

    | e'2 f,4 <g, g'>
    | f'4 g
    << <c, c'>2\fermata \\ { s4 c,\fermata } >>
    }

stuff = <<
    \vocals
    \new PianoStaff <<
        #(set-accidental-style 'piano)
        \set PianoStaff.instrumentName = #"Piano"
        \set PianoStaff.connectArpeggios = ##t
        \new Staff = "R" \right_hand
        \new Staff = "L" \left_hand
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
