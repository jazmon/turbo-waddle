module Components.CodeBlock exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import App.Types exposing (Msg(..), Model)


type alias CodeStr =
    String


view : CodeStr -> Html Msg
view codeString =
    div [ class "col-md-10" ]
        [ pre
            [ class "code-block" ]
            [ Html.code
                []
                [ text codeString ]
            ]
        ]
