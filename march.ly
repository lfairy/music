\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "March"
    copyright = "© 2015"
    }

A = {
    \clef treble
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 4. = 120

    \time 9/8

    << \relative c'' {
        \key a \major
        \stemDown
        \partial 4. g'4( e8
        \stemUp
        | cs4) r8 cs4 r8 d( cs b
        | b4. cs) b8( a gs
        | fs4. gs) b8( a gs
        | fs4. gs)

        ef'4( c8
        \key f \major
        | a4) r8 a4 r8 bf( a g
        | g4. a) g8( f e
        | d4. e) g8( f e
        | d4. cs)
        }
    \\ \relative c'' {
        \partial 4. s4.
        | r4. a4 r8 gs4 r8
        | a2. ds,4.(
        | e2.) ds4.(
        | e2.)

        r4.
        | r4. f4 r8 e4 r8
        | f2. b,4.(
        | c2.) b4.(
        | a2.)
        } >>

    \relative c'' {
        <a a'>4.
        | <bf bf'>2. <g g'>4.
        | <fs fs'>2.
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"

    \relative c {
        \key a \major
        \partial 4. r4.
        | <a' e'>4 r8 <a e'>4 r8 <bf f'>4 r8
        | <a e'>2. <g d'!>4.(
        | <gs ds'>2.) <f c'>4.(
        | <e b'>2.)

        r4.
        \key f \major
        | <f c'>4 r8 <f c'>4 r8 <gf df'>4 r8
        | <f c'>2. <ds as'>4.(
        | <e b'>2.) <df af'>4.(
        | <a g'>2.)
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
