users = User.create!([
  {
    username: "bahnas",
    password_digest: "111111",
  },
  {
    username: "pascal",
    password_digest: "222222",
  },
  {
    username: "nicholas",
    password_digest: "333333",
  },
])

id: integer, name: string, description: text, picture: string, price: decimal, created_at: datetime, updated_at: datetime, user_id: integer
Cars = Car.create!([
  {
    user_id: User.first
    name: "toyota",
    description: "best of the bests"
    picture: "https://toyota.com.eg/storage/17011/CORO1811-1001.jpg",
    price: 100.00
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    user_id: User.first
    name: "honda",
    description: "best of the lux"
    picture: "https://tdrresearch.azureedge.net/photos/chrome/Expanded/White/2022HOC020004/2022HOC02000401.jpg",
    price: 150.00
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    user_id: User.first
    name: "BMW",
    description: "best of sedan",
    picture: "http://clipart-library.com/img/1883029.png",
    price: 300.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
])
