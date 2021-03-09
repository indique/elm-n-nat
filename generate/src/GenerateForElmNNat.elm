module GenerateForElmNNat exposing (main)

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
    { nNatModuleShownOrFolded :
        ShownOrFolded (Ui.Element Msg)
    , internalModuleShownOrFolded :
        ShownOrFolded (Ui.Element Msg)
    , natsModuleShownOrFolded :
        ShownOrFolded (Ui.Element Msg)
    }


type ShownOrFolded content
    = Shown content
    | Folded



--tags


type NNatTag
    = NNatType
    | NNatAdd
    | NNatSub
    | NNatTransform

type NatsTag =
    NatsValue

--


init : ( Model, Cmd Msg )
init =
    ( { nNatModuleShownOrFolded = Folded
      , internalModuleShownOrFolded = Folded
      , natsModuleShownOrFolded = Folded
      }
    , Cmd.none
    )


type Msg
    = DownloadModules
    | DownloadModulesAtTime ( Time.Zone, Time.Posix )
    | SwitchVisibleModule ModulesInElmNArrays


type ModulesInElmNArrays
    = NNat
    | Nats
    | Internal


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
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
                    [ toZipEntry nNatModule
                    , toZipEntry internalModule
                    , toZipEntry natsModule
                    ]
                    |> Zip.toBytes
                )
            )

        SwitchVisibleModule moduleKind ->
            ( case moduleKind of
                NNat ->
                    { model
                        | nNatModuleShownOrFolded =
                            switchShownOrFolded
                                (.nNatModuleShownOrFolded model)
                                viewNNatModule
                    }

                Internal ->
                    { model
                        | internalModuleShownOrFolded =
                            switchShownOrFolded
                                (.internalModuleShownOrFolded model)
                                viewInternalModule
                    }
                
                Nats ->
                    { model
                        | natsModuleShownOrFolded =
                            switchShownOrFolded
                                (.natsModuleShownOrFolded model)
                                viewNatsModule
                    }
            , Cmd.none
            )


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



--


nNatAnn : Elm.CodeGen.TypeAnnotation -> Elm.CodeGen.TypeAnnotation
nNatAnn n =
    typed "NNat" [ n ]


nAnn :
    Elm.CodeGen.TypeAnnotation
    -> Elm.CodeGen.TypeAnnotation
    -> Elm.CodeGen.TypeAnnotation
nAnn a difference =
    typed "N"
        [ a
        , typed "Is" []
        , difference
        ]


differenceAnn :
    Elm.CodeGen.TypeAnnotation
    -> Elm.CodeGen.TypeAnnotation
    -> Elm.CodeGen.TypeAnnotation
differenceAnn a nPlusA =
    typed "Difference"
        [ a, typed "To" [], nPlusA ]


nXNatPlusAnn : Int -> Elm.CodeGen.TypeAnnotation -> Elm.CodeGen.TypeAnnotation
nXNatPlusAnn x more =
    typed ("Nat" ++ String.fromInt x ++ "Plus") [ more ]


toIntAnn : Elm.CodeGen.TypeAnnotation
toIntAnn =
    funAnn [ nNatAnn (typeVar "n") ] intAnn


zeroAnn : Elm.CodeGen.TypeAnnotation
zeroAnn =
    nNatAnn
        (nAnn
            (typed "Nat0" [])
            (differenceAnn (typeVar "a") (typeVar "a"))
        )


addXAnn : Int -> Elm.CodeGen.TypeAnnotation
addXAnn x =
    funAnn
        [ nNatAnn
            (nAnn
                (typeVar "n")
                (differenceAnn (typeVar "a") (typeVar "nPlusA"))
            )
        ]
        (nNatAnn
            (nAnn
                (nXNatPlusAnn x (typeVar "n"))
                (differenceAnn
                    (typeVar "a")
                    (nXNatPlusAnn x (typeVar "nPlusA"))
                )
            )
        )


