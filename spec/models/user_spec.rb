require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :location }
    it { is_expected.to have_db_column :fav_flora }
    it { is_expected.to have_db_column :latest_posts }
    it { is_expected.to have_db_column :about_me}
    it { is_expected.to have_db_column :profile_pic }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password  } 
  end

  describe 'Associations' do
    it { is_expected.to have_many :posts }
    it { is_expected.to have_many :plants }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:user)).to be_valid 
    end
  end

end