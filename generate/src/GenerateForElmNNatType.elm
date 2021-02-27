module GenerateForElmNNatType exposing (main)

{-| Helps you generate the source code of all contained modules.
-}

import Browser
import Bytes.Encode
import Element as Ui
import Element.Background as UiBg
import Element.Border as UiBorder
import Element.Font as UiFont
import Element.Input as UiInput
import Elm.CodeGen
    exposing
        ( access
        , and
        , append
        , applyBinOp
        , binOp
        , binOpChain
        , caseExpr
        , char
        , code
        , composel
        , composer
        , cons
        , construct
        , customTypeDecl
        , equals
        , extRecordAnn
        , fqConstruct
        , fqFun
        , fqNamedPattern
        , fqTyped
        , fun
        , funExpose
        , importStmt
        , int
        , intAnn
        , lambda
        , letDestructuring
        , letExpr
        , letFunction
        , letVal
        , list
        , listAnn
        , listPattern
        , markdown
        , maybeAnn
        , minus
        , namedPattern
        , normalModule
        , openTypeExpose
        , parens
        , pipel
        , piper
        , plus
        , record
        , recordAnn
        , recordPattern
        , tuple
        , tupleAnn
        , tuplePattern
        , typeOrAliasExpose
        , typeVar
        , typed
        , unConsPattern
        , unit
        , unitAnn
        , val
        , valDecl
        , varPattern
        )
import Elm.Pretty
import Extra.GenerateElm exposing (..)
import Extra.Ui as Ui
import File.Download
import Html exposing (Html)
import Html.Attributes
import SyntaxHighlight
import Task
import Time
import Zip
import Zip.Entry


main : Program () Model Msg
main =
    Browser.element
        { init = \() -> init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }


type alias Model =
    { lastN : Int
    , nNatTypeModuleShownOrFolded :
        ShownOrFoldedWithOptionalSave (Ui.Element Msg)
    }


type ShownOrFolded content
    = Shown content
    | Folded


type ShownOrFoldedWithOptionalSave content
    = ShownOrFolded (ShownOrFolded content)
    | HiddenWithSave content



--tags


type NNatTypeTag
    = NNatTypeAddAbility
    | NNatTypeExact
    | NNatTypeAtLeast



--


init : ( Model, Cmd Msg )
init =
    ( { lastN = 128
      , nNatTypeModuleShownOrFolded = ShownOrFolded Folded
      }
    , Cmd.none
    )


type Msg
    = ChangeLastN Int
    | DownloadModules
    | DownloadModulesAtTime ( Time.Zone, Time.Posix )
    | SwitchVisibleModule ModulesInElmNArrays


type ModulesInElmNArrays
    = NNatType


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeLastN lastN ->
            ( { model
                | lastN = lastN
                , nNatTypeModuleShownOrFolded = ShownOrFolded Folded
              }
            , Cmd.none
            )

        DownloadModules ->
            ( model
            , Task.perform
                (\time -> DownloadModulesAtTime time)
                (Time.here
                    |> Task.andThen
                        (\here ->
                            Time.now
                                |> Task.map (\now -> ( here, now ))
                        )
                )
            )

        DownloadModulesAtTime time ->
            ( model
            , File.Download.bytes
                "elm-nArrays-modules.zip"
                "application/zip"
                (let
                    toZipEntry moduleFile =
                        zipEntryFromModule time moduleFile
                 in
                 Zip.fromEntries
                    [ toZipEntry (nNatTypeModule (.lastN model))
                    ]
                    |> Zip.toBytes
                )
            )

        SwitchVisibleModule moduleKind ->
            ( case moduleKind of
                NNatType ->
                    { model
                        | nNatTypeModuleShownOrFolded =
                            switchShownOrFoldedWithSave
                                (.nNatTypeModuleShownOrFolded model)
                                (\() ->
                                    nNatTypeModule (.lastN model)
                                        |> Ui.module_
                                )
                    }
            , Cmd.none
            )


switchShownOrFoldedWithSave :
    ShownOrFoldedWithOptionalSave content
    -> (() -> content)
    -> ShownOrFoldedWithOptionalSave content