subXAnn : Int -> Elm.CodeGen.TypeAnnotation
subXAnn x =
    funAnn
        [ nNatAnn
            (nAnn
                (nXNatPlusAnn x (typeVar "nMinus1"))
                (differenceAnn
                    (typeVar "a")
                    (nXNatPlusAnn x (typeVar "nPlusAMinus1"))
                )
            )
        ]
        (nNatAnn
            (nAnn (typeVar "nMinus1")
                (differenceAnn (typeVar "a") (typeVar "nPlusAMinus1"))
            )
        )



--


lastN : Int
lastN =
    192


viewInternalModule : Ui.Element msg
viewInternalModule =
    Ui.module_ internalModule


internalModule : Module Never
internalModule =
    { name = [ "Internal" ]
    , roleInPackage =
        PackageInternalModule
    , imports =
        [ importStmt [ "N", "Nat", "Type" ]
            noAlias
            (exposingExplicit
                [ typeOrAliasExpose "Nat1Plus"
                , typeOrAliasExpose "Nat0"
                ]
            )
        , importStmt [ "N", "Type" ] noAlias exposingAll
        ]
    , declarations =
        [ packageInternalExposedTypeDecl ClosedType
            "NNat"
            [ "n" ]
            [ ( "NNat", [ intAnn ] ) ]
        , packageInternalExposedFunDecl
            toIntAnn
            "toInt"
            [ namedPattern "NNat" [ varPattern "int" ] ]
            (val "int")
        , packageInternalExposedFunDecl
            zeroAnn
            "zero"
            []
            (construct "NNat" [ int 0 ])
        , packageInternalExposedFunDecl
            (addXAnn 1)
            "add1"
            [ varPattern "nat" ]
            (construct "NNat"
                [ parens
                    (applyBinOp
                        (construct "toInt" [ val "nat" ])
                        plus
                        (int 1)
                    )
                ]
            )
        , packageInternalExposedFunDecl
            (subXAnn 1)
            "sub1"
            [ varPattern "nat" ]
            (construct "NNat"
                [ parens
                    (applyBinOp
                        (construct "toInt" [ val "nat" ])
                        minus
                        (int 1)
                    )
                ]
            )
        ]
    }


viewNNatModule : Ui.Element msg
viewNNatModule =
    Ui.module_ nNatModule


