
city = City.find_or_create_by_name!("Novo Hamburgo", {short: "NH"})

1.upto(20) do |n|
  Territory.find_or_create_by_name("T#{n}",{city_id: city.id})
end



User.find_or_create_by_email!('marcelo.jacobus@gmail.com', {
  password: 'password',
  name: 'Marcelo Jacobus',
  admin: true
})
