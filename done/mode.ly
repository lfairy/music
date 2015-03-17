\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 23)

\header {
    title = "à la mode"
    copyright = "© 2014"
    }

global = {
    \key c \major
    \time 2/4
    \set Staff.midiInstrument = #"acoustic grand"
    }

A = {
    \clef treble

    \tempo "Strong and clear" 4 = 90

    | R2
    | R
    | R

    \relative c'' {
        | a16( b c e fs8)-. fs-.
        | fs16( e fs a g8. fs16
        | e8. d16 c b c d

        | e4) r
        | R2
        | R2

        | r4 af,16( g af c
        | bf8) d16( bf) c( bf af c
        | bf8) gf16( bf ef df c ef
        | df cf bf df cf8)-. af-.

        | bf4-- r
        | R2

        | a16( b c e fs8)-. fs-.
        | fs16( e fs a g8)-. fs-.
        | e8.-- d16( c b c d
        | e8.)-- d16( c b c d)
        | e2\fermata
        }

    \bar "|."
    }

whiteFMarkup = \markup {
    \combine
    \with-color #white
    \filled-box #'(-2 . 2) #'(-1 . 2) #0
    \dynamic "f"
    }
whiteF = #(make-dynamic-script whiteFMarkup)

dynamics = {
    s2*3\mf

    s4\< s\f
    s2
    s4 s

    s4
    \once \override DynamicText #'X-offset = #0.5
    s\mp
    s2
    s2

    s4 s\p
    s2
    s2
    s2

    s2
    s2\<
    \once \override DynamicText #'X-offset = #-2.5
    s2-\whiteF
    s2
    s2
    \once \override TextScript #'Y-offset = #0
    s2-\markup { \italic "rit." }
    \once \override TextScript #'X-offset = #-0.5
    \once \override TextScript #'Y-offset = #-0.5
    s2-\markup { \italic "sotto" }
    }

B = {
    \clef treble

    \relative c' {
        | d16( e f a b8)-. b-.
        | b16( a b d g,8)-. g-.
        | g16( fs g a d,8)-. e-.

        | fs8.-- g16 a( b c e
        | d8)-. c-. b16( a b d
        | cs8) a16( g a8) g16( f!

        | e4) c16( b c e
        | d8)-. fs-. c16( b c e
        | d8)-. bf-. ef16( d c bf

        | c8)-. ef-.  df4--
        | d8-. f-. ef4--
        | d8-. bf-. c-. af-.
        | bf-. gf16( bf af bf cf df

        | ef8)-. ef-. ef16( df ef gf
        | cs,8)-. cs-. cs16( b! cs e

        | fs8.)-- e16( d e fs a
        | b8)-. a-. b16( a b d
        | cs8)-- a16( g a8)-. g-.
        | fs8-- a16( g fs8)-. f-.
        | e2_\fermata
        }

    }

\score {
    \new PianoStaff <<
        #(set-accidental-style 'piano)
        \new Staff = "A" << \global \A >>
        \new Dynamics \dynamics
        \new Staff = "B" << \global \B >>
        >>
    \layout { }
    }

\score {
    \articulate \new PianoStaff <<
        \new Staff = "A" << \global \A >>
        \new Staff = "B" << \global \B >>
        >>
    \midi { }
    }
