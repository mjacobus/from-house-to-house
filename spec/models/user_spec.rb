require 'spec_helper'

if_fast_spec do
  fast_support_require 'database'
  fast_support_require 'database_cleaner'
  app_require 'app/models/user'
end

describe User do

  describe "#admin" do
    it { should_not allow_mass_assignment_of(:admin) }
    it { should allow_mass_assignment_of(:admin).as(:admin) }
  end

  describe "#email" do
    it { should allow_mass_assignment_of(:email) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
  end

  describe "#events" do
    it { should have_many(:events)  }
  end

  describe "#name" do
    it { should allow_mass_assignment_of(:name) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
  end

  describe "#phone" do
    it { should allow_mass_assignment_of(:phone) }
  end

 describe "#publisher" do
    it { should_not allow_mass_assignment_of(:publisher) }
    it { should allow_mass_assignment_of(:publisher).as(:admin) }
  end
end
