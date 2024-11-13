

class Restaurant < ApplicationRecord

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  # Validation des champs obligatoires
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # Validation de la catégorie pour être dans une liste prédéfinie
  validates :category, inclusion: { in: CATEGORIES,
                                   message: "%{value} n'est pas une catégorie valide" }

  # Association avec les évaluations
  has_many :ratings, dependent: :destroy
end
