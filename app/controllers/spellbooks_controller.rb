class SpellbooksController < ApplicationController


  def create
      @spellbook = Spellbook.create(spell_id: params[:spell_id])
  end



end
