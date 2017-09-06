# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"
  u.password = "888888"
  u.password_confirmation = "888888"
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


Product.create!(title: "BOSE-QC35无线蓝牙耳机",
  description: "一秒让你瞬间进入另一个空间",
  price: 2800,
  quantity: 5,
  image: open("https://ws4.sinaimg.cn/large/006tKfTcly1fj66pg435mj30m80dwglv.jpg")
  )

Product.create!(title: "小牛N1S电动车",
  description: "不仅有颜值，更有性能的小牛电动",
  price: 5987,
  quantity: 20,
  image: open("https://ws4.sinaimg.cn/large/006tKfTcly1fj66p98c6hj30m80cit9f.jpg")
  )

Product.create!(title: "CherryG80-3000键盘",
  description: "瞬间让你爱上码字",
  price: 877,
  quantity: 99,
  image: open("https://ws2.sinaimg.cn/large/006tNc79ly1fj9mzy5wc8j30m80m878s.jpg")
  )

  Product.create!(title: "B&O A2便携式蓝牙音箱",
    description: "丹麦极简设计的典范音响品牌",
    price: 2999,
    quantity: 30,
    image: open("https://ws3.sinaimg.cn/large/006tNc79ly1fj9mzys225j31kw1kwaqx.jpg")
    )

  Product.create!(title: "SevenFriday机械手表",
    description: "瑞士新晋轻奢手表品牌",
    price: 8777,
    quantity: 77,
    image: open("https://ws4.sinaimg.cn/large/006tNc79ly1fj9mzw3e26j318g18gjyw.jpg")
    )

  Product.create!(title: "Marshall",
    description: "让你一秒躁起来的英国专业摇滚音响",
    price: 2980,
    quantity: 50,
    image: open("https://ws3.sinaimg.cn/large/006tNc79ly1fj9mzwol10j31kw0mqqen.jpg")
    )

    Product.create!(title: "极米cc投影",
      description: "从此告别电影院",
      price: 4788,
      quantity: 70,
      image: open("https://ws1.sinaimg.cn/large/006tNc79ly1fj9mzwwqlrj31hc0zktlo.jpg")
      )

    Product.create!(title: "DW限量版手表",
      description: "简约不简单",
      price: 799,
      quantity: 100,
      image: open("https://ws3.sinaimg.cn/large/006tNc79ly1fj9mzxfo4yj30hs0hsahv.jpg")
      )