switchShownOrFoldedWithSave visibility makeContent =
    case visibility of
        ShownOrFolded Folded ->
            ShownOrFolded
                (Shown (makeContent ()))

        HiddenWithSave content ->
            ShownOrFolded (Shown content)

        ShownOrFolded (Shown content) ->
            HiddenWithSave content


switchShownOrFolded :
    ShownOrFolded content
    -> content
    -> ShownOrFolded content
switchShownOrFolded visibility content =
    case visibility of
        Shown _ ->
            Folded

        Folded ->
            Shown content


dropSaved : ShownOrFoldedWithOptionalSave content -> ShownOrFolded content
dropSaved visibilityWithSave =
    case visibilityWithSave of
        ShownOrFolded visibility ->
            visibility

        HiddenWithSave _ ->
            Folded



--


nNatTypeModule : Int -> Module NNatTypeTag
nNatTypeModule lastN =
    { name = [ "N", "Nat", "Type" ]
    , roleInPackage =
        PackageExposedModule
            { moduleComment =
                \declarations ->
                    [ markdown "See the readme for more information."
                    , markdown "## add ability"
                    , docTagsFrom NNatTypeAddAbility declarations
                    , markdown "## at least"
                    , docTagsFrom NNatTypeAtLeast declarations
                    , markdown "## exact"
                    , docTagsFrom NNatTypeExact declarations
                    ]
            }
    , imports = []
    , declarations =
        [ [ packageExposedTypeDecl NNatTypeAddAbility
                ClosedType
                [ markdown "You might want a function, where one `N-X-Nat` should be at least as big as another one."
                , code "unsafeInterval : Nat first -> Nat maybeMoreThanFirst -> Interval"
                , markdown "We cannot promise that `first Plus maybeMore Is maybeMoreThanFirst`. Or can we?"
                , code "type NatWhichCanAdd n addAbility"
                , code "    = NatWhichCanAdd Int"
                , code ""
                , code "oneWithAddAbility : NatWhichCanAdd N1Nat (Plus more Is (N1NatPlus more))"
                , code "oneWithAddAbility ="
                , code "    NatWhichCanAdd 1"
                , code ""
                , code "add1WithAddAbility :"
                , code "    NatWhichCanAdd n (Plus more Is nPlusMore)"
                , code "    -> NatWhichCanAdd (N1NatPlus n) (Plus more Is (N1NatPlus nPlusMore))"
                , code "add1WithAddAbility nNatWhichCanAdd ="
                , code "    let"
                , code "        (NatWhichCanAdd int) ="
                , code "    in"
                , code "    NatWhichCanAdd (int + 1)"
                , markdown "We defined the ability to add!"
                , code "safeInterval :"
                , code "    NatWhichCanAdd first (Plus maybeMore Is last)"
                , code "    -> NatWhichCanAdd last addAbility"
                , code "    -> Interval"
                ]
                "Plus"
                [ "more", "is", "nPlusMore" ]
                [ ( "Plus", [ typed "Never" [] ] ) ]
          , packageExposedTypeDecl NNatTypeAddAbility
                ClosedType
                [ markdown "Simply makes `Plus` look more pleasant."
                , code "NatWhichCanAdd n (Plus more Is nPlusMore)"
                ]
                "Is"
                []
                [ ( "Is", [ typed "Never" [] ] ) ]
          ]
        , [ packageExposedTypeDecl NNatTypeAtLeast
                ClosedType
                [ markdown "At least 1."
                ]
                "N1NatPlus"
                [ "more" ]
                [ ( "N1Plus", [ typed "Never" [] ] ) ]
          ]
        , List.range 2 lastN
            |> List.map
                (\n ->
                    packageExposedAliasDecl NNatTypeAtLeast
                        [ markdown ("At least " ++ String.fromInt n ++ ".")
                        ]
                        ("N" ++ String.fromInt n ++ "NatPlus")
                        [ "more" ]
                        (typed ("N" ++ String.fromInt (n - 1) ++ "NatPlus")
                            [ typed "N1NatPlus" [ typeVar "more" ] ]
                        )
                )
        , [ packageExposedTypeDecl NNatTypeExact
                ClosedType
                [ markdown "Exact 0."
                ]
                "N0Nat"
                []
                [ ( "N0Nat", [ typed "Never" [] ] ) ]
          ]
        , List.range 1 lastN
            |> List.map
                (\n ->
                    packageExposedAliasDecl NNatTypeExact
                        [ markdown ("Exact " ++ String.fromInt n ++ ".")
                        ]
                        ("N" ++ String.fromInt n ++ "Nat")
                        []
                        (typed ("N" ++ String.fromInt n ++ "NatPlus")
                            [ typed "N0Nat" [] ]
                        )
                )
        ]
            |> List.concat
    }



