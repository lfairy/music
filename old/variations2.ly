\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 21)

\header {
    title = "Rainbow factory"
    copyright = "© 2015"
    }

A = {
    \set Staff.midiInstrument = #"acoustic grand"
    \tempo "Vigorously" 4 = 120

    \time 4/4

    \clef bass
    \relative c {
        | <cs cs'>1(_\f
        | <c c'>
        | <ef ef'>
        | <d d'>)

        | r4 <e e'>( <fs fs'> <g g'>
        | <a a'> <bf bf'>) <fs fs'>( <gs gs'>
        | <a a'> <b b'> <c c'>) <gs gs'>(
        | <as as'> <b b'> <cs cs'> <d d'>)

        \clef treble
        | r4 <b b'>( <cs cs'> <d d'>
        | <e e'> <f f'>) <cs cs'>( <ds ds'>
        | <e e'> <fs fs'> <g g'>) <ds ds'>(
        | <f f'>\< <fs fs'> <gs gs'> <a a'>)\ff

        | bf1(_\p
        | a
        | c
        | b)

        | r4 <bf df>( <a c> <gs b>)
        | r <f af>( <fs a> <g bf>)
        | r <gs b>( <g bf> <f af>
        | <e g> <f af> <fs a> <g bf>)
        }

    \bar "|."
    }

B = {
    \set Staff.midiInstrument = #"acoustic grand"

    \clef bass
    \relative c,, {
        | <fs fs'>4-- <g g'>-- <gs gs'>-- <a a'>--
        | <bf bf'> <a a'> <af af'> <g g'>
        | <gs gs'> <a a'> <as as'> <b b'>
        | <c c'> <b b'> <bf bf'> <a a'>

        | <bf bf'>2 <a a'>
        | <df df'> <c c'>
        | <ef ef'> <d d'>
        | <e e'> <ef ef'>

        | <f f'>2 <e e'>
        | <af af'> <g g'>
        | <bf bf'> <a a'>
        | <b b'> <bf bf'>

        | r4 <cs' e>( <c ef>) r
        | r <d f>( <cs e>) r
        | r <gs b>( <a c> <as cs>)
        | r <c ef>( <b d> <a c>)

        | af2( g
        | gf1)
        | f2( gf4 f
        | e2) bf' %(

        %{
        | a2 af
        | g1)
        | fs2( g4 fs
        | f2 d)
        %}
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
