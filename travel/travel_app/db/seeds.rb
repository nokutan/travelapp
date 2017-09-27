5.times do |i|
    Tag.create(title:"Title #{i}",body:"Body #{i}",url: "http://No.#{i}.com")
end