import 'package:flutter/material.dart';
import 'package:vyld_flutter_task/common/widgets/icon_text_button.dart';
import 'package:vyld_flutter_task/data/data_repository.dart';
import 'package:vyld_flutter_task/utils/helper_extensions.dart';

class GamesCard extends StatelessWidget {
  const GamesCard({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  game.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 6.0),
              child: Text(
                game.name,
                style: context.theme.textTheme.labelMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0, left: 6.0),
              child: IconTextButton(
                text: game.location,
                style: context.theme.textTheme.labelMedium!
                    .copyWith(color: Colors.white),
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.grey,
                  size: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
