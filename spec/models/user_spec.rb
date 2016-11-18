require 'rails_helper'

describe User, type: :model do
  it { is_expected.to many_have :reviewed_restaurants}
end
