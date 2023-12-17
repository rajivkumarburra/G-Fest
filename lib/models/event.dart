class Event {
  String title;
  String description;
  String location;
  String imageURL;
  String image2;
  String date;
  double price;

  Event({
    required this.title,
    required this.description,
    required this.location,
    required this.imageURL,
    required this.image2,
    required this.date,
    required this.price,
  });

  static List<Event> events = [
    Event(
      title: 'Oppenheimer',
      description:
          'The Oppenheimer movie portrays the life of J. Robert Oppenheimer, the brilliant physicist leading the Manhattan Project during World War II. It delves into the moral dilemmas faced by the scientists developing the atomic bomb and examines the impact of their creation on humanity, blending history, ethics, and scientific discovery.',
      location: 'Mother Teresa Auditorium',
      imageURL:
          'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-250,h-390/et00347867-ysxlbmwnbz-portrait.jpg',
      image2:
          'https://assets-in.bmscdn.com/discovery-catalog/events/et00347867-ztslhtscbd-landscape.jpg',
      date: '21-10-2022',
      price: 500,
    ),
    Event(
      title: 'Avengers: Endgame',
      description:
          '"Avengers: Endgame" is an epic Marvel superhero film, a culmination of the Infinity Saga. The Avengers embark on a time-travel mission to undo the devastating effects of Thanos\' snap, seeking to restore the universe. Emotional reunions, intense battles, and sacrifices lead to an exhilarating climax, bringing closure to beloved characters and storylines.',
      location: 'Inox, Vizag',
      imageURL:
          'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg',
      image2: 'https://static.toiimg.com/photo/68949665.jpeg',
      date: '21-10-2022',
      price: 500,
    ),
    Event(
      title: 'The Dark Knight',
      description:
          '"The Dark Knight" is a gripping superhero film directed by Christopher Nolan. Batman faces his most formidable foe, the Joker, who wreaks havoc in Gotham City. Ledger\'s mesmerizing performance as the Joker elevates the movie. Themes of morality and chaos are explored, making it a powerful and iconic addition to the Batman franchise.',
      location: 'Inox, Vizag',
      imageURL:
          'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg',
      image2:
          'https://www.wallpaperflare.com/static/735/898/350/batman-dark-knight-poster-wallpaper.jpg',
      date: '21-10-2022',
      price: 500,
    ),
    Event(
      title: 'Inception',
      description:
          'Christopher Nolan\'s "Inception" is a mind-bending sci-fi thriller. Dom Cobb, a skilled thief, enters people\'s dreams to steal their secrets. Now tasked with planting an idea in a target\'s subconscious, he assembles a team for the ultimate heist. The film masterfully navigates dreamscapes and reality, blurring the lines between imagination and perception.',
      location: 'Inox, Vizag',
      imageURL:
          'https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg',
      image2:
          'https://rukminim1.flixcart.com/image/850/1000/xif0q/poster/m/k/k/small-spos8308-poster-inception-animated-wall-poster-sl-8308-original-imaghzwanmepwc89.jpeg?q=90',
      date: '21-10-2022',
      price: 500,
    ),
    Event(
      title: 'Interstellar',
      description:
          '"Interstellar," also directed by Christopher Nolan, is an awe-inspiring sci-fi adventure. In a future where Earth faces environmental collapse, a group of astronauts embarks on a journey through a wormhole near Saturn to find a new habitable planet. The film delves into relativity, time dilation, and the power of love, offering a visually stunning and emotionally charged experience.',
      location: 'Inox, Vizag',
      imageURL:
          'https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg',
      image2:
          'https://c4.wallpaperflare.com/wallpaper/743/1018/523/interstellar-2014-wallpaper-preview.jpg',
      date: '21-10-2022',
      price: 500,
    ),
    Event(
      title: 'Tenet',
      description:
          '"Tenet" is a mind-bending action-thriller directed by Christopher Nolan. The protagonist, a secret agent, discovers a time-inverting technology that can alter the course of history. He races against time to prevent a catastrophic global event orchestrated by a mysterious organization. The film combines complex time manipulation with high-octane action sequences, leaving audiences on the edge of their seats.',
      location: 'Inox, Vizag',
      imageURL:
          'https://m.media-amazon.com/images/M/MV5BMzU3YWYwNTQtZTdiMC00NjY5LTlmMTMtZDFlYTEyODBjMTk5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
      image2: 'https://cdn.mos.cms.futurecdn.net/wJ4s9FFL6FdxAoKixtr4FS.jpg',
      date: '21-10-2022',
      price: 500,
    ),
  ];
}
