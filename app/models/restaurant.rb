class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # there may be times when you want to customize the behavior of the belongs_to association reference. Such customizations can easily be accomplished by passing options and scope blocks when you create the association (RoR Guides).

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
