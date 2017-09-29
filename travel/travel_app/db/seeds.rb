#3.times do |j|
    #p= Plan.create(title:"Plan Title No.#{j}")
    
    
    #5.times do |i|
    #    p.tags.create(title:"Title #{j}-#{i}",body:"Body #{i}",url: "http://No.#{i}.com")
    #end
    
    
    
    #Tag.create(title:"広島大学",body:"評価 ⭐️⭐️",url:" https://www.hiroshima-u.ac.jp")

p=Plan.create(title:"広島観光-人気スポット-")
p.tags.create(title:"宮島・厳島神社",
    body:"ユネスコ世界遺産にも登録された観光名所です．日本の魅力が詰まっていて外国人の選ぶ日本の好きな観光名所1位を獲得したこともあります",
    url: "http://www.miyajima-wch.jp/")

p.tags.create(title:"平和記念公園・原爆ドーム",
    body:"世界の恒久平和を願って．",
    url:"http://hpmmuseum.jp/")
    
p.tags.create(title:"広島城",
    body:"広島市の中心地にあります.広島城は別名鯉城と呼ばれ,地元の方々に愛されています.",
    url:"http://www.rijo-castle.jp/")

p=Plan.create(title:"つくば観光しようぜ！！！")
p.tags.create(title:"筑波宇宙センター",
    body:"本物のH-IIロケットが見える",
    url:"http://www.jaxa.jp/about/centers/tksc/")
p.tags.create(title:"筑波大学",
    body:"東京ディズニーランドと東京ディズニーシーを合わせた広さの2.5倍の広さがあるんだって！！",
    url:"https://www.tsukuba.ac.jp/")
p.tags.create(title:"筑波山",
    body:"天気が良ければ山頂からスカイツリーや富士山が見える.
    ケーブルカーやロープウェイで簡単に山頂に行ける！！",
    url:"http://www.mt-tsukuba.com/")
p.tags.create(title:"つくばエキスポセンター",
body:"最先端の科学技術を体験できる．世界最大級のプラネタリウムがあるのも特徴．",
url:"http://www.expocenter.or.jp/")
