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
    name: "VW Passat",
    description: "The Passat is a five-seat mid-size sedan that competes with cars like the Honda Accord, Toyota Camry and Hyundai Sonata. It's powered by a standard 174-horsepower, turbocharged 2.0-liter four-cylinder engine that works with a six-speed automatic transmission.",
    picture: "https://w7.pngwing.com/pngs/673/144/png-transparent-2017-volkswagen-passat-mid-size-car-2016-volkswagen-passat-volkswagen-compact-car-sedan-car.png",
    price: 300.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "Toyota Camry",
    description: "The Camry is surprisingly enjoyable to drive, and it provides a comfortable ride. Some midsize cars have more upscale interiors, but this Toyota is roomy, with supportive seats and intuitive tech features",
    picture: "https://w7.pngwing.com/pngs/961/927/png-transparent-mid-size-car-toyota-camry-full-size-car-car-compact-car-sedan-car.png",
    price: 320.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "Ford Ecosport",
    description: "The 2022 EcoSport is only offered with a 166-hp four-cylinder engine, a six-speed automatic transmission, and all-wheel drive. Still, it's the opposite of quick. The EcoSport drives much better at slower speeds, slipping through busy streets with ease, but its vague steering and noisy ride diminish the experience",
    picture: "https://w7.pngwing.com/pngs/614/690/png-transparent-ford-motor-company-2018-ford-ecosport-se-2018-ford-ecosport-titanium-ford-compact-car-car-automatic-transmission.png",
    price: 400.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "BMW 318i",
    description: "the 318i is great on the roads. The most surprising thing about it is its ability to adapt to different driving styles. If you're the kind of person who employs more enthusiastic driving, the car is responsive and heeds to every pedal touch or steering input without fuss",
    picture: "https://w7.pngwing.com/pngs/129/164/png-transparent-white-bmw-sedan-2017-bmw-m3-2018-bmw-m3-car-bmw-x6-bmw-m3-compact-car-sedan-performance-car.png",
    price: 500.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "Mazda CX9",
    description: "The Mazda CX-9 is a three-row SUV with seven seats. A six-seat layout is optional, and it swaps the second-row bench seat for a pair of captain's chairs. The front seats are well-cushioned and supportive",
    picture: "https://w7.pngwing.com/pngs/668/841/png-transparent-2016-mazda-cx-5-car-2017-mazda-cx-3-2018-mazda-cx-9-mazda-compact-car-car-vehicle.png",
    price: 600.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "Fiat Tipo",
    description: "The Fiat Tipo is a well-rounded budget car. It offers more than enough practicality for most situations, while the strong engine and comfortable chassis make it an acceptable family five-door to live with. However, it's the Fiat's thrifty running costs that seal the deal",
    picture: "https://w7.pngwing.com/pngs/491/234/png-transparent-fiat-tipo-mid-size-car-fiat-500-fiat-compact-car-sedan-car.png",
    price: 300.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "Mercedes C Class",
    description: "A quality interior, great efficiency and strong on-board tech mean that the Mercedes C-Class is a deeply impressive compact executive saloon. The latest Mercedes C-Class saloon has given buyers looking for a compact executive car much to think about",
    picture: "https://w7.pngwing.com/pngs/951/225/png-transparent-2017-mercedes-benz-c-class-car-mercedes-benz-e-class-mercedes-benz-c-300-at-mercedes-compact-car-sedan-convertible.png",
    price: 2000.00,
    created_at: Time.now,
    updated_at: Time.now,
  },
  {
    name: "Dodge challenger",
    description: "The Dodge Challenger R/T features a 5.7-liter Hemi V8 engine, a performance exhaust, and an upgraded rear axle. The Hemi is rated at 375 horsepower with a standard six-speed manual transmission, and it's 372 horsepower with an optional eight-speed automatic",
    picture: "https://w7.pngwing.com/pngs/892/761/png-transparent-dodge-challenger-srt-hellcat-chrysler-car-2017-dodge-challenger-dodge-car-performance-car-vehicle.png",
    price: 1200.00,
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
