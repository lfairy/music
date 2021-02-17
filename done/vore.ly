\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 28)

\header {
    title = "The Vore Song"
    copyright = "© 2017"
    }

vocals = <<
    \relative c' {
        \clef treble
        \set Staff.instrumentName = #"Voice"
        \set Staff.midiInstrument = #"acoustic grand"
        \tempo "Ingenuously" 4 = 112
        \time 4/4

        | c4 d e2
        | f8 e f d g2

        \break

        | a8 a b4 c2
        | c8 b a b g2

        \break

        | g4 f e2
        | d8 c g' b, c2

        \bar "|."
        }

    \addlyrics {
        Ten, nine, eight,
        Put me on a plate.
        Sev -- en, six, five,
        Eat me up a -- live!
        Four, three, two,
        I am \markup { \italic one } with you.
        }
    >>

right_hand = {
    << \relative c' {
        | c4 d e2
        | f8 e f d g2

        | a8 a b4 c2
        | c8 b a b g2

        | g4 f e2
        | d8 c g' b, c2
        }
    \\ \relative c' {
        | g4 <g b> <g c>2
        | <a c>4 <a cs> <g b>2

        | <c f>4 <c f> <c e>2
        | <ds fs>4 <e fs> f2

        | b,4 b <gs b>2
        | <f a>4 <g b> <e g>2
        } >>
    }

left_hand = \relative c {
    \clef bass
    | c4 g c2
    | f,4 d g2

    | f'8 e ef d << { r4 g } \\ a,2 >>
    | d4 fs g2

    | g,4 b c cs
    | d g, << { r4 c } \\ c,2 >>
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
