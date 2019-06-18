witch1 = User.create(name: "Sabrina Spellman", zodiac_sign: "scorpio", bio: "Badass bitch")
witch2 = User.create(name: "Zelda Spellman", zodiac_sign: "leo", bio: "High priestess")
witch3 = User.create(name: "Hilda Spellman", zodiac_sign: "libra", bio: "Likable")

spell1 = Spell.create(name:"Become a Programming Genius", category: "success", interactive: "false", magical_supplies: "Macbook, Glorius Pegasus Sticker, Coffee",instructions: "cry it out.")
spell2 = Spell.create(name:"Simple Love Spell", category: "love", interactive: "true", magical_supplies: "piece of lovers hair, morter, roserips, red wine", instructions: "you know what to do with these materials")
spell3 = Spell.create(name:"Eternal Hygene", category: "social", interactive: "false", magical_supplies: "charcoal pill", instructions: "ingest daily until body odor goes away")


Spellbook.create(user_id: witch1.id, spell_id: spell1.id)
Spellbook.create(user_id: witch1.id, spell_id: spell2.id)
Spellbook.create(user_id: witch1.id, spell_id: spell1.id)
Spellbook.create(user_id: witch2.id, spell_id: spell1.id)
Spellbook.create(user_id: witch3.id, spell_id: spell3.id)
