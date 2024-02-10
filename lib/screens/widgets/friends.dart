import 'package:flutter/material.dart';
import 'package:vyld_flutter_task/data/data_repository.dart';

class FriendCard extends StatelessWidget {
  const FriendCard({
    super.key,
    required this.friend,
  });

  final Friend friend;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          width: 70,
        ),
        Align(
          alignment:
              friend.id % 2 == 0 ? Alignment.topCenter : Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(friend.imageUrl),
              ),
            ),
            width: 70,
            height: 70,
          ),
        ),
      ],
    );
  }
}
