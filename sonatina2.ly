\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Sonatina"
    copyright = "© 2015"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo 2 = 60
    \key g \major

    \time 2/2

    \clef treble
    \relative c'' {
        \partial 4 d4(
        | b2 g4 c
        | a) d,-> r\fermata e8( fs
        \time 5/4
        | e[ fs e fs] e4 a ~ a8[ fs16 g]
        \time 2/2
        | fs4) d-> r\fermata e8( fs
        \time 5/4
        | e[ fs e fs] e4 b' ~ b8[ a16 b]
        \time 2/2
        | a4 fs2) d'4(
        | c2 fs,4) r
        \time 3/4
        | r2 a8( d
        | c d c d c d
        \time 2/2
        | c2 fs,4) r
        \time 3/4
        | r2 a8( b
        \time 5/4
        | a[ b a b] a4 e' ~ e8[ d16 e]
        | d4 b2.)\fermata a8[( b]
        | a[ b a b] a4 fs' ~ fs8[ d16 e]
        \time 2/2
        | d4) g,-> r2
        }

    \bar "|."
    }

B = {
    \clef bass
    \set Staff.midiInstrument = #"acoustic grand"
    \key g \major

    \relative c' {
        \partial 4 r4
        | << { d2( e) } \\ { g,1 } >>
        | r4 <d,, d'>-> r\fermata r
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
