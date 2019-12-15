# == Schema Information
#
# Table name: secret_codes
#
#  id         :integer          not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_secret_codes_on_code     (code) UNIQUE
#  index_secret_codes_on_user_id  (user_id)
#

class SecretCode < ApplicationRecord
  include UniqCodeGenerator

  # Callbacks
  before_validation :set_secure_code, on: :create

  # Validations
  validates :code, presence: true

  # Associations
  belongs_to :user, optional: true

  private

  def set_secure_code
    self.code = generate_access_token
  end

end
