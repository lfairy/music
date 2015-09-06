\version "2.18.2"

\include "articulate.ly"
\include "shared.ily"

#(set-global-staff-size 22)

\header {
    title = "anyone lived in a pretty how town"
    poet = "E. E. Cummings"
    copyright = "© 2015"
    }

stuff = <<
    \relative e' {
        \clef treble
        \key e \minor
        \set Staff.midiInstrument = #"acoustic grand"
        \tempo 4 = 90
        \time 4/4

        | b'16 b b8 b b16 b c c b8 as b
        | e b c b a16 a g8 fs r
        | b8 r b16 b r8 b16 b r8 b16 b r b
        | c8 b a16 a g8 a g f r

        \bar "||"

        | b16 b b8 b b c16 c b8 as( b)
        | e8 b e16 e e8 f e ds b
        | d!8 b c16 c b8 a g fs4
        | b8 r b r b r b r

        \bar "||"

        | b8 b b b d16 d b8 ds b
        | fs' e16 e d8 c g a b4
        | b16 b r8 b16 b r8 b r b16 b r b
        | c8 b a g f f f4

        \bar "||"

        | b8 b b8. b16 b8 b b8. b16
        | d8 b b8. b16 d8 b b4
        | b8 b b8. b16 b8 b b4
        | c16 c b8 b16 b8 b16 d8 b b4

        \bar "|."
        }

    \addlyrics {
        an -- y -- one lived in a pret -- ty how town
        (with up so float -- ing man -- y bells down)
        spring sum -- mer aut -- umn win -- ter
        he sang his did -- n't he danced his did

        Wom -- en and men (both lit -- tle and small)
        cared for an -- y -- one not at all
        they sowed their is -- n't they reaped their same
        sun moon stars rain

        chil -- dren guessed (but on -- ly a few
        and down they for -- got as up they grew
        aut -- umn win -- ter spring sum -- mer)
        that no -- one loved him more by more

        when by now and tree by leaf
        she laughed his joy she cried his grief
        bird by snow and stir by still
        an -- y -- one's an -- y was all to her
        }
    >>

\score {
    \stuff
    \layout { }
    }

\score {
    \articulate \stuff
    \midi { }
    }
