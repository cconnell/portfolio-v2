10.times do   
  BlogPost.create(title: Faker::Hipster.sentence, body: Faker::Hipster.paragraph(100), date: Time.zone.now)
end 