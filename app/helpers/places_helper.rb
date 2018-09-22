module PlacesHelper
  def address
    [@place.street, @place.house_number, @place.city].compact.join('+')
  end

  def google_map(center)
    "https://www.google.com/maps/embed/v1/place?q=#{center}&key=AIzaSyARizIXZYulPKTPNR2J0q5akSn3dw81M4Y"
  end
end
