require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { alignment: @character.alignment, armor_class: @character.armor_class, background: @character.background, background_notes: @character.background_notes, charisma: @character.charisma, class: @character.class, constitution: @character.constitution, dexterity: @character.dexterity, equipment: @character.equipment, goals_and_motivations: @character.goals_and_motivations, height: @character.height, hit_dice_number: @character.hit_dice_number, hit_dice_type: @character.hit_dice_type, hit_points: @character.hit_points, initiative_mod: @character.initiative_mod, intelligence: @character.intelligence, magical_ability_mod: @character.magical_ability_mod, melee_attack_mod: @character.melee_attack_mod, name: @character.name, personality: @character.personality, physical_description: @character.physical_description, race: @character.race, ranged_attack_mod: @character.ranged_attack_mod, saving_throw_dc: @character.saving_throw_dc, strength: @character.strength, subclass: @character.subclass, subrace: @character.subrace, weight: @character.weight, wisdom: @character.wisdom }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    put :update, id: @character, character: { alignment: @character.alignment, armor_class: @character.armor_class, background: @character.background, background_notes: @character.background_notes, charisma: @character.charisma, class: @character.class, constitution: @character.constitution, dexterity: @character.dexterity, equipment: @character.equipment, goals_and_motivations: @character.goals_and_motivations, height: @character.height, hit_dice_number: @character.hit_dice_number, hit_dice_type: @character.hit_dice_type, hit_points: @character.hit_points, initiative_mod: @character.initiative_mod, intelligence: @character.intelligence, magical_ability_mod: @character.magical_ability_mod, melee_attack_mod: @character.melee_attack_mod, name: @character.name, personality: @character.personality, physical_description: @character.physical_description, race: @character.race, ranged_attack_mod: @character.ranged_attack_mod, saving_throw_dc: @character.saving_throw_dc, strength: @character.strength, subclass: @character.subclass, subrace: @character.subrace, weight: @character.weight, wisdom: @character.wisdom }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
