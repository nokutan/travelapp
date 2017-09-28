p= Plan.create(title:"Plan Title Test")

5.times do |i|
    p.tags.create(title:"Title #{i}",body:"Body #{i}",url: "http://No.#{i}.com")
end

Tag.create(title:"広島大学",body:"評価 ⭐️⭐️",url:" https://www.hiroshima-u.ac.jp")

