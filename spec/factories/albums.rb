FactoryBot.define do
  factory :album do
    name { "MyString" }
    song_count { 1 }
    date_of_published { "2023-10-25" }
    type { "" }
    genre { "MyString" }
  end
end
