class SpellsController < ApplicationController


  def index
    @spells = Spell.all
  end

  def show
    @spell = Spell.find(params[:id])
  end

  def new
    @spell = Spell.new
  end

  def create
    @spell = Spell.create(spells_params)
    redirect_to @spell
  end

  def edit
    @spell = Spell.find(params[:id])
  end

  def update
    @spell = Spell.find(params[:id])
    @spell.update(spells_params)
    redirect_to spell
  end

  def destroy
    @spell = Spell.find(params[:id])
    @spell.destroy
    redirect_to spells_path
  end

private

  def spells_params
    params.require(:spell).permit(:name, :category, :interactive, :magical_supplies, :instructions)
  end

end
