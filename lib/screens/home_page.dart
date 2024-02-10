import 'package:flutter/material.dart';
import 'package:vyld_flutter_task/common/widgets/custom_bg_gradient.dart';
import 'package:vyld_flutter_task/common/widgets/custom_carousel.dart';
import 'package:vyld_flutter_task/common/widgets/social_connections.dart';
import 'package:vyld_flutter_task/data/data_repository.dart';
import 'package:vyld_flutter_task/screens/widgets/addas.dart';
import 'package:vyld_flutter_task/screens/widgets/friends.dart';
import 'package:vyld_flutter_task/screens/widgets/games.dart';
import 'package:vyld_flutter_task/screens/widgets/suggested.dart';
import 'package:vyld_flutter_task/utils/helper_extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const BackgroundGradientWidget(),
          SingleChildScrollView(
            child: Column(
              children: [
                const AppBar1(),
                const AppBar2(),
                const SizedBox(height: 16),
                CustomCarousel(
                  title: 'friends',
                  height: 250,
                  bgExists: true,
                  widgets: DataRepository.allFriendsList
                      .sublist(0, 8)
                      .map((e) => FriendCard(friend: e))
                      .toList(),
                  separationWidth: 0,
                ),
                CustomCarousel(
                  title: 'member addas',
                  height: 250,
                  widgets: DataRepository.allAddasList
                      .map((e) => AddasCard(adda: e))
                      .toList(),
                ),
                const SocialConnections(
                  title: 'connect with more friends',
                  height: 100,
                ),
                CustomCarousel(
                    height: 250,
                    title: 'ongoing games',
                    widgets: DataRepository.allGamesList
                        .map((e) => GamesCard(game: e))
                        .toList()),
                CustomCarousel(
                  height: 250,
                  title: 'suggested friends',
                  widgets: DataRepository.allFriendsList
                      .sublist(8)
                      .map((item) => SuggestedCard(friend: item))
                      .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBar1 extends StatelessWidget {
  const AppBar1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.pinkAccent.shade100,
      ),
    );
  }
}

class AppBar2 extends StatelessWidget {
  const AppBar2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      title: Text(
        'Circle',
        style: context.theme.textTheme.displaySmall!.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 54,
            width: 54,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Icon(
              Icons.search_rounded,
              color: Colors.white.withOpacity(0.5),
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 54,
            width: 54,
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
            child: Icon(
              Icons.person_add_alt_1_outlined,
              color: Colors.black.withOpacity(0.8),
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
