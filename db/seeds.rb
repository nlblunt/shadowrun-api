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
Skill.create(name: 'Archery', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Automatics', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Blades', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Clubs', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Escape Artist', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Exotic Melee Weapon', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Exotic Ranged Weapon', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Gunnery', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Gymnastics', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Heavy Weapons', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Locksmith', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Longarms', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Palming', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Pistols', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Sneaking', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Throwing Weapons', attribute: 'Agility', category: 'Combat', defaultable: true)
Skill.create(name: 'Unarmed Combat', attribute: 'Agility', category: 'Combat', defaultable: true)

#BODY SKILLS
Skill.create(name: 'Diving', attribute: 'Body', category: 'Combat', defaultable: true)
Skill.create(name: 'Free-Fall', attribute: 'Body', category: 'Combat', defaultable: true)

#REACTION SKILLS
Skill.create(name: 'Pilot Aerospace', attribute: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Aircraft', attribute: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Exotic Vehicle', attribute: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Ground Craft', attribute: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Walker', attribute: 'Reaction', category: 'Combat', defaultable: true)
Skill.create(name: 'Pilot Watercraft', attribute: 'Reaction', category: 'Combat', defaultable: true)

#STRENGTH SKILLS
Skill.create(name: 'Running', attribute: 'Strength', category: 'Combat', defaultable: true)
Skill.create(name: 'Swimming', attribute: 'Strength', category: 'Combat', defaultable: true)

#CHARISMA SKILLS
Skill.create(name: 'Animal Handling', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Con', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Etiquette', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Impersonation', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Instruction', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Intimidation', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Leadership', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Negotiation', attribute: 'Charisma', category: 'Combat', defaultable: true)
Skill.create(name: 'Performance', attribute: 'Charisma', category: 'Combat', defaultable: true)

#INTUITION SKILLS
Skill.create(name: 'Artisan', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Assensing', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Disguise', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Interests Knowledge', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Language', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Navigation', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Perception', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Street Knowledge', attribute: 'Intuition', category: 'Combat', defaultable: true)
Skill.create(name: 'Tracking', attribute: 'Intuition', category: 'Combat', defaultable: true)

#LOGIC SKILLS
Skill.create(name: 'Academic Knowledge', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Aeronautics Mechanic', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Arcana', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Armorer', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Automotive Mechanic', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Biotechnology', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Chemistry', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Computer', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Cybertechnology', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Cybercombat', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Demolitions', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Electronic Warfare', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'First Aid', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Forgery', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Industrial Mechanic', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Hacking', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Hardware', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Medicine', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Nautical Mechanic', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Professional Knowledge', attribute: 'Logic', category: 'Combat', defaultable: true)
Skill.create(name: 'Software', attribute: 'Logic', category: 'Combat', defaultable: true)

#WILLPOWER SKILLS
Skill.create(name: 'Astral Combat', attribute: 'Willpower', category: 'Combat', defaultable: true)
Skill.create(name: 'Survival', attribute: 'Willpower', category: 'Combat', defaultable: true)

#MAGIC SKILLS
Skill.create(name: 'Alchemy', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Artificing', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Banishing', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Binding', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Counterspelling', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Disenchanting', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Ritual Spellcasting', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Spellcasting', attribute: 'Magic', category: 'Combat', defaultable: true)
Skill.create(name: 'Summoning', attribute: 'Magic', category: 'Combat', defaultable: true)

#RESONANCE SKILLS
Skill.create(name: 'Compiling', attribute: 'Resonance', category: 'Combat', defaultable: true)
Skill.create(name: 'Decompiling', attribute: 'Resonance', category: 'Combat', defaultable: true)
Skill.create(name: 'Registering', attribute: 'Resonance', category: 'Combat', defaultable: true)
