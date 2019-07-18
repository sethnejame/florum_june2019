require 'rails_helper'

RSpec.describe Plant, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :details }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :category }
    it { is_expected.to have_db_column :quantity }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :details } 
    it { is_expected.to validate_presence_of :price } 
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :quantity } 
  end

  describe 'Associations' do
    it { is_expected.to belong_to :user }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:plant)).to be_valid 
    end
  end
end
