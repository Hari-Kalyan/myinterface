5.times do
  myarticle.create({
      title:Faker::Book.title,
      body:Faker::Lorem.sentence
                 })
end