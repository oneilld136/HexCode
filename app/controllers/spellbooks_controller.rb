class SpellbooksController < ApplicationController


def index
  @spells = Spell.all
  @spellbook = Spellbook.all
end



end
