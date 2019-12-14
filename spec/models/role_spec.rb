require 'rails_helper'

# Test suite for the User model
RSpec.describe Role, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should have_many(:user_roles) }
  it { should have_many(:users) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
