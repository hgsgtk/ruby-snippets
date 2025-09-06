# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create!([
  {
    title: 'Avengers: Endgame',
    description:
    %{
      After the devastating events of Avengers: Infinity War, the universe
      is in ruins. With the help of remaining allies, the Avengers assemble
      once more in order to undo Thanos' actions and restore order to the universe.
    }.squish,
    released_on: "2019-04-26",
    rating: 'PG-13',
    total_gross: 1_223_641_414,
    director: 'Anthony Russo, Joe Russo',
    duration: '181 min',
    image_file_name: 'avengers-end-game.png'
  },
  {
    title: 'Captain Marvel',
    description:
    %{
      Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.
    }.squish,
    released_on: "2019-03-08",
    rating: 'PG-13',
    total_gross: 1_110_662_849,
    director: 'Anna Boden, Ryan Fleck',
    duration: '123 min',
    image_file_name: 'captain-marvel.png'
  },
  {
    title: 'Black Panther',
    description:
    %{
      T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.
    }.squish,
    released_on: "2018-02-16",
    rating: 'PG-13',
    total_gross: 1_346_913_161,
    director: 'Ryan Coogler',
    duration: '134 min',
    image_file_name: 'black-panther.png'
  },
  {
    title: 'Avengers: Infinity War',
    description:
    %{
      The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.
    }.squish,
    released_on: "2018-04-27",
    rating: 'PG-13',
    total_gross: 2_048_359_754,
    director: 'Anthony Russo, Joe Russo',
    duration: '149 min',
    image_file_name: 'avengers-infinity-war.png'
  },
  {
    title: 'Green Lantern',
    description:
    %{
      Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.
    }.squish,
    released_on: "2011-06-17",
    rating: 'PG-13',
    total_gross: 219_851_172,
    director: 'Martin Campbell',
    duration: '114 min',
    image_file_name: 'green-lantern.png'
  },
  {
    title: 'Fantastic Four',
    description:
    %{
      Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.
    }.squish,
    released_on: "2015-08-07",
    rating: 'PG-13',
    total_gross: 168_257_860,
    director: 'Josh Trank',
    duration: '100 min',
    image_file_name: 'fantastic-four.png'
  },
  {
    title: 'Iron Man',
    description:
    %{
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    }.squish,
    released_on: "2008-05-02",
    rating: 'PG-13',
    total_gross: 585_366_247,
    director: 'Jon Favreau',
    duration: '126 min',
    image_file_name: 'ironman.png'
  },
  {
    title: 'Superman',
    description:
    %{
      An alien orphan is sent from his dying planet to Earth, where
      he grows up to become his adoptive home's first and greatest
      super-hero.
    }.squish,
    released_on: "1978-12-15",
    rating: 'PG',
    total_gross: 300_451_603,
    director: 'Richard Donner',
    duration: '143 min',
    image_file_name: 'superman.png'
  },
  {
    title: 'Spider-Man',
    description:
    %{
      When bitten by a genetically modified spider, a nerdy, shy, and
      awkward high school student gains spider-like abilities that he
      eventually must use to fight evil as a superhero after tragedy
      befalls his family.
    }.squish,
    released_on: "2002-05-03",
    rating: 'PG-13',
    total_gross: 825_025_036,
    director: 'Sam Raimi',
    duration: '121 min',
    image_file_name: 'spiderman.png'
  },
  {
    title: 'Batman',
    description:
    %{
      The Dark Knight of Gotham City begins his war on crime with his
      first major enemy being the clownishly homicidal Joker.
    }.squish,
    released_on: "1989-06-23",
    rating: 'PG-13',
    total_gross: 411_348_924,
    director: 'Tim Burton',
    duration: '126 min',
    image_file_name: 'batman.png'
  },
  {
    title: "Catwoman",
    description:
    %{
      Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.
    }.squish,
    released_on: "2004-07-23",
    rating: "PG-13",
    total_gross: 82_102_379,
    director: 'Pitof',
    duration: '104 min',
    image_file_name: 'catwoman.png'
  },
  {
    title: "Wonder Woman",
    description:
    %{
      When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.
    }.squish,
    released_on: "2017-06-02",
    rating: "PG-13",
    total_gross: 821_847_012,
    director: 'Patty Jenkins',
    duration: '141 min',
    image_file_name: 'wonder-woman.png'
  },
  {
    title: "The Incredible Hulk",
    description:
    %{
      Scientist Bruce Banner scours the Earth for an antidote to the unbridled force of rage within him: the Hulk. But when the military masterminds who want Banner's destructive power pursue him, he finds himself coming face to face with a new, deadly adversary.
    }.squish,
    released_on: "2008-06-13",
    rating: "PG-13",
    total_gross: 263_427_551,
    director: 'Louis Leterrier',
    duration: '112 min',
    image_file_name: 'hulk.png'
  },
  {
    title: "The Exit 8",
    description:
    %{
      A man endlessly walks a subway corridor toward Exit 8, only to find it looping, repeating with eerie anomalies—posters, figures, sounds—blurring reality until dread grows; the passage itself becomes a trap, a horror of infinity.
    }.squish,
    released_on: "2025-08-29",
    rating: "R",
    total_gross: 1_000_000_000,
    director: 'Unknown',
    duration: '90 min',
    image_file_name: 'placeholder.png'
  }
])

