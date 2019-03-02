# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Metatype.create(name: 'Human', body_start: 1, body_max: 6, agility_start: 1, agility_max: 6,
reaction_start: 1, reaction_max: 6, strength_start: 1, strength_max: 6, willpower_start: 1, willpower_max: 6,
logic_start: 1, logic_max: 6, intuition_start: 1, intuition_max: 6, charisma_start: 1, charisma_max: 6,
edge_start: 2, edge_max: 7)

Metatype.create(name: 'Orc', body_start: 4, body_max: 9, agility_start: 1, agility_max: 6,
reaction_start: 1, reaction_max: 6, strength_start: 3, strength_max: 8, willpower_start: 1, willpower_max: 6,
logic_start: 1, logic_max: 5, intuition_start: 1, intuition_max: 6, charisma_start: 1, charisma_max: 5,
edge_start: 1, edge_max: 1)

Metatype.create(name: 'Elf', body_start: 1, body_max: 6, agility_start: 2, agility_max: 7,
reaction_start: 1, reaction_max: 6, strength_start: 1, strength_max: 6, willpower_start: 1, willpower_max: 6,
logic_start: 1, logic_max: 6, intuition_start: 1, intuition_max: 6, charisma_start: 3, charisma_max: 8,
edge_start: 1, edge_max: 6)

Metatype.create(name: 'Dwarf', body_start: 3, body_max: 8, agility_start: 1, agility_max: 6,
reaction_start: 1, reaction_max: 5, strength_start: 3, strength_max: 8, willpower_start: 2, willpower_max: 7,
logic_start: 1, logic_max: 6, intuition_start: 1, intuition_max: 6, charisma_start: 1, charisma_max: 6,
edge_start: 1, edge_max: 6)

Metatype.create(name: 'Troll', body_start: 5, body_max: 10, agility_start: 1, agility_max: 5,
reaction_start: 1, reaction_max: 6, strength_start: 5, strength_max: 10, willpower_start: 1, willpower_max: 6,
logic_start: 1, logic_max: 5, intuition_start: 1, intuition_max: 5, charisma_start: 1, charisma_max: 4,
edge_start: 1, edge_max: 6)

#AGILITY SKILLS
Skill.create(name: 'Archery', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Automatics', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Blades', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Clubs', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Escape Artist', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Exotic Melee Weapon', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Exotic Ranged Weapon', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Gunnery', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Gymnastics', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Heavy Weapons', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Locksmith', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Longarms', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Palming', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Pistols', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Sneaking', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Throwing Weapons', attrib: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Unarmed Combat', attrib: 'Agility', category: 'Combat', defaultable: true)

#BODY SKILLS
Skill.create(name: 'Diving', attrib: 'Body', category: 'Combat', defaultable: true)
Skill.create(name: 'Free-Fall', attrib: 'Body', category: 'Combat', defaultable: true)

#REACTION SKILLS
Skill.create(name: 'Pilot Aerospace', attrib: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Aircraft', attrib: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Exotic Vehicle', attrib: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Ground Craft', attrib: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Walker', attrib: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Watercraft', attrib: 'Reaction', category: 'Combat', defaultable: true)

#STRENGTH SKILLS
Skill.create(name: 'Running', attrib: 'Strength', category: 'Combat', defaultable: true)
Skill.create(name: 'Swimming', attrib: 'Strength', category: 'Combat', defaultable: true)

#CHARISMA SKILLS
Skill.create(name: 'Animal Handling', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Con', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Etiquette', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Impersonation', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Instruction', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Intimidation', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Leadership', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Negotiation', attrib: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Performance', attrib: 'Charisma', category: 'Combat', defaultable: true)

#INTUITION SKILLS
Skill.create(name: 'Artisan', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Assensing', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Disguise', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Interests Knowledge', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Language', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Navigation', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Perception', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Street Knowledge', attrib: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Tracking', attrib: 'Intuition', category: 'Combat', defaultable: true)

#LOGIC SKILLS
Skill.create(name: 'Academic Knowledge', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Aeronautics Mechanic', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Arcana', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Armorer', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Automotive Mechanic', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Biotechnology', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Chemistry', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Computer', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Cybertechnology', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Cybercombat', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Demolitions', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Electronic Warfare', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'First Aid', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Forgery', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Industrial Mechanic', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Hacking', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Hardware', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Medicine', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Nautical Mechanic', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Professional Knowledge', attrib: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Software', attrib: 'Logic', category: 'Combat', defaultable: true)

#WILLPOWER SKILLS
Skill.create(name: 'Astral Combat', attrib: 'Willpower', category: 'Combat', defaultable: true)
Skill.create(name: 'Survival', attrib: 'Willpower', category: 'Combat', defaultable: true)

#MAGIC SKILLS
Skill.create(name: 'Alchemy', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Artificing', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Banishing', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Binding', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Counterspelling', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Disenchanting', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Ritual Spellcasting', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Spellcasting', attrib: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Summoning', attrib: 'Magic', category: 'Combat', defaultable: true)

#RESONANCE SKILLS
Skill.create(name: 'Compiling', attrib: 'Resonance', category: 'Combat', defaultable: true)
Skill.create(name: 'Decompiling', attrib: 'Resonance', category: 'Combat', defaultable: true)
Skill.create(name: 'Registering', attrib: 'Resonance', category: 'Combat', defaultable: true)
