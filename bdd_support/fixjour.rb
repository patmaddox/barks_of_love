require 'fixjour'

Fixjour do
  define_builder(CourtesyListing) {
    {
      :dog_name => "Smiley",
      :age => 5,
      :sex => CourtesyListing::MALE,
      :neutered => true,
      :vacc_up_to_date => true,
      :good_with_dogs => true,
      :good_with_cats => false,
      :good_with_kids => true,
      :description => "I am such a happy guy, that's why they call me Smiley!",
      :contact_name => "Pat Maddox",
      :contact_phone => "1234567890sea"
    }
  }
end
include Fixjour
