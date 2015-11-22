require 'rspec'
require_relative '../db/config'


describe "create student table with correct schema" do
  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Migrator.current_version > 0
  end

  it "should have a Students table" do
    expect(ActiveRecord::Base.connection.table_exists?(:students)).to eq(true)
  end

  it "should have the right columns and types" do
    expected = {
      :integer => ["id"],
      :string => ["first_name", "last_name", "gender", "email", "phone"],
      :date => ["birthday"],
      :datetime => ["created_at", "updated_at"]
    }

    ActiveRecord::Base.connection.columns(:students).each do |col|
      expect(expected[col.type].include?(col.name)).to eq(true)
    end
  end
end

describe "create teacher table with correct schema" do
  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Migrator.current_version > 0
  end

  it "should have a Teachers table" do
    expect(ActiveRecord::Base.connection.table_exists?(:teachers)).to eq(true)
  end

  it "should have the right columns and types" do
    expected = {
      :integer => ["id"],
      :string => ["first_name", "last_name","email", "phone"],
      :datetime => ["created_at", "updated_at"]
    }

    ActiveRecord::Base.connection.columns(:teachers).each do |col|
      expect(expected[col.type].include?(col.name)).to eq(true)
    end
  end
end

