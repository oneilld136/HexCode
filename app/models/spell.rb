class Spell < ApplicationRecord
  has_many :spellbooks
  has_many :users, through: :spellbooks
end
