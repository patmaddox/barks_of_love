class CourtesyListing < ActiveRecord::Base
  MALE = 'male'; FEMALE = 'female'

  validates_presence_of :dog_name
  validates_numericality_of :age
  validates_presence_of :sex
  validates_presence_of :description
  validates_presence_of :contact_name
  validate :require_email_or_phone

  named_scope :verified, :conditions => {:verified => true}
  named_scope :pending, :conditions => {:verified => false}

  def require_email_or_phone
    errors.add(:base, "You must enter at least a contact phone # or email address") if contact_email.blank? && contact_phone.blank?
  end
end
