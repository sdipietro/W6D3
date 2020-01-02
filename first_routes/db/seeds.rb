# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtworkShare.destroy_all
Artwork.destroy_all
User.destroy_all


user1 = User.create!(username: 'robz')
    artwork1 = Artwork.create!(title: 'The Scream', img_url: 'the_scream.jpg', artist_id: user1.id)
    artwork2 = Artwork.create!(title: 'Guernica', img_url: 'guernica.jpg', artist_id: user1.id)

user2 = User.create!(username: 'steved')
    artwork3 = Artwork.create!(title: 'The Old Guitarist', img_url: 'the_old_guitarist.jpg', artist_id: user2.id)
    artwork4 = Artwork.create!(title: 'The Last Supper', img_url: 'the_last_supper.jpg', artist_id: user2.id)

artwork_share1 = ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id)
artwork_share2 = ArtworkShare.create!(artwork_id: artwork2.id, viewer_id: user2.id)
artwork_share3 = ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)
artwork_share4 = ArtworkShare.create!(artwork_id: artwork4.id, viewer_id: user1.id)