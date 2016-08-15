require 'faker'

module FakerWrapper
  class << self
    def address
      @@address ||= [:city, :street_name, :street_address, :secondary_address, :building_number, :zip_code, :zip, :postcode, :time_zone, :street_suffix, :city_suffix, :city_prefix, :state, :state_abbr, :country, :country_code, :latitude, :longitude]
    end
    def lorem
      @@lorem ||= [:word, :words, :character, :characters, :sentence, :sentences, :paragraph, :paragraphs, :question, :questions]
    end
    def game_of_thrones
      @game_of_thrones ||= [:character, :house, :city]
    end
    def pokemon
      @@pokemon ||= [:name, :location]
    end
  end
end
