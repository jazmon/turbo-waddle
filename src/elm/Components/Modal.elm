module Components.Modal exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import App.Types exposing (Msg(..))
import Shared.Types exposing (Applicant)


view : Applicant -> Html Msg
view applicant =
    div
      [ class "modal fade", id "modal",  attribute "role" "dialog", attribute "aria-hidden" "true" ]
      [ div
        [ class "modal-dialog", attribute "role" "document" ]
        [ div
          [ class "modal-content" ]
          [ div
            [ class "modal-header" ]
            [ h3
              [ class "modal-title" ]
              [ text "Hire a koodi apina" ]
            ]
          , div
            [ class "modal-body" ]
            [ div [ class "recruit" ]
              [ div [ class ("face face--" ++ applicant.imageClass) ] []
              , div [ class "description" ]
                [ text "Name: "
                , text applicant.name
                , br [][]
                , text "Cost (k€): "
                , text <| toString <| applicant.cost
                , br [][]
                , text "EBIT rate: "
                , text <| toString <| applicant.ebitRate
                ]
              ]
            , div
              [ class "modal-footer" ]
              [ button
                [ type_ "button", class "btn btn-secondary", attribute "data-dismiss" "modal" ]
                [ text "Pass" ]
              , button
                [ type_ "button", class "btn btn-primary", attribute "data-dismiss" "modal", onClick <| TriggerAddCoder { ebitRate = 2, cost = 1 }]
                [ text "Hire" ]
              ]
            ]
          ]
        ]
      ]
