require 'faker'

module FakerUtils
  def self.lorem
    @@lorem ||= Faker::Lorem.methods - Object.methods - [:method_missing, :fetch, :translate, :parse, :numerify, :letterify, :bothify, :regexify, :with_locale, :flexible, :rand_in_range]
  end
end
