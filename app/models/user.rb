class User < ApplicationRecord
  has_many :spellbooks
  has_many :spells, through: :spellbooks
end
