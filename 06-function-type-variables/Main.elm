module Main exposing (..)

import Html exposing (..)


numbers : List Int
numbers =
    [ 1, 2, 3, 4, 5 ]


printThing : thing -> Html msg
printThing thing =
    ul [] [ text <| toString thing ]


fruits : List { name : String }
fruits =
    [ { name = "Orange" }, { name = "Banana" } ]


type alias Ship =
    { name : String
    , cost : Int
    }


main : Html.Html msg
main =
    div []
        [ ul []
            (List.map printThing numbers)
        , ul
            []
            (List.map printThing fruits)
        ]