--


args : (arg -> String) -> List arg -> String
args argToString =
    List.map argToString >> String.join " "


indexed : ((String -> String) -> a) -> Int -> Int -> List a
indexed use first last =
    List.range first last
        |> List.map
            (\i ->
                use (\base -> base ++ String.fromInt i)
            )


charIndex : Int -> Char
charIndex i =
    i + Char.toCode 'a' |> Char.fromCode


charPrefixed : ((String -> String) -> a) -> Int -> List a
charPrefixed use last =
    List.range 0 last
        |> List.map
            (charIndex >> (\i -> use (String.cons i)))


view : Model -> Html Msg
view { lastN, nNatTypeModuleShownOrFolded } =
    Ui.layoutWith
        { options =
            [ Ui.focusStyle
                { borderColor = Just (Ui.rgba 0 1 1 0.38)
                , backgroundColor = Nothing
                , shadow = Nothing
                }
            ]
        }
        []
        (Ui.column
            [ Ui.paddingXY 40 60
            , Ui.spacing 32
            , Ui.width Ui.fill
            , Ui.height Ui.fill
            , UiBg.color (Ui.rgb255 35 36 31)
            , UiFont.color (Ui.rgb 1 1 1)
            ]
            [ Ui.el
                [ UiFont.size 40
                , UiFont.family [ UiFont.typeface "Fira Code" ]
                ]
                (Ui.text "elm-n-nat-type modules")
            , Ui.slider { min = 100, max = 1024, value = lastN } ChangeLastN
            , UiInput.button
                [ Ui.padding 16
                , UiBg.color (Ui.rgba 1 0.4 0 0.6)
                ]
                { onPress = Just DownloadModules
                , label = Ui.text "⬇ download elm modules"
                }
            , Ui.column
                [ Ui.width Ui.fill
                ]
                (Ui.el [ Ui.paddingXY 0 6 ]
                    (Ui.text "📂 preview modules")
                    :: (let
                            switchButton text switch =
                                Ui.el
                                    [ Ui.width Ui.fill
                                    , Ui.paddingXY 0 6
                                    , Ui.moveUp 6
                                    ]
                                    (UiInput.button
                                        [ UiBg.color (Ui.rgba 1 0.4 0 0.6)
                                        , Ui.padding 12
                                        , Ui.width Ui.fill
                                        ]
                                        { onPress = Just switch
                                        , label =
                                            Ui.el
                                                [ UiFont.family [ UiFont.typeface "Fira Code" ] ]
                                                (Ui.text text)
                                        }
                                    )

                            viewAccordingToShownOrFolded visibility name switch =
                                case visibility of
                                    Shown ui ->
                                        Ui.row
                                            [ Ui.height Ui.fill, Ui.width Ui.fill ]
                                            [ Ui.el
                                                [ Ui.width (Ui.px 1)
                                                , UiBg.color (Ui.rgba 1 0.4 0 0.6)
                                                , Ui.height Ui.fill
                                                ]
                                                Ui.none
                                            , Ui.column [ Ui.width Ui.fill ]
                                                [ switchButton ("⌃ " ++ name) switch
                                                , Ui.el [ Ui.moveRight 5 ] ui
                                                ]
                                            ]

                                    Folded ->
                                        switchButton ("⌄ " ++ name) switch
                        in
                        [ ( nNatTypeModuleShownOrFolded |> dropSaved
                          , ( "N.Nat.Type", NNatType )
                          )
                        ]
                            |> List.map
                                (\( visibility, ( name, moduleKind ) ) ->
                                    viewAccordingToShownOrFolded visibility
                                        name
                                        (SwitchVisibleModule moduleKind)
                                )
                       )
                )
            ]
        )
