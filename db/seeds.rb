User.create!([
  {email: "daniel@gmail.com", password: "testuser", password_confirmation: "testuser"},
  {email: "tom@gmail.com", password: "testuser", password_confirmation: "testuser"},
  {email: "kevin@gmail.com", password: "testuser", password_confirmation: "testuser"},
  {email: "tyler@gmail.com", password: "testuser", password_confirmation: "testuser"},
  {email: "jett@gmail.com", password: "testuser", password_confirmation: "testuser"}
])

Consignee.create!([
  {
    name: "Harbour",
    phone: "8471234567",
    email: "email@email.com",
    street_address: "30 Shumway Ave",
    city: "Batavia",
    state: "IL",
    zip: "60510"
  },
  {
    name: "Triseal",
    phone: "8471234567",
    email: "email@email.com",
    street_address: "11920 Price Rd",
    city: "Hebron",
    state: "IL",
    zip: "60034"
  },
  {
    name: "Chicago Cubs",
    phone: "8471234567",
    email: "email@email.com",
    street_address: "1060 W Addison St",
    city: "Chicago",
    state: "IL",
    zip: "60613"
  }
])

Courier.create!([
  {
    name: "FedEx",
    email: "fedex@fedex.com",
    phone: "9018187500",
    address: "942 South Shady Grove Road",
    city: "Memphis",
    state: "TN",
    zip: "38120"
  },
  {
    name: "United Parcel Service",
    email: "ups@ups.com",
    phone: "8007425877",
    address: "55 Glenlake Parkway NE",
    city: "Atlanta",
    state: "GA",
    zip: "30328"
  },
  {
    name: "United States Postal Service",
    email: "usps@usps.com",
    phone: "8002758777",
    address: "475 L'Enfant Plaza SW",
    city: "Washington",
    state: "DD",
    zip: "20260"
  }
])

# Shipment does not seed and I am not sure why. Not sure that it matters to actually fix
# since this is just dummy data to get the Vue app up.
Shipment.create!([
  {
    description: "Pots",
    price: 11.89,
    weight: 1,
    length: 5,
    width: 4,
    height: 3
  },
  {
    description: "Pans",
    price: 14.27,
    weight: 3,
    length: 6,
    width: 5,
    height: 8
  },
  {
    description: "Tea Kettle",
    price: 12.63,
    weight: 4,
    length: 5,
    width: 8,
    height: 6
  },
])

Shipping_address.create!([
  {
    name: "Sandy Schadd",
    phone: "8471234567",
    email: "email@email.com",
    street_address: "569 Yarmouth Rd",
    city: "Elk Grove Village",
    state: "IL",
    zip: "60007"
  },
  {
    name: "Matt McCracken",
    phone: "8471234567",
    email: "email@email.com",
    street_address: "500 Dogwood Trl",
    city: "Elk Grove Village",
    state: "IL",
    zip: "60007"
  },
  {
    name: "JJ Lastovich",
    phone: "8471234567",
    email: "email@email.com",
    street_address: "70 Lonsdale Rd",
    city: "Elk Grove Village",
    state: "IL",
    zip: "60007"
  }
])