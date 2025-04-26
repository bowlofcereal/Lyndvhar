/datum/patron/inhumen
	name = null
	associated_faith = /datum/faith/inhumen
	undead_hater = FALSE
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	confess_lines = list(
		"PSYDON IS THE DEMIURGE!",
		"THE TEN ARE WORTHLESS COWARDS!",
		"THE TEN ARE DECEIVERS!",
	)

/datum/patron/inhumen/zizo
	name = "Zizo"
	domain = "Archdaemon of Advancement, Hubris, Ambition, and Power"
	desc = "The Archdaemon ZIZO was the first to be born from the sins of mortalkind. She represents the aspects of unbridled ambition, and the lust for more power. It was her forces that first breached through the Hells and into the realm of Beowricke proper, bringing destruction as she began to carve out a realm for herself. She and her cultists crafted the TIEFLING from her lesser daemons as well as mortals. "
	worshippers = "Necromancers, Warlocks, and the Undead"
	mob_traits = list(TRAIT_CABAL)
	t1 = /obj/effect/proc_holder/spell/invoked/projectile/profane/miracle
	t2 = /obj/effect/proc_holder/spell/invoked/raise_lesser_undead/miracle
	t3 = /obj/effect/proc_holder/spell/invoked/rituos/miracle
	confess_lines = list(
		"PRAISE ZIZO!",
		"LONG LIVE ZIZO!",
		"ZIZO REIGNS SUPREME!",
	)

/datum/patron/inhumen/graggar
	name = "Graggar"
	domain = "Archdaemon of Conquest, War, and Murder"
	desc = "The Archdaemon GRAGGAR was the second to be born from the sins of mortalkind. He represents all aspects of total rage, wroth, destruction, as well as murderous conquest. The strongest fighter of the Archdaemons, he crafted the ORCS and the GOBLINS in his own image and visage to fight alongside the daemons and TIEFLINGS of ZIZO. "
	worshippers = "Prisoners, Murderers and the Cruel"
	mob_traits = list(TRAIT_HORDE, TRAIT_ORGAN_EATER)
	confess_lines = list(
		"GRAGGAR IS THE BEAST I WORSHIP!",
		"THROUGH VIOLENCE, DIVINITY!",
		"THE GOD OF CONQUEST DEMANDS BLOOD!",
	)

/datum/patron/inhumen/matthios
	name = "Matthios"
	domain = "Archdaemon of Robbery, Envy, and Pillaging"
	desc = "The Archdaemon MATTHIOS was the third to be born from the sins of mortalkind. Matthios is the physical embodiment of mass theft, pillaging, and envy. Many of his cultist followers practice this through open banditry and thievery. Despite all this he is believed to also be the patron of the destitute and beggars– though there is always insidious intent to be found in an Archdaemon. "
	worshippers = "Highwaymen, Robbers, Downtrodden Peasants"
	mob_traits = list(TRAIT_COMMIE, TRAIT_SEEPRICES_SHITTY)
	t0 = /obj/effect/proc_holder/spell/invoked/appraise
	t1 = /obj/effect/proc_holder/spell/invoked/transact
	t2 = /obj/effect/proc_holder/spell/invoked/equalize
	t3 = /obj/effect/proc_holder/spell/invoked/churnwealthy
	confess_lines = list(
		"MATTHIOS STEALS FROM THE WORTHLESS!",
		"MATTHIOS IS JUSTICE!",
		"MATTHIOS IS MY LORD!",
	)

/datum/patron/inhumen/baotha
	name = "Baotha"
	domain = "Archdaemon of Degeneracy, Debauchery and Addiction"
	desc = "The Archdaemon BAOTHA was the final one to be born from the sins of mortalkind. She is the complete and physical embodiment of all unrestrained lust, as well as immense degeneracy. Destruction of the vow of marriage, mass addiction, and rape only follow in her wake, as her mere presence would awaken the worst aspects of the very things that Eora represents. Due to this, Baotha is an extreme opposite to her, and they are both mortal enemies. "
	worshippers = "Perverts, Gamblers, Drunkards, and Bards"
	mob_traits = list(TRAIT_DEPRAVED, TRAIT_CRACKHEAD)
	confess_lines = list(
		"BAOTHA DEMANDS PLEASURE!",
		"LIVE, LAUGH, LOVE!",
		"BAOTHA IS MY JOY!",
	)


/* RATWOOD EDIT - Back to the main pantheon
/datum/patron/inhumen/eora
	name = "Eora"
	domain = "Goddess of Degeneracy, Debauchery and Addiction"
	desc = "The Fallen Daughter of Psydon, once used to be a goddess of love and family but has now fallen from grace as she leads mortals to hedonism."
	worshippers = "Drunkards, Junkies, Gamblers and Bards"
	confess_lines = list(
		"EORA BRINGS ME PLEASURE!",
		"EORA BRINGS ME LUCK!",
		"EORA IS MY HAPPINESS!",
	)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
*/
