class SpellbooksController < ApplicationController

  def new
      @spellbook = Spellbook.new
      @users = User.all
      @spells = Spell.all
  end

  def create
      @spellbook = Spellbook.create(spellbook_params)
      redirect_to @spellbook.user
  end


  private

  def spellbook_params
      params.require(:spellbook).permit(:user_id, :spell_id)
  end

end