nNatModule : Module NNatTag
nNatModule =
    { name = [ "NNat" ]
    , roleInPackage =
        PackageExposedModule
            { moduleComment =
                \declarations ->
                    [ markdown "Representing natural numbers (`>=0`)."
                    , markdown "This module lets you represent exact values in the `NNat` type."
                    , markdown "This means, packages like [elm-n-array](https://package.elm-lang.org/packages/indique/elm-n-array/latest/) can use a `NNat` to promise:"
                    , code "fromRepeating : NNat n -> element -> NArray n element"
                    , markdown "→ repeating an element n times gives a Array with n elements!"
                    , markdown "The other use is to describe a difference between two values."
                    , code "interval :"
                    , code "    { first : NNat (N first Is (Difference range To last))"
                    , code "    , last : NNat (N last Is lastDifference)"
                    , code "    }"
                    , code "-> Interval"
                    , code "→ because `range` is 0 or positive, `last` must also be at least as high as `first`."
                    , markdown "See the readme for more information."
                    , docTagsFrom NNatType declarations
                    , markdown "## transform"
                    , docTagsFrom NNatTransform declarations
                    , markdown "## add"
                    , docTagsFrom NNatAdd declarations
                    , markdown "## at least"
                    , docTagsFrom NNatSub declarations
                    ]
            }
    , imports =
        [ importStmt [ "N", "Nat", "Type" ] noAlias exposingAll
        , importStmt [ "N", "Type" ] noAlias exposingAll
        , importStmt [ "Internal" ] noAlias noExposing
        ]
    , declarations =
        [ [ packageExposedAliasDecl NNatType
                [ markdown "A natural number (`<= 0`), where you know the exact value."
                , markdown "`NNat.n3` is of type"
                , code "NNat (N N3Nat Is (Difference a To (N3NatPlus a)))"
                , markdown "This means, its exact value can be described as"
                , markdown "  - `N3Nat`"
                , markdown "  - the `Diffence` of some `a` to `a` plus 3."
                ]
                "NNat"
                [ "n" ]
                (fqTyped [ "Internal" ] "NNat" [ typeVar "n" ])
          ]
        , [ packageExposedFunDecl NNatTransform
                [ markdown "Convert a `NNat` to an `Int`."
                , code "NNat.n4 |> NNat.toInt"
                , code "--> 4"
                ]
                toIntAnn
                "toInt"
                []
                (fqConstruct [ "Internal" ] "toInt" [])
          ]
        , List.range 1 128
            |> List.map
                (\x ->
                    packageExposedFunDecl NNatAdd
                        [ markdown ("The `NNat` plus " ++ String.fromInt x ++ ".")
                        ]
                        (addXAnn x)
                        ("add" ++ String.fromInt x)
                        []
                        (case x of
                            1 ->
                                fqConstruct [ "Internal" ] "add1" []

                            _ ->
                                applyBinOp
                                    (fun ("add" ++ String.fromInt (x - 1)))
                                    composer
                                    (fun "add1")
                        )
                )
        , List.range 1 128
            |> List.map
                (\x ->
                    packageExposedFunDecl NNatSub
                        [ markdown ("The NNat minus " ++ String.fromInt x ++ ".")
                        ]
                        (subXAnn x)
                        ("sub" ++ String.fromInt x)
                        []
                        (case x of
                            1 ->
                                fqConstruct [ "Internal" ] "sub1" []

                            _ ->
                                applyBinOp
                                    (fun ("sub" ++ String.fromInt (x - 1)))
                                    composer
                                    (fun "sub1")
                        )
                )
        ]
            |> List.concat
    }


viewNatsModule : Ui.Element msg
viewNatsModule =
    Ui.module_ natsModule


natsModule : Module NatsTag
natsModule =
    { name = [ "Nats" ]
    , roleInPackage =
        PackageExposedModule
            { moduleComment =
                \declarations->
                    [ markdown "`NNat Nat0` to `NNat Nat192`."
                    , docTagsFrom NatsValue declarations
                    ]
            }
    , imports =
        [ importStmt [ "NNat" ] noAlias
            (exposingExplicit [ funExpose "add1", typeOrAliasExpose "NNat" ])
        , importStmt [ "N", "Nat", "Type" ] noAlias exposingAll
        , importStmt [ "N", "Type" ] noAlias exposingAll
        , importStmt [ "Internal" ] noAlias noExposing
        ]
    , declarations =
        [ [ packageExposedFunDecl NatsValue
                [ markdown "The `NNat` 0." ]
                zeroAnn
                "nat0"
                []
                (fqConstruct [ "Internal" ] "zero" [])
          ]
        , List.range 1 lastN
            |> List.map
                (\x ->
                    packageExposedFunDecl NatsValue
                        [ markdown ("The `NNat` " ++ String.fromInt x ++ ".") ]
                        (nNatAnn
                            (nAnn
                                (typed ("Nat" ++ String.fromInt x) [])
                                (differenceAnn (typeVar "a")
                                    (nXNatPlusAnn x (typeVar "a"))
                                )
                            )
                        )
                        ("nat" ++ String.fromInt x)
                        []
                        (applyBinOp
                            (val ("nat" ++ String.fromInt (x - 1)))
                            piper
                            (fun "add1")
                        )
                )
        ]
        |>List.concat
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
view { nNatModuleShownOrFolded, internalModuleShownOrFolded, natsModuleShownOrFolded } =
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
                (Ui.text "elm-n-nat modules")
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
                        [ ( nNatModuleShownOrFolded
                          , ( "NNat", NNat )
                          )
                        , ( internalModuleShownOrFolded
                          , ( "Internal", Internal )
                          )
                        , ( natsModuleShownOrFolded
                          , ( "Nats", Nats )
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
