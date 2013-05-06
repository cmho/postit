class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :class
      t.integer :subclass
      t.integer :race
      t.integer :subrace
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :background
      t.text :background_notes
      t.text :equipment
      t.integer :hit_points
      t.integer :hit_dice_number
      t.integer :hit_dice_type
      t.integer :armor_class
      t.integer :initiative_mod
      t.integer :melee_attack_mod
      t.integer :ranged_attack_mod
      t.integer :magical_ability_mod
      t.integer :saving_throw_dc
      t.string :height
      t.string :weight
      t.text :physical_description
      t.text :goals_and_motivations
      t.integer :alignment
      t.text :personality

      t.timestamps
    end
  end
end
