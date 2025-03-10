// Druid
/obj/effect/proc_holder/spell/targeted/blesscrop
	name = "Bless Crops"
	range = 5
	overlay_state = "blesscrop"
	releasedrain = 30
	charge_max = 30 SECONDS
	req_items = list(/obj/item/clothing/neck/roguetown/psicross)
	max_targets = 0
	cast_without_targets = TRUE
	sound = 'sound/magic/churn.ogg'
	associated_skill = /datum/skill/magic/holy
	invocation = "The Treefather commands thee, be fruitful!"
	invocation_type = "shout" //can be none, whisper, emote and shout
	miracle = TRUE
	devotion_cost = 20

/obj/effect/proc_holder/spell/targeted/blesscrop/cast(list/targets,mob/user = usr)
	. = ..()
	var/growed = FALSE
	var/amount_blessed = 0
	for(var/obj/structure/soil/soil in view(4))
		soil.bless_soil()
		growed = TRUE
		amount_blessed++
		// Blessed only up to 5 crops
		if(amount_blessed >= 5)
			break
	if(growed)
		visible_message(span_green("[usr] blesses the nearby crops with Dendor's Favour!"))
	return growed

//At some point, this spell should Awaken beasts, allowing a ghost to possess them. Not for this PR though.
/obj/effect/proc_holder/spell/targeted/beasttame
	name = "Tame Beast"
	range = 5
	overlay_state = "tamebeast"
	releasedrain = 30
	charge_max = 30 SECONDS
	req_items = list(/obj/item/clothing/neck/roguetown/psicross)
	max_targets = 0
	cast_without_targets = TRUE
	sound = 'sound/magic/churn.ogg'
	associated_skill = /datum/skill/magic/holy
	invocation = "Be still and calm, brotherbeast."
	invocation_type = "whisper" //can be none, whisper, emote and shout
	miracle = TRUE
	devotion_cost = 20
	var/beast_tameable_factions = list("saiga", "chickens", "cows", "goats", "wolfs", "spiders")

/obj/effect/proc_holder/spell/targeted/beasttame/cast(list/targets,mob/user = usr)
	. = ..()
	visible_message(span_green("[usr] soothes the beastblood with Dendor's whisper."))
	var/tamed = FALSE
	for(var/mob/living/simple_animal/hostile/retaliate/animal in get_hearers_in_view(2, usr))
		if((animal.mob_biotypes & MOB_UNDEAD))
			continue
		if(faction_check(animal.faction, beast_tameable_factions))
			animal.tamed(TRUE)
			animal.aggressive = FALSE
			if(animal.ai_controller)
				animal.ai_controller.clear_blackboard_key(BB_BASIC_MOB_CURRENT_TARGET)
				animal.ai_controller.clear_blackboard_key(BB_BASIC_MOB_RETALIATE_LIST)
				animal.ai_controller.set_blackboard_key(BB_BASIC_MOB_TAMED, TRUE)
			to_chat(usr, "With Dendor's aide, you soothe [animal] of their anger.")
	return tamed

/obj/effect/proc_holder/spell/targeted/conjure_glowshroom
	name = "Fungal Illumination"
	range = 1
	overlay_state = "blesscrop"
	releasedrain = 30
	charge_max = 30 SECONDS
	req_items = list(/obj/item/clothing/neck/roguetown/psicross)
	max_targets = 0
	cast_without_targets = TRUE
	sound = 'sound/items/dig_shovel.ogg'
	associated_skill = /datum/skill/magic/holy
	invocation = "Treefather light the way."
	invocation_type = "whisper" //can be none, whisper, emote and shout
	devotion_cost = 30

/obj/effect/proc_holder/spell/targeted/conjure_glowshroom/cast(list/targets, mob/user = usr)
	. = ..()
	var/turf/T = user.loc
	for(var/X in GLOB.cardinals)
		var/turf/TT = get_step(T, X)
		if(!isclosedturf(TT) && !locate(/obj/structure/glowshroom) in TT)
			new /obj/structure/glowshroom(TT)
	return TRUE

/obj/effect/proc_holder/spell/self/howl/call_of_the_moon
	name = "Call of the Moon"
	desc = "Draw upon the the secrets of the hidden firmament to converse with the mooncursed."
	overlay_state = "howl"
	antimagic_allowed = FALSE
	charge_max = 600
	ignore_cockblock = TRUE
	use_language = TRUE
	var/first_cast = FALSE

