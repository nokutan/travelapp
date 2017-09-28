3.times do |j|
    p= Plan.create(title:"Plan Title No.#{j}")
    
    5.times do |i|
        p.tags.create(title:"Title #{j}-#{i}",body:"Body #{i}",url: "http://No.#{i}.com")
    end
    
    Tag.create(title:"広島大学",body:"評価 ⭐️⭐️",url:" https://www.hiroshima-u.ac.jp")

end