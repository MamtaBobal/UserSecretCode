require 'rails_helper'

# Test suite for the User model
RSpec.describe User, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should have_many(:user_roles) }
  it { should have_many(:roles) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:email) }
end
