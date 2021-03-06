# Add seed data here. Seed your database with `rake db:seed`

album1 = Album.create(title: "Album1")
album2 = Album.create(title: "Album2")
album3 = Album.create(title: "Album3")
album4 = Album.create(title: "Album4")
album5 = Album.create(title: "Album5")
album6 = Album.create(title: "Album6")
album7 = Album.create(title: "Album7")
album8 = Album.create(title: "Album8")
album9 = Album.create(title: "Album9")
album10 = Album.create(title: "Album10")

artist1 = Artist.create(name: "Artist1")
artist2 = Artist.create(name: "Artist2")
artist3 = Artist.create(name: "Artist3")
artist4=Artist.create(name: "Artist4")
artist5=Artist.create(name: "Artist5")
artist6=Artist.create(name: "Artist6")
artist7=Artist.create(name: "Artist7")
artist8=Artist.create(name: "Artist8")
artist9=Artist.create(name: "Artist9")
artist10=Artist.create(name: "Artist10")

# 2 ways to create a track (join table)
# 1. Track.create(name: 'Track1', artist_id: artist1.id, album_id: album4.id)
# 2. artist1.tracks.create(name: 'Track 1', album: album4 (OR album_id: album4.id))

artist1.tracks.create(name: 'Track1', album_id: album4.id)
artist2.tracks.create(name: 'Track2', album_id: album3.id)
artist3.tracks.create(name: 'Track1', album_id: album2.id)
artist4.tracks.create(name: 'Track1', album_id: album1.id)
artist5.tracks.create(name: 'Track1', album_id: album10.id)
artist6.tracks.create(name: 'Track1', album_id: album9.id)
artist7.tracks.create(name: 'Track1', album_id: album8.id)
artist8.tracks.create(name: 'Track1', album_id: album7.id)
artist9.tracks.create(name: 'Track1', album_id: album6.id)
artist10.tracks.create(name: 'Track1', album_id: album5.id)