# Create users first
User.create!([
  {
    name: "Alice Johnson",
    email: "alice.johnson@example.com",
    username: "alice123",
    password: "password123",
    admin: true
  },
  {
    name: "Bob Smith",
    email: "bob.smith@example.com",
    username: "bobsmith456",
    password: "password123"
  },
  {
    name: "Carol Davis",
    email: "carol.davis@example.com",
    username: "carol789",
    password: "password123"
  },
  {
    name: "David Wilson",
    email: "david.wilson@example.com",
    username: "davidwilson",
    password: "password123"
  },
  {
    name: "Eva Brown",
    email: "eva.brown@example.com",
    username: "evabrown2024",
    password: "password123"
  }
])

# Create reviews for all movies using users
movies = Movie.all
users = User.all

movies.each do |movie|
  # Create 5 reviews for each movie with varied ratings and comments
  Review.create!([
    {
      movie: movie,
      user: users[0], # Alice Johnson
      comment: "Absolutely incredible! This movie exceeded all my expectations. The storytelling was masterful and the character development was outstanding.",
      stars: 5
    },
    {
      movie: movie,
      user: users[1], # Bob Smith
      comment: "A solid film with great production values. While not perfect, it delivers an entertaining experience worth watching.",
      stars: 4
    },
    {
      movie: movie,
      user: users[2], # Carol Davis
      comment: "Decent movie overall. Some parts were engaging while others felt a bit slow. Worth a watch if you're a fan of the genre.",
      stars: 3
    },
    {
      movie: movie,
      user: users[3], # David Wilson
      comment: "Had high hopes for this one but it fell short. The plot felt rushed and some characters were underdeveloped.",
      stars: 2
    },
    {
      movie: movie,
      user: users[4], # Eva Brown
      comment: "Unfortunately this didn't work for me at all. Poor pacing, weak dialogue, and unconvincing performances throughout.",
      stars: 1
    }
  ])
end

# Create favorite associations
# Alice Johnson favorites some popular movies
Favorite.create!([
  { user: users[0], movie: movies[0] }, # Avengers: Endgame
  { user: users[0], movie: movies[2] }, # Black Panther
  { user: users[0], movie: movies[3] }, # Avengers: Infinity War
  { user: users[0], movie: movies[6] }, # Iron Man
  { user: users[0], movie: movies[9] }, # Batman
])

# Bob Smith favorites some different movies
Favorite.create!([
  { user: users[1], movie: movies[1] }, # Captain Marvel
  { user: users[1], movie: movies[6] }, # Iron Man
  { user: users[1], movie: movies[8] }, # Spider-Man
  { user: users[1], movie: movies[12] }, # Wonder Woman
])

# Carol Davis favorites some classic movies
Favorite.create!([
  { user: users[2], movie: movies[7] }, # Superman
  { user: users[2], movie: movies[9] }, # Batman
  { user: users[2], movie: movies[10] }, # Catwoman
])

