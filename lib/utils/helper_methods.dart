import 'package:flutter/material.dart';
import 'package:vyld_flutter_task/data/data_repository.dart';

SnackBar customSnackBar(Friend friend, TextStyle style, bool isAdded) {
  return SnackBar(
    duration: const Duration(seconds: 1),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Card(
      color: isAdded ? Colors.green : Colors.red,
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Center(
          child: ListTile(
            leading: Container(
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(friend.imageUrl),
                ),
              ),
            ),
            title: Text.rich(
              style: style,
              TextSpan(
                children: [
                  TextSpan(
                    text: '${friend.name} ',
                    style: style,
                  ),
                  TextSpan(
                    text: isAdded ? 'added to ' : 'removed from ',
                    style: style.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'your Friend\'s Network',
                    style: style,
                  ),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    ),
  );
}
