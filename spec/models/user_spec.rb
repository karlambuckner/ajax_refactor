require 'rails_helper'

describe User, 'association' do
  it { should have_many :orders }
end

describe User, 'column_specification' do
  it { should have_db_column(:name) }
  it { should have_db_column(:email) }
  it { should have_db_column(:password_digest) }
end