/obj/effect/proc_holder/spell/self/howl/call_of_the_moon/cast(mob/living/carbon/human/user)
	// only usable at night
	if (!GLOB.tod == "night")
		to_chat(user, span_warning("I must wait for the hidden moon to rise before I may call upon it."))
		revert_cast()
		return
	// if they don't have beast language somehow, give it to them
	if (!user.has_language(/datum/language/beast))
		user.grant_language(/datum/language/beast)
		to_chat(user, span_boldnotice("The vestige of the hidden moon high above reveals His truth: the knowledge of beast-tongue was in me all along."))
	
	if (!first_cast)
		to_chat(user, span_boldwarning("So it is murmured in the Earth and Air: the Call of the Moon is sacred, and to share knowledge gleaned from it with those not of Him is a SIN."))
		to_chat(user, span_boldwarning("Ware thee well, child of Dendor."))
		first_cast = TRUE
	. = ..()
	
/obj/effect/proc_holder/spell/self/dendor_shapeshift
	name = "Beast Form"
	desc = "Take on the form of one of Dendor's sacred beasts."
	overlay_state = "tamebeast"
	releasedrain = 60
	charge_max = 60 SECONDS
	invocation = "Treefather grant me your form!"
	invocation_type = "shout"
	associated_skill = /datum/skill/magic/holy
	devotion_cost = 80
	miracle = TRUE
	clothes_req = FALSE
	human_req = FALSE
	
	var/transformed = FALSE
	var/transforming = FALSE
	var/revert_on_death = TRUE
	var/die_with_shapeshifted_form = FALSE
	var/convert_damage = FALSE
	var/convert_damage_type = BRUTE
	var/selected_form = null
	var/death_cooldown = 600
	var/saved_form = null

var/static/list/druid_forms = list(
	// Basic forms (Level 1)
	"cat" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/cat,
		"level" = 1
	),
	"mudcrab" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/mudcrab,
		"level" = 1
	),
	"rous" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/bigrat,
		"level" = 2
	),
	// Intermediate forms (Level 2-3)
	"volf" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/wolf,
		"level" = 2
	),
	"spider" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/spider,
		"level" = 2
	),
	"mossback" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/mossback,
		"level" = 3
	),
	"mole" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/mole,
		"level" = 3
	),
	"saiga" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/saiga,
		"level" = 3
	),
	// Advanced forms (Level 6) - Commented out
	/*"dragon" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/dragon,
		"level" = 6
	),
	"minotaur" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/minotaur,
		"level" = 6
	),
	"troll" = list(
		"path" = /mob/living/simple_animal/hostile/retaliate/rogue/troll,
		"level" = 6
	),*/
)

/obj/effect/proc_holder/spell/self/dendor_shapeshift/Initialize()
	. = ..()
	charge_type = "recharge"
	charge_counter = charge_max
	charge_max = 30 SECONDS
	recharging = FALSE
	still_recharging_msg = span_warning("[name] is still recharging!")

/obj/effect/proc_holder/spell/self/dendor_shapeshift/cast(mob/living/carbon/human/user)
	if(!user)
		return FALSE
	
	if(!saved_form)
		var/list/animal_list = list()
		var/druidic_level = user.mind?.get_skill_level(/datum/skill/magic/druidic) || 0
		
		for(var/animal_name in druid_forms)
			var/list/animal_data = druid_forms[animal_name]
			if(animal_data["level"] <= druidic_level)
				animal_list[animal_name] = animal_data["path"]
				
		if(!length(animal_list))
			to_chat(user, span_warning("Your druidic knowledge is insufficient to take on any beast forms!"))
			return FALSE
			
		var/new_shapeshift_type = input(user, "Choose Your Animal Form! (Druidic Level: [druidic_level])", "It's Morphing Time!", null) as null|anything in sortList(animal_list)
		if(!new_shapeshift_type)
			return FALSE
			
		saved_form = animal_list[new_shapeshift_type]
	
	selected_form = saved_form
	if(selected_form)
		do_shapeshift(user)

