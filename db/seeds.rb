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