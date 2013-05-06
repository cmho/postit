class Character < ActiveRecord::Base
  attr_accessible :alignment, :armor_class, :background, :background_notes, :charisma, :class, :constitution, :dexterity, :equipment, :game_id, :goals_and_motivations, :height, :hit_dice_number, :hit_dice_type, :hit_points, :initiative_mod, :intelligence, :magical_ability_mod, :melee_attack_mod, :name, :personality, :physical_description, :race, :ranged_attack_mod, :saving_throw_dc, :strength, :subclass, :subrace, :user_id, :weight, :wisdom
  belongs_to :user
  has_one :game
end
