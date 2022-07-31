# User(id: integer, username: string, password_digest: string, created_at: datetime, updated_at: datetime)
users = User.create!([
  {
    username: "bahnas",
    password: "11111111",
  },
  {
    username: "pascal",
    password: "22222222",
  },
  {
    username: "nicholas",
    password: "33333333",
  },
])

# Car(id: integer, name: string, description: text, picture: string, price: decimal, created_at: datetime, updated_at: datetime, user_id: integer)
cars = Car.create!([
  {
    user: User.first,
    name: "toyota",
    description: "best for afford",
    picture: "https://toyota.com.eg/storage/17011/CORO1811-1001.jpg",
    price: 100.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    user: User.second,
    name: "honda",
    description: "HONdA!",
    picture: "https://tdrresearch.azureedge.net/photos/chrome/Expanded/White/2022HOC020004/2022HOC02000401.jpg",
    price: 150.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    user: User.first,
    name: "BMW",
    description: "one of the best sportive car",
    picture: "http://clipart-library.com/img/1883029.png",
    price: 300.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    user: User.third,
    name: "ford",
    description: "best of sedan",
    picture: "https://crdms.images.consumerreports.org/c_lfill,w_470,q_auto,f_auto/prod/cars/chrome/white/2018FOC120087_1280_01",
    price: 300.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
])

# (id: integer, city: string, date: date, created_at: datetime, updated_at: datetime, user_id: integer, car_id: integer)
reservations = Reservation.create!([
  {
    city: "cairo",
    user: User.first,
    car: Car.first,
    date: "2022/07/31",
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    city: "alex",
    user: User.first,
    car: Car.second,
    date: "2022/08/03",
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    city: "kigali",
    user: User.second,
    car: Car.first,
    date: "2022/09/30",
    created_at: Time.now,
    updated_at: Time.now,
  },
    {
    city: "cape town",
    user: User.third,
    car: Car.first,
    date: "2022/07/15",
    created_at: Time.now,
    updated_at: Time.now,
  },
])