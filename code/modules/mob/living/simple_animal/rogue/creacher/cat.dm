/mob/living/simple_animal/hostile/retaliate/rogue/cat
	name = "cat"
	desc = "A ferocious little beast."
	icon = 'icons/mob/pets.dmi'
	icon_state = "cat"
	icon_living = "cat"
	icon_dead = "cat_dead"
	speak = list("Meow!", "Esp!", "Purr!", "HSSSSS")
	speak_emote = list("purrs", "meows")
	emote_hear = list("meows", "mews")
	emote_see = list("shakes its head", "shivers")
	speak_chance = 1
	turns_per_move = 5
	
	// Combat setup
	health = 50
	maxHealth = 50
	melee_damage_lower = 5
	melee_damage_upper = 10
	obj_damage = 10
	environment_smash = ENVIRONMENT_SMASH_NONE
	base_intents = list(/datum/intent/unarmed/claw, /datum/intent/simple/bite)
	attack_sound = list('sound/combat/wooshes/blunt/wooshhuge (1).ogg','sound/combat/wooshes/blunt/wooshhuge (2).ogg')
	
	// Stats
	STACON = 8
	STASTR = 6
	STASPD = 12
	STAEND = 8
	
	// Movement
	pass_flags = PASSTABLE
	mobility_flags = MOBILITY_FLAGS_DEFAULT
	move_resist = MOVE_FORCE_WEAK
	speed = 1
	retreat_distance = 3
	minimum_distance = 1
	
	// Behavior
	faction = list("rogueanimal")
	deaggroprob = 15
	defprob = 30
	defdrain = 10
	dodgetime = 10
	del_on_deaggro = 99 SECONDS
	
	// Loot
	butcher_results = list(/obj/item/reagent_containers/food/snacks/rogue/meat = 2)
	rot_type = null
	
	// Misc
	mob_size = MOB_SIZE_SMALL
	footstep_type = FOOTSTEP_MOB_CLAW
	gold_core_spawnable = FRIENDLY_SPAWN 
