/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal

/datum/patron/divine/astrata
	name = "Astrata"
	domain = "Goddess of the Sun, Day, and Order"
	desc = "Considered the eldest sibling of the Pantheon, ASTRATA is the Mother Goddess of the Sun. It is widely believed that Astrata came first, and through loneliness at being alone, she created her siblings in her own image. She oversees all the other members of the Pantheon as its leader. However, she is considered to be one of the more aggressive and prideful of the Ten. Her doctrine is one of zealotry- complete devotion to her and the order of the Gods."
	worshippers = "The Noble Hearted, Zealots and Farmers"
	t1 = /obj/effect/proc_holder/spell/invoked/sacred_flame_rogue
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/revive
	confess_lines = list(
		"ASTRATA IS MY LIGHT!",
		"ASTRATA BRINGS LAW!",
		"I SERVE THE GLORY OF THE SUN!",
	)

/datum/patron/divine/noc
	name = "Noc"
	domain = "God of the Moon, Night, and Knowledge"
	desc = "The second eldest of the Pantheonic siblings, NOC is the God of the Moon. His domain is that of the arcane, and of knowledge. When the realm was first created, Astrata and Noc shared the sky together, but Astrata grew jealous and exiled Noc to only be present during the night, while Astrata reigned the day. As a result Noc is considered a fierce rival of his sister, looking to overshadow her as much as possible."
	worshippers = "Wizards and Scholars"
	mob_traits = list(TRAIT_NIGHT_OWL, TRAIT_NOCSIGHT)
	t1 = /obj/effect/proc_holder/spell/invoked/blindness/miracle
	t2 = /obj/effect/proc_holder/spell/invoked/invisibility/miracle
	confess_lines = list(
		"NOC IS NIGHT!",
		"NOC SEES ALL!",
		"I SEEK THE MYSTERIES OF THE MOON!",
	)

/datum/patron/divine/dendor
	name = "Dendor"
	domain = "God of the Earth and Nature"
	desc = "To many, nature is one of wild behaviour and unpredictably, where horrible things can happen at any moment in them. That would be thanks to DENDOR- the ruler of the forests and the land. Dendor is a god that in recent years has gone silent, much believed to be due to the rapid growth and settlement of his lands, as well as the destruction of the environment. As a result, wildlife has become more fierce- wolves are rabid, and even local animals once benevolent seem to have their eyes filled with rage at those he holds responsible - mortals. Despite this, he has many preachers and worshippers, who believe it to be punishment from his divine roots, and that we must repent and seek repatriation by leaving our settlements and returning to the wilds. Many wood elves are practitioners of such beliefs, being found in the deepest woods."
	worshippers = "Druids, Beasts, Madmen"
	mob_traits = list(TRAIT_KNEESTINGER_IMMUNITY)
	t1 = /obj/effect/proc_holder/spell/targeted/blesscrop
	t2 = /obj/effect/proc_holder/spell/self/dendor_shapeshift
	t3 = /obj/effect/proc_holder/spell/targeted/conjure_glowshroom
	t4 = /obj/effect/proc_holder/spell/self/howl/call_of_the_moon
	confess_lines = list(
		"DENDOR PROVIDES!",
		"THE TREEFATHER BRINGS BOUNTY!",
		"I ANSWER THE CALL OF THE WILD!",
	)

/datum/patron/divine/abyssor
	name = "Abyssor"
	domain = "God of the Ocean, Storms and the Tide"
	desc = "The patron of all the oceans and seas, ABYSSOR is the Goddess of the Seas and the Storms. Sailors and Abyssal-crafted Denmorians alike pay tribute to Abyssor in order to have safe passage across the seas and oceans. Respect is absolutely demanded for her waves, for if they are not respected, your travels across them will surely be doomed to be sunk to the bottom of them. It is believed that she is a fierce rival to DENDOR, due to disagreements on who should control most of the world- her oceans, or his land."
	worshippers = "Men of the Sea, Primitive Aquatics"
	mob_traits = list(TRAIT_ABYSSOR_SWIM, TRAIT_SEA_DRINKER)
	t1 = /obj/effect/proc_holder/spell/invoked/abyssor_bends
	t2 = /obj/effect/proc_holder/spell/invoked/abyssheal
	t3 = /obj/effect/proc_holder/spell/invoked/call_mossback
	confess_lines = list(
		"ABYSSOR COMMANDS THE WAVES!",
		"THE OCEAN'S FURY IS ABYSSOR'S WILL!",
		"I AM DRAWN BY THE PULL OF THE TIDE!",
	)
	
/datum/patron/divine/ravox
	name = "Ravox"
	domain = "God of Justice, Glory, Battle"
	desc = "At the advent of the BLOODWAKE, one God showed more ferocity against the forces of the ARCHDAEMONS than the others- and that was RAVOX. The patron God of all warfare and strife, there is no equal to Ravox in combat, and he is the guardian of his siblings in the PANTHEON. He was one of the few Gods in the Bloodwake that the Archdaemons truly feared opposing, as his chivalric wrath was endless. It is believed that Ravox personally slew the Archdaemon GRAGGAR in open combat, eliminating his part in the grand war."
	worshippers = "Warriors, Sellswords & those who seek Justice"
	confess_lines = list(
		"RAVOX IS JUSTICE!",
		"THROUGH STRIFE, GRACE!",
		"THE DRUMS OF WAR BEAT IN MY CHEST!",
	)

