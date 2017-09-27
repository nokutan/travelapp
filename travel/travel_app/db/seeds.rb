5.times do |i|
    Tag.create(title:"Title #{i}",body:"Body #{i}",url: "http://No.#{i}.com")
    Plan.create(title:"Plan Title #{i}")
end

Tag.create(title:"広島大学",body:"評価 ⭐️⭐️",url:" https://www.hiroshima-u.ac.jp")
