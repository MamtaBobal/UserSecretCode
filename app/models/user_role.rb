# == Schema Information
#
# Table name: user_roles
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role_id    :integer
#  user_id    :integer
#
# Indexes
#
#  index_user_roles_on_role_id              (role_id)
#  index_user_roles_on_user_id              (user_id)
#  index_user_roles_on_user_id_and_role_id  (user_id,role_id) UNIQUE
#

class UserRole < ApplicationRecord

  # Associations
  belongs_to :user
  belongs_to :role

end
