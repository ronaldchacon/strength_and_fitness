class Equipment < ApplicationRecord
  has_many :exercises

  validates :name, presence: true
end
