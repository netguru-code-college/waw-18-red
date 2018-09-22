class PlaceDecorator < Draper::Decortor
  delegate_all

  def address
    "#{@place.street} #{@place.house_number}, #{@place.city}"
  end
end
