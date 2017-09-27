5.times do |i|
    Tag.create(title:"Title #{i}",body:"Body #{i}",url: "http://No.#{i}.com")
    Plan.create(title:"Plan Title #{i}")
end