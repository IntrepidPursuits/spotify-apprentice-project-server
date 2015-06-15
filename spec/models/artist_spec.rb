require 'rails_helper'

describe Artist do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should have_many :songs }
    it { should validate_presence_of :spotify_uri }
    it { should validate_uniqueness_of :spotify_uri }
  end
end
