class HomeDecorator < Draper::Decorator
  delegate_all

  def address
    I18n.t('models.home.address', {
      street: address_street,
      number: address_number,
      area: area.name,
      city: area.city.short
    })
  end
end
