require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:surname) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it { should have_one(:company).dependent(:destroy) }
end
