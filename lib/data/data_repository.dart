import 'package:equatable/equatable.dart';

class Friend extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  final bool isFriend;

  const Friend({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isFriend = false,
  });

  @override
  List<Object> get props => [
        id,
        name,
        imageUrl,
      ];
}

class Adda extends Equatable {
  final String name;
  final String profileUrl;
  final String coverUrl;
  final List<Friend> friends;
  final int activeUsers;

  const Adda({
    required this.name,
    required this.profileUrl,
    required this.coverUrl,
    this.friends = const [],
    this.activeUsers = 128,
  });

  @override
  List<Object> get props {
    return [
      name,
      profileUrl,
      coverUrl,
      friends,
      activeUsers,
    ];
  }
}

class Game extends Equatable {
  final String name;
  final String location;
  final String imageUrl;
  const Game({
    required this.name,
    required this.location,
    required this.imageUrl,
  });

  @override
  List<Object> get props => [
        name,
        location,
        imageUrl,
      ];
}

class DataRepository {
  static List<Friend> allFriendsList = [
    const Friend(
      id: 0,
      name: 'Terry',
      imageUrl: 'https://robohash.org/Terry.png?set=set4',
    ),
    const Friend(
      id: 1,
      name: 'Sheldon',
      imageUrl: 'https://robohash.org/Sheldon.png?set=set4',
    ),
    const Friend(
      id: 2,
      name: 'Terrill',
      imageUrl: 'https://robohash.org/Terrill.png?set=set4',
    ),
    const Friend(
      id: 3,
      name: 'Miles',
      imageUrl: 'https://robohash.org/Miles.png?set=set4',
    ),
    const Friend(
      id: 4,
      name: 'Mavis',
      imageUrl: 'https://robohash.org/Mavis.png?set=set4',
    ),
    const Friend(
      id: 5,
      name: 'Alison',
      imageUrl: 'https://robohash.org/Alison.png?set=set4',
    ),
    const Friend(
      id: 6,
      name: 'Oleta',
      imageUrl: 'https://robohash.org/Oleta.png?set=set4',
    ),
    const Friend(
      id: 7,
      name: 'Ewell',
      imageUrl: 'https://robohash.org/Ewell.png?set=set4',
    ),
    const Friend(
      id: 8,
      name: 'Demetrius',
      imageUrl: 'https://robohash.org/Demetrius.png?set=set4',
    ),
    const Friend(
      id: 9,
      name: 'Eleanora',
      imageUrl: 'https://robohash.org/Eleanora.png?set=set4',
    ),
    const Friend(
      id: 10,
      name: 'Marcel',
      imageUrl: 'https://robohash.org/Marcel.png?set=set4',
    ),
    const Friend(
      id: 11,
      name: 'Assunta',
      imageUrl: 'https://robohash.org/Assunta.png?set=set4',
    ),
    const Friend(
      id: 12,
      name: 'Trace',
      imageUrl: 'https://robohash.org/Trace.png?set=set4',
    ),
    const Friend(
      id: 13,
      name: 'Enoch',
      imageUrl: 'https://robohash.org/Enoch.png?set=set4',
    ),
    const Friend(
      id: 14,
      name: 'Jeanne',
      imageUrl: 'https://robohash.org/Jeanne.png?set=set4',
    ),
    const Friend(
      id: 15,
      name: 'Trycia',
      imageUrl: 'https://robohash.org/Trycia.png?set=set4',
    ),
  ];

  static List<Adda> allAddasList = [
    const Adda(
        name: 'Warships',
        profileUrl: 'https://robohash.org/Piper.png?set=set4',
        friends: [
          Friend(
            id: 0,
            name: 'Terry',
            imageUrl: 'https://robohash.org/Terry.png?set=set4',
          ),
          Friend(
            id: 1,
            name: 'Sheldon',
            imageUrl: 'https://robohash.org/Sheldon.png?set=set4',
          )
        ],
        coverUrl: 'https://www.freetogame.com/g/9/thumbnail.jpg'),
    const Adda(
        name: 'War Thunder',
        profileUrl: 'https://robohash.org/Kodi.png?set=set4',
        friends: [
          Friend(
            id: 0,
            name: 'Terry',
            imageUrl: 'https://robohash.org/Terry.png?set=set4',
          ),
          Friend(
            id: 1,
            name: 'Sheldon',
            imageUrl: 'https://robohash.org/Sheldon.png?set=set4',
          )
        ],
        coverUrl: 'https://www.freetogame.com/g/12/thumbnail.jpg'),
    const Adda(
        name: 'Palia',
        profileUrl: 'https://robohash.org/Macy.png?set=set4',
        friends: [
          Friend(
            id: 0,
            name: 'Terry',
            imageUrl: 'https://robohash.org/Terry.png?set=set4',
          ),
          Friend(
            id: 1,
            name: 'Sheldon',
            imageUrl: 'https://robohash.org/Sheldon.png?set=set4',
          )
        ],
        coverUrl: 'https://www.freetogame.com/g/560/thumbnail.jpg'),
    const Adda(
        name: 'Apex Legends',
        profileUrl: 'https://robohash.org/Maurine.png?set=set4',
        friends: [
          Friend(
            id: 0,
            name: 'Terry',
            imageUrl: 'https://robohash.org/Terry.png?set=set4',
          ),
          Friend(
            id: 1,
            name: 'Sheldon',
            imageUrl: 'https://robohash.org/Sheldon.png?set=set4',
          )
        ],
        coverUrl: 'https://www.freetogame.com/g/23/thumbnail.jpg'),
  ];

  static List<Game> allGamesList = [
    const Game(
        name: 'Overwatch 2',
        location: 'Activision Blizzard',
        imageUrl: 'https://www.freetogame.com/g/540/thumbnail.jpg'),
    const Game(
        name: 'Diablo Immortal',
        location: 'Blizzard Entertainment',
        imageUrl: 'https://www.freetogame.com/g/521/thumbnail.jpg'),
    const Game(
        name: 'Lost Ark',
        location: 'Amazon Games',
        imageUrl: 'https://www.freetogame.com/g/517/thumbnail.jpg'),
    const Game(
        name: 'PUBG',
        location: 'KRAFTON, Inc',
        imageUrl: 'https://www.freetogame.com/g/516/thumbnail.jpg'),
    const Game(
        name: 'Blade and Soul',
        location: 'Mediatonic',
        imageUrl: 'https://www.freetogame.com/g/6/thumbnail.jpg'),
  ];
}
