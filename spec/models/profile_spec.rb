require 'rails_helper'

RSpec.describe Profile, type: :model do
    it { is_expected.to have_db_column :city }
    it { is_expected.to have_db_column :my_plants }
    it { is_expected.to have_db_column :favorite_flora}
    it { is_expected.to have_db_column :latest_posts }
    it { is_expected.to have_db_column :about_me }
    it { is_expected.to have_db_column :profile_pic}
end

describe 'Validations' do
  it { is_expected.to validate_presence_of :city }
  it { should belong_to(:user) }
end

describe 'Factory' do
  it 'should have valid Factory' do
    expect(FactoryBot.create(:profile)).to be_valid 
    end
  end

