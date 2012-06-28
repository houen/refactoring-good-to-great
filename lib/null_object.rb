require 'ostruct'

class JobSite
  def initialize(location, contact)
    @location = location
    @contact = contact
  end

  def location_city
    location.city
  end

  def contact_name
    if contact
      contact.name
    else
      'no contact'
    end
  end

  def contact_phone
    if contact
      contact.phone
    else
      'no contact'
    end
  end

  def contact_address
    if contact
      contact.address
    else
      'no contact'
    end
  end

  private

  attr_reader :contact
end

class Contact < OpenStruct
end

class Location
end
