class SpellbooksController < ApplicationController

  def index
    @spells = Spell.all
  end 
end
