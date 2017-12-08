require 'rails_helper'

describe Product, 'validation' do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
  it { should validate_presence_of :image }
end

describe Product, 'association' do
  it { should have_many :order_items }
end

describe Product, 'column_specification' do
  it { should have_db_column(:name) }
  it { should have_db_column(:description) }
  it { should have_db_column(:price) }
  it { should have_db_column(:image) }
end