# David Wilson favorites some action movies
Favorite.create!([
  { user: users[3], movie: movies[0] }, # Avengers: Endgame
  { user: users[3], movie: movies[3] }, # Avengers: Infinity War
  { user: users[3], movie: movies[6] }, # Iron Man
  { user: users[3], movie: movies[8] }, # Spider-Man
  { user: users[3], movie: movies[12] }, # Wonder Woman
  { user: users[3], movie: movies[13] }, # The Incredible Hulk
])

# Eva Brown favorites some newer movies
Favorite.create!([
  { user: users[4], movie: movies[1] }, # Captain Marvel
  { user: users[4], movie: movies[2] }, # Black Panther
  { user: users[4], movie: movies[12] }, # Wonder Woman
])

# Create genres
Genre.create!([
  { name: "Action" },
  { name: "Adventure" },
  { name: "Comedy" },
  { name: "Drama" },
  { name: "Horror" },
  { name: "Romance" },
  { name: "Sci-Fi" },
  { name: "Thriller" },
  { name: "Fantasy" },
  { name: "Animation" }
])

# Create characterizations (movie-genre associations)
movies = Movie.all
genres = Genre.all

# Avengers: Endgame - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[0], genre: genres[0] }, # Action
  { movie: movies[0], genre: genres[1] }, # Adventure
  { movie: movies[0], genre: genres[6] }  # Sci-Fi
])

# Captain Marvel - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[1], genre: genres[0] }, # Action
  { movie: movies[1], genre: genres[1] }, # Adventure
  { movie: movies[1], genre: genres[6] }  # Sci-Fi
])

# Black Panther - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[2], genre: genres[0] }, # Action
  { movie: movies[2], genre: genres[1] }, # Adventure
  { movie: movies[2], genre: genres[6] }  # Sci-Fi
])

# Avengers: Infinity War - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[3], genre: genres[0] }, # Action
  { movie: movies[3], genre: genres[1] }, # Adventure
  { movie: movies[3], genre: genres[6] }  # Sci-Fi
])

# Green Lantern - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[4], genre: genres[0] }, # Action
  { movie: movies[4], genre: genres[1] }, # Adventure
  { movie: movies[4], genre: genres[6] }  # Sci-Fi
])

# Fantastic Four - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[5], genre: genres[0] }, # Action
  { movie: movies[5], genre: genres[1] }, # Adventure
  { movie: movies[5], genre: genres[6] }  # Sci-Fi
])

# Iron Man - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[6], genre: genres[0] }, # Action
  { movie: movies[6], genre: genres[1] }, # Adventure
  { movie: movies[6], genre: genres[6] }  # Sci-Fi
])

# Superman - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[7], genre: genres[0] }, # Action
  { movie: movies[7], genre: genres[1] }, # Adventure
  { movie: movies[7], genre: genres[6] }  # Sci-Fi
])

# Spider-Man - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[8], genre: genres[0] }, # Action
  { movie: movies[8], genre: genres[1] }, # Adventure
  { movie: movies[8], genre: genres[6] }  # Sci-Fi
])

# Batman - Action, Adventure, Thriller
Characterization.create!([
  { movie: movies[9], genre: genres[0] }, # Action
  { movie: movies[9], genre: genres[1] }, # Adventure
  { movie: movies[9], genre: genres[7] }  # Thriller
])

# Catwoman - Action, Adventure, Thriller
Characterization.create!([
  { movie: movies[10], genre: genres[0] }, # Action
  { movie: movies[10], genre: genres[1] }, # Adventure
  { movie: movies[10], genre: genres[7] }  # Thriller
])

# Wonder Woman - Action, Adventure, Fantasy
Characterization.create!([
  { movie: movies[11], genre: genres[0] }, # Action
  { movie: movies[11], genre: genres[1] }, # Adventure
  { movie: movies[11], genre: genres[8] }  # Fantasy
])

# The Incredible Hulk - Action, Adventure, Sci-Fi
Characterization.create!([
  { movie: movies[12], genre: genres[0] }, # Action
  { movie: movies[12], genre: genres[1] }, # Adventure
  { movie: movies[12], genre: genres[6] }  # Sci-Fi
])

# The Exit 8 - Horror, Thriller
Characterization.create!([
  { movie: movies[13], genre: genres[4] }, # Horror
  { movie: movies[13], genre: genres[7] }  # Thriller
])