/obj/effect/proc_holder/spell/self/dendor_shapeshift/proc/do_shapeshift(mob/living/caster)
	var/obj/shapeshift_holder/shapeshift_holder = locate() in caster
	if(shapeshift_holder)
		// If already shapeshifted, restore to human form
		do_restore(caster)
		return
	
	// Store original state and paralyze briefly during transformation TO beast form only
	var/oldinv = caster.invisibility
	caster.invisibility = INVISIBILITY_MAXIMUM
	caster.Paralyze(1, ignore_canstun = TRUE)
	
	// Transformation effects and messages
	caster.flash_fullscreen("redflash3") // Same effect as werewolves
	to_chat(caster, span_userdanger("Your bones crack and reshape as Dendor's blessing takes hold!"))
	caster.visible_message(span_warning("[caster]'s form begins to twist and contort unnaturally!"), \
						  span_warning("The transformation is agonizing!"))
	
	// Drop all items EXCEPT the psicross
	for(var/obj/item/W in caster)
		if(!istype(W, /obj/item/clothing/neck/roguetown/psicross/dendor))
			caster.dropItemToGround(W)
	
	// Add transformation effects
	playsound(caster.loc, pick('sound/combat/gib (1).ogg','sound/combat/gib (2).ogg'), 200, FALSE, 3)
	caster.spawn_gibs(FALSE)
	
	// Create new mob with its own fresh stats
	var/mob/living/simple_animal/hostile/shape = new selected_form(caster.loc)
	
	// Create shapeshift holder with proper typing
	shapeshift_holder = new /obj/shapeshift_holder(shape, src, caster)
	
	// Keep original stats from the mob type
	shape.maxHealth = initial(shape.maxHealth)
	shape.health = shape.maxHealth
	shape.melee_damage_lower = initial(shape.melee_damage_lower)
	shape.melee_damage_upper = initial(shape.melee_damage_upper)
	shape.dodgetime = 20 // Allow dodging for all forms
	
	// Enable combat capabilities
	shape.dextrous = TRUE
	shape.held_items = list(null, null)
	shape.can_have_ai = FALSE
	shape.AIStatus = AI_OFF
	shape.stat_attack = CONSCIOUS
	shape.environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	ADD_TRAIT(shape, TRAIT_BASHDOORS, TRAIT_GENERIC)
	
	// Form-specific setup
	switch(selected_form)
		if(/mob/living/simple_animal/hostile/retaliate/rogue/mole)
			shape.attack_verb_continuous = "claws"
			shape.attack_verb_simple = "claw"
			shape.attack_sound = list('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 25
			shape.melee_damage_upper = 35
			shape.rot_type = null
			
		if(/mob/living/simple_animal/hostile/retaliate/rogue/wolf)
			shape.attack_verb_continuous = "mauls"
			shape.attack_verb_simple = "maul"
			shape.attack_sound = list('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 30
			shape.melee_damage_upper = 40
			shape.rot_type = null
			
		if(/mob/living/simple_animal/hostile/retaliate/rogue/troll)
			shape.attack_verb_continuous = "crushes"
			shape.attack_verb_simple = "crush"
			shape.attack_sound = list('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw/troll, /datum/intent/simple/bite)
			shape.melee_damage_lower = 40
			shape.melee_damage_upper = 60
			shape.rot_type = null

		if(/mob/living/simple_animal/hostile/retaliate/rogue/dragon)
			shape.attack_verb_continuous = "tears into"
			shape.attack_verb_simple = "tear into"
			shape.attack_sound = pick('sound/combat/gib (1).ogg','sound/combat/gib (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 45
			shape.melee_damage_upper = 65
			shape.rot_type = null
			
		if(/mob/living/simple_animal/hostile/retaliate/rogue/spider)
			shape.attack_verb_continuous = "bites"
			shape.attack_verb_simple = "bite"
			shape.attack_sound = pick('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 20
			shape.melee_damage_upper = 30
			shape.rot_type = null

		if(/mob/living/simple_animal/hostile/retaliate/rogue/mossback)
			shape.attack_verb_continuous = "slashes"
			shape.attack_verb_simple = "slash"
			shape.attack_sound = pick('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 25
			shape.melee_damage_upper = 35
			shape.rot_type = null

		if(/mob/living/simple_animal/hostile/retaliate/rogue/bigrat)
			shape.attack_verb_continuous = "bites"
			shape.attack_verb_simple = "bite"
			shape.attack_sound = pick('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 15
			shape.melee_damage_upper = 25
			shape.rot_type = null

		if(/mob/living/simple_animal/hostile/retaliate/rogue/mudcrab)
			shape.attack_verb_continuous = "pinches"
			shape.attack_verb_simple = "pinch"
			shape.attack_sound = pick('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 10
			shape.melee_damage_upper = 20
			shape.rot_type = null

		if(/mob/living/simple_animal/pet/cat)
			shape.attack_verb_continuous = "claws"
			shape.attack_verb_simple = "claw"
			shape.attack_sound = pick('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 5
			shape.melee_damage_upper = 10
			shape.rot_type = null

		if(/mob/living/simple_animal/hostile/retaliate/rogue/minotaur)
			shape.attack_verb_continuous = "gores"
			shape.attack_verb_simple = "gore"
			shape.attack_sound = pick('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw/troll, /datum/intent/simple/bite)
			shape.melee_damage_lower = 40
			shape.melee_damage_upper = 60
			shape.rot_type = null
			
		if(/mob/living/simple_animal/hostile/retaliate/rogue/saiga)
			shape.attack_verb_continuous = "rams"
			shape.attack_verb_simple = "ram"
			shape.attack_sound = list('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 25
			shape.melee_damage_upper = 35
			shape.rot_type = null
			
		else // Default animal form setup
			shape.attack_verb_continuous = "attacks"
			shape.attack_verb_simple = "attack"
			shape.attack_sound = pick('sound/combat/gib (1).ogg','sound/combat/gib (2).ogg')
			shape.base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
			shape.melee_damage_lower = 15
			shape.melee_damage_upper = 25
			shape.rot_type = null
	
	
	// Combat setup
	shape.faction = list("rogueanimal")
	shape.a_intent = INTENT_HARM
	shape.update_a_intents()
	
	// Register death signal
	RegisterSignal(shape, COMSIG_LIVING_DEATH, PROC_REF(handle_death))
	
	// Store original mob and transfer mind BEFORE moving the caster
	if(caster.mind)
		caster.mind.transfer_to(shape)
		shape.name = "[caster.real_name] ([initial(shape.name)])"
		shape.real_name = shape.name
	
	// Move caster into holder AFTER mind transfer
	caster.forceMove(shapeshift_holder)
	
	// Reset visibility and update icons
	shape.invisibility = oldinv
	caster.invisibility = oldinv  // Reset original mob visibility too
	shape.update_icon()
	shape.regenerate_icons()
	
	// Start cooldown
	if(action)
		action.UpdateButtonIcon()
	start_recharge()
	
	return shape

/obj/effect/proc_holder/spell/self/dendor_shapeshift/proc/do_restore(mob/living/shape)
	var/obj/shapeshift_holder/shapeshift_holder = locate() in shape
	if(!shapeshift_holder)
		return
	
	var/was_dead = shape.stat == DEAD
	
	// Store visibility and apply it
	var/oldinv = shape.invisibility
	shape.invisibility = INVISIBILITY_MAXIMUM
	
	// Add transformation effects
	playsound(shape.loc, pick('sound/combat/gib (1).ogg','sound/combat/gib (2).ogg'), 200, FALSE, 3)
	shape.spawn_gibs(FALSE)
	
	// Set transforming state
	transforming = TRUE
	
	// Restore original form
	shapeshift_holder.restore()
	
	// Reset transformation flags
	transformed = FALSE         // No longer transformed
	transforming = FALSE       // Not in transformation process
	
	// Reset visibility
	shape.invisibility = oldinv
	
	if(was_dead)
		charge_counter = 0
		charge_max = death_cooldown
	else
		charge_counter = 0  // Start the normal cooldown
		recharging = TRUE   // Enable recharging
	
	start_recharge()  // Start the recharge process
	if(action)
		action.UpdateButtonIcon()
	
	if(was_dead)
		to_chat(shape, span_warning("The strain of your form's death leaves you unable to shapeshift again for some time!"))

/mob/living/simple_animal/hostile/retaliate/rogue/proc/attack_target(atom/A)
	if(ismob(A))
		var/mob/M = A
		if(M.attack_animal(src))
			return TRUE
	return FALSE

/obj/effect/proc_holder/spell/self/dendor_shapeshift/process(delta_time)
	if(recharging && charge_type == "recharge")
		charge_counter += delta_time
		if(charge_counter >= charge_max)
			charge_counter = charge_max
			recharging = FALSE
			if(action)
				action.UpdateButtonIcon()

/obj/effect/proc_holder/spell/self/dendor_shapeshift/perform(list/targets, recharge = TRUE, mob/user = usr)
    before_cast(targets)
    invocation(user)
    if(user?.ckey)
        user.log_message(span_danger("cast the spell [name]."), LOG_ATTACK)
    if(cast(user))
        if(sound)
            playMagSound()
        after_cast(targets)
        if(action)
            action.UpdateButtonIcon()
        start_recharge() // Only start recharge after successful cast
        return TRUE
    return FALSE

/obj/effect/proc_holder/spell/self/dendor_shapeshift/can_cast(mob/user)
	if(!..())
		return FALSE
	if(recharging)
		to_chat(user, still_recharging_msg)
		return FALSE
	if(charge_counter < charge_max)
		to_chat(user, still_recharging_msg)
		return FALSE
	return TRUE

/obj/effect/proc_holder/spell/self/dendor_shapeshift/proc/handle_death(mob/living/shape)
    SIGNAL_HANDLER
    
    var/obj/shapeshift_holder/H = locate() in shape
    if(!H)
        return
    
    // Set cooldown before restoration
    charge_counter = 0
    charge_max = death_cooldown  // Set to long cooldown
    recharging = TRUE  // This was missing!
    if(action)
        action.UpdateButtonIcon()  // Update the button to show recharging
    
    // Restore form and notify
    to_chat(H.stored, span_warning("The strain of your form's death leaves you unable to shapeshift again for some time!"))
    do_restore(shape)
    
    UnregisterSignal(shape, COMSIG_LIVING_DEATH)
