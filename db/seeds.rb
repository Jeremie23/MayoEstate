# This file should ensure the existence of records required to run the application in every environment (production,
# development,  test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db: seed command (or created alongside the database with db: setup).
#
# Example:
#
#   ["Action",  "Comedy",  "Drama",  "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name:  genre_name)
#   end
Offer.destroy_all
Estate.destroy_all


Estate.create(
  name: "Riad Al Zahra",
  description: "Traditional riad in Marrakech's Medina with a serene courtyard garden and ornate Moroccan decor.",
  address: "Marrakech",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Villa Amira",
  description: "Modern villa in Essaouira offering panoramic ocean views, spacious interiors, and tranquil gardens.",
  address: "Essaouira",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Dar Al Hana",
  description: "Stylish riad in Casablanca featuring contemporary Moroccan design, a rooftop terrace, and personalized service.",
  address: "Casablanca",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Kasbah El Bahja",
  description: "Luxury kasbah in the Ourika Valley showcasing Berber architecture, mountain vistas, and authentic cultural experiences.",
  address: "Tnine Ourika",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Villa Yasmine",
  description: "Elegant villa in Marrakech's Palmeraie district with private pools, stunning Atlas Mountain views, and refined Moroccan hospitality.",
  address: "Marrakech",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Riad Al Andalus",
  description: "Traditional riad in Fes El Bali featuring mosaic-tiled courtyards, antique furnishings, and a peaceful atmosphere.",
  address: "Fes",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Dar Al Maha",
  description: "Boutique riad in Chefchaouen's Medina offering panoramic Rif Mountain views, authentic Moroccan decor, and a tranquil ambiance.",
  address: "Chefchaouen",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Villa Asilah",
  description: "Seaside villa in Asilah with direct beach access, spacious living areas, and breathtaking Atlantic Ocean panoramas.",
  address: "Asilah",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Riad Al Warda",
  description: "Charming riad in Meknes Medina with a serene citrus garden courtyard, traditional Moroccan furnishings, and a historical ambiance.",
  address: "Meknes",
  price: nil,
  user_id: User.last.id
)

Estate.create(
  name: "Dar Al Medina",
  description: "Historic riad in Tangier's Medina featuring Andalusian-inspired architecture, tranquil gardens, and authentic Moroccan charm.",
  address: "Tangier",
  price: nil,
  user_id: User.last.id
)