/datum/patron/divine/necra
	name = "Necra"
	domain = "Goddess of Death and the Afterlife"
	desc = "One of the more enigmatic of the siblings, NECRA is the patron Goddess of the Dead and Underworld. Considered to be cold and calculating, and distant from the rest of her siblings. Despite this, it is believed that she is one of immense benevolence, only seeking to guide the dead to safe passage to her realm, which is believed to be one of opulence and blissful rest."
	worshippers = "The Dead, Mourners, Gravekeepers"
	mob_traits = list(TRAIT_SOUL_EXAMINE)
	t1 = /obj/effect/proc_holder/spell/invoked/avert
	t2 = /obj/effect/proc_holder/spell/targeted/abrogation
	t3 = /obj/effect/proc_holder/spell/targeted/soulspeak
	confess_lines = list(
		"ALL SOULS FIND THEIR WAY TO NECRA!",
		"THE UNDERMAIDEN IS OUR FINAL REPOSE!",
		"I FEAR NOT DEATH, MY LADY AWAITS ME!",
	)

/datum/patron/divine/xylix
	name = "Xylix"
	domain = "God of Trickery, Freedom and Inspiration"
	desc = "Out of all of the Gods in the PANTHEON, least understood by mortals is that of XYLIX. The master of cunning trickery, and the ultimate master of sleight-of-hand, little is known of Xylix and his games. His domain is one of gambling, and of madness. Yet despite all this, he is one of ambition. He often plays tricks on his siblings, bringing about their ire, much to his own entertainment. His worshippers are those of immense mischief and trickery, believing that this brings about the ultimate inspirations in life."
	worshippers = "Gamblers, Bards, Artists, and the Silver-Tongued"
	mob_traits = list(TRAIT_XYLIX)
	t1 = /obj/effect/proc_holder/spell/invoked/wheel
	t2 = /obj/effect/proc_holder/spell/invoked/mockery
	confess_lines = list(
		"ASTRATA IS MY LIGHT!",
		"NOC IS NIGHT!",
		"DENDOR PROVIDES!",
		"ABYSSOR COMMANDS THE WAVES!",
		"RAVOX IS JUSTICE!",
		"ALL SOULS FIND THEIR WAY TO NECRA!",
		"HAHAHAHA! AHAHAHA! HAHAHAHA!",
		"PESTRA SOOTHES ALL ILLS!",
		"MALUM IS MY MUSE!",
		"EORA BRINGS US TOGETHER!",
	)

/datum/patron/divine/pestra
	name = "Pestra"
	domain = "Goddess of Decay, Disease and Medicine"
	desc = "The Mother of the Sick and the Mother of Medicine, PESTRA’s domain is that of medicine and healing. Much to the disapproval of her siblings, she supports all advances in the fields of medicine and alchemical craft, and the curing of those afflicted by the dreaded Rot- much to the hatred and despise of her sister, Necra. As a result- they are in fierce opposition of eachother."
	worshippers = "The Sick, Phyicians, Apothecaries"
	mob_traits = list(TRAIT_EMPATH, TRAIT_ROT_EATER)
	t0 = /obj/effect/proc_holder/spell/invoked/diagnose
	t1 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t2 = /obj/effect/proc_holder/spell/invoked/heal
	t3 = /obj/effect/proc_holder/spell/invoked/attach_bodypart
	t4 = /obj/effect/proc_holder/spell/invoked/cure_rot
	confess_lines = list(
		"PESTRA SOOTHES ALL ILLS!",
		"DECAY IS A CONTINUATION OF LIFE!",
		"MY AFFLICTION IS MY TESTAMENT!",
	)

/datum/patron/divine/malum
	name = "Malum"
	domain = "God of Fire, Labor, and Rebirth"
	desc = "Believed to have been the one who crafted Beowricke with their powerful hammer, MALUM is the patron God of all Craftsmen, Blacksmiths, and Hard Labor. At the behest of Astrata, the realm was made with his hammer, though it is believed to have been lost in the crafting. It is believed that all dwarven kind was forged from his hand, and that most grand natural wonders of the world were crafted by him personally. Hard work will find you blessed by his hand with new ideas for innovation."
	worshippers = "Smiths, Miners, Engineers"
	mob_traits = list(TRAIT_FORGEBLESSED)
	t1 = /obj/effect/proc_holder/spell/invoked/vigorousexchange
	t2 = /obj/effect/proc_holder/spell/invoked/heatmetal
	t3 = /obj/effect/proc_holder/spell/invoked/hammerfall
	t4 = /obj/effect/proc_holder/spell/invoked/craftercovenant
	extra_spell = /obj/effect/proc_holder/spell/invoked/malum_flame_rogue
	confess_lines = list(
		"MALUM IS MY MUSE!",
		"TRUE VALUE IS IN THE TOIL!",
		"I AM AN INSTRUMENT OF CREATION!",
	)

//Eora content from Stonekeep

/datum/patron/divine/eora
	name = "Eora"
	domain = "Goddess of Love, Life and Beauty"
	desc = "This world is one of despair, and of toil. However, it does not mean one can not find love, nor joy in the life they live. For this EORA represents. She is the goddess of love, life, and all morality. Many believe her to be one of the weaker goddesses, but they would be incorrect. Her domain is one of primordial desires for innate companionship seen in all lives, sapient or not. It is believed that she is in a close relationship with RAVOX, and shares the toils of life with the greatest defender of the PANTHEON."
	worshippers = "Lovers, the romantically inclined, and Doting Grandparents"
	mob_traits = list(TRAIT_EMPATH, TRAIT_GOODLOVER)
	t0 = /obj/effect/proc_holder/spell/invoked/lesser_heal
	t1 = /obj/effect/proc_holder/spell/invoked/bud
	t2 = /obj/effect/proc_holder/spell/invoked/eoracurse
	t3 = null
	confess_lines = list(
		"EORA BRINGS US TOGETHER!",
		"HER BEAUTY IS EVEN IN THIS TORMENT!",
		"I LOVE YOU, EVEN AS YOU TRESPASS AGAINST ME!",
	)
