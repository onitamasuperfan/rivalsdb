module UI.Icon exposing
    ( IconImage(..)
    , IconStyle(..)
    , attackType
    , clan
    , discipline
    , icon
    )

import Cards
import Data.Clan as Clan exposing (Clan)
import Data.Discipline as Discipline exposing (Discipline)
import Html exposing (Attribute, Html, span, text)
import Html.Attributes exposing (class, title)



------
-- ICONS
------


type IconImage
    = Action
    | Agenda
    | AgendaCard
    | Alchemy
    | Attack
    | Blood
    | BloodPotencReq
    | BloodPotency
    | Brujah
    | Conspiracy
    | Damage
    | Delete
    | Edit
    | Faction
    | Gangrel
    | Haven
    | Influence
    | InfluenceModifier
    | Leader
    | Library
    | Malkavian
    | Mental
    | Menu
    | Nosferatu
    | Ongoing
    | Physical
    | Ranged
    | Reaction
    | Ritual
    | Save
    | Scheme
    | Shield
    | Social
    | Special
    | Kindred
    | ThinBlood
    | Title
    | Toreador
    | Tremere
    | UnhostedAction
    | Ventrue
    | Discipline Discipline


type IconStyle
    = Standard
    | Negative
    | Colored


type alias Icon =
    ( IconImage, IconStyle )



------
-- MATCHERS
------


clan : IconStyle -> Clan -> Html msg
clan style c =
    case c of
        Clan.Brujah ->
            icon ( Brujah, style )

        Clan.Gangrel ->
            icon ( Gangrel, style )

        Clan.Malkavian ->
            icon ( Malkavian, style )

        Clan.Nosferatu ->
            icon ( Nosferatu, style )

        Clan.ThinBlood ->
            icon ( ThinBlood, style )

        Clan.Toreador ->
            icon ( Toreador, style )

        Clan.Tremere ->
            icon ( Tremere, style )

        Clan.Ventrue ->
            icon ( Ventrue, style )


discipline : Discipline -> Html msg
discipline d =
    icon ( Discipline d, Standard )


attackType : Cards.AttackType -> Html msg
attackType a =
    case a of
        Cards.Mental ->
            icon ( Mental, Standard )

        Cards.Physical ->
            icon ( Physical, Standard )

        Cards.Ranged ->
            icon ( Ranged, Standard )

        Cards.Social ->
            icon ( Social, Standard )



------
-- HELPERS
------


icon : Icon -> Html msg
icon ( image, style ) =
    let
        ( imageClass, name ) =
            imageOpts image
    in
    span [ class "ui-icon", styleClass style, imageClass, title name ] [ span [] [ text name ] ]


styleClass : IconStyle -> Attribute msg
styleClass style =
    case style of
        Standard ->
            class "ui-icon--standard"

        Colored ->
            class "ui-icon--colored"

        Negative ->
            class "ui-icon--negative"


imageOpts : IconImage -> ( Attribute msg, String )
imageOpts image =
    case image of
        Discipline Discipline.Animalism ->
            ( class "ui-icon_animalism", "Animalism" )

        Discipline Discipline.Auspex ->
            ( class "ui-icon_auspex", "Auspex" )

        Discipline Discipline.BloodSorcery ->
            ( class "ui-icon_blood_sorcery", "Blood Sorcery" )

        Discipline Discipline.Celerity ->
            ( class "ui-icon_celerity", "Celerity" )

        Discipline Discipline.Dominate ->
            ( class "ui-icon_dominate", "Dominate" )

        Discipline Discipline.Fortitude ->
            ( class "ui-icon_fortitude", "Fortitude" )

        Discipline Discipline.Obfuscate ->
            ( class "ui-icon_obsfuscate", "Obfuscate" )

        Discipline Discipline.Potence ->
            ( class "ui-icon_potence", "Potence" )

        Discipline Discipline.Presence ->
            ( class "ui-icon_presence", "Presence" )

        Discipline Discipline.Protean ->
            ( class "ui-icon_protean", "Protean" )

        Discipline Discipline.ThinBloodAlchemy ->
            ( class "ui-icon_thin_blood_alchemy", "Thin-blood Alchemy" )

        Action ->
            ( class "ui-icon_action", "Action" )

        Agenda ->
            ( class "ui-icon_agenda", "Agenda" )

        AgendaCard ->
            ( class "ui-icon_crown", "Agenda" )

        Alchemy ->
            ( class "ui-icon_alchemy", "Alchemy" )

        Attack ->
            ( class "ui-icon_attack", "Attack" )

        Blood ->
            ( class "ui-icon_blood", "Blood" )

        BloodPotencReq ->
            ( class "ui-icon_bloodpotencyrequirement", "Blood Potency Requirement" )

        BloodPotency ->
            ( class "ui-icon_bloodpotency", "Blood Potency" )

        Brujah ->
            ( class "ui-icon_brujah", "Brujah" )

        Conspiracy ->
            ( class "ui-icon_conspiracy", "Conspiracy" )

        Damage ->
            ( class "ui-icon_damage", "Damage" )

        Delete ->
            ( class "ui-icon_delete", "Delete" )

        Edit ->
            ( class "ui-icon_edit", "Edit" )

        Faction ->
            ( class "ui-icon_faction", "Faction" )

        Gangrel ->
            ( class "ui-icon_gangrel", "Gangrel" )

        Haven ->
            ( class "ui-icon_haven", "Haven" )

        Influence ->
            ( class "ui-icon_influence", "Influence" )

        InfluenceModifier ->
            ( class "ui-icon_influence_modifier", "Influence Modifier" )

        Kindred ->
            ( class "ui-icon_skull", "All Kindred" )

        Leader ->
            ( class "ui-icon_leader", "Leader" )

        Library ->
            ( class "ui-icon_library", "Library" )

        Malkavian ->
            ( class "ui-icon_malkavian", "Malkavian" )

        Mental ->
            ( class "ui-icon_mental", "Mental" )

        Menu ->
            ( class "ui-icon_menu", "Menu" )

        Nosferatu ->
            ( class "ui-icon_nosferatu", "Nosferatu" )

        Ongoing ->
            ( class "ui-icon_ongoing", "Ongoing" )

        Physical ->
            ( class "ui-icon_physical", "Physical" )

        Ranged ->
            ( class "ui-icon_ranged", "Ranged" )

        Reaction ->
            ( class "ui-icon_reaction", "Reaction" )

        Ritual ->
            ( class "ui-icon_ritual", "Ritual" )

        Save ->
            ( class "ui-icon_save", "Save" )

        Scheme ->
            ( class "ui-icon_scheme", "Scheme" )

        Shield ->
            ( class "ui-icon_shield", "Shield" )

        Social ->
            ( class "ui-icon_social", "Social" )

        Special ->
            ( class "ui-icon_special", "Special" )

        ThinBlood ->
            ( class "ui-icon_thinblood", "Thin Blood" )

        Title ->
            ( class "ui-icon_title", "Title" )

        Toreador ->
            ( class "ui-icon_toreador", "Toreador" )

        Tremere ->
            ( class "ui-icon_tremere", "Tremere" )

        UnhostedAction ->
            ( class "ui-icon_unhosted_action", "Unhosted Action" )

        Ventrue ->
            ( class "ui-icon_ventrue", "Ventrue" )
