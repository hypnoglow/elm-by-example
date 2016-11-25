module Main exposing (..)

import Html exposing (..)
import String.Extra exposing (underscored)


items =
    [ "GreenEggs", "GreenHam" ]


main =
    div []
        [ h1 [] [ text <| "Items" ]
        , text <| toString <| List.map (\item -> underscored item) items
        ]
