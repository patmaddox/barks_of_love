module CourtesyListingsHelper
  def yes_or_no(value)
    value ? 'yes' : '<b>no</b>'
  end
end
