require 'rails_helper'

# Test suite for the User model
RSpec.describe SecretCode, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:user) }
end
