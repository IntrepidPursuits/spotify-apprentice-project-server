require 'rails_helper'

describe Song do |variable|
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :artist_id }
    it {should validate_presence_of :spotify_uri }
    it {should validate_uniqueness_of :spotify_uri }
  end
end
