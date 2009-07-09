class CreateCourtesyListings < ActiveRecord::Migration
  def self.up
    create_table :courtesy_listings do |t|
      t.string :dog_name
      t.integer :age
      t.string :sex
      t.boolean :neutered, :allow_nil => false
      t.boolean :vacc_up_to_date, :allow_nil => false
      t.boolean :good_with_dogs, :allow_nil => false
      t.boolean :good_with_cats, :allow_nil => false
      t.boolean :good_with_kids, :allow_nil => false
      t.text :description
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.boolean :verified, :allow_nil => false, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :courtesy_listings
  end
end
