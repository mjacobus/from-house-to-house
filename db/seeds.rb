
city = City.find_or_create_by_name!("Novo Hamburgo", {short: "NH"})

1.upto(20) do |n|
  territory = Territory.find_or_create_by_name!("T#{n}",{city_id: city.id})
  area = Area.find_or_create_by_name!("Bairro #{n}",{city_id: city.id})
  User.find_or_create_by_email!("email#{n}@example.com",{password: :password, name: "Nome #{n}"})
  Home.find_or_create_by_address_number!(n,{
    territory_id: territory.id, 
    area_id: area.id,
    address_street: "rua #{n}"
  })
end



user = User.find_or_create_by_email!('admin@example.com', {
  password: 'password',
  name: 'Admin',
})

user.admin = true
user.publisher = true
user.save!
