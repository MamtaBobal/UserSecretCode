# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord

  # Associations
  has_many :user_roles
  has_many :users, through: :user_roles

  # Validations
  validates :name, presence: true
end
