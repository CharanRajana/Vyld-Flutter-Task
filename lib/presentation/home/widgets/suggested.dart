import 'package:flutter/material.dart';
import 'package:vyld_flutter_task/data/data_repository.dart';
import 'package:vyld_flutter_task/utils/helper_extensions.dart';
import 'package:vyld_flutter_task/utils/helper_methods.dart';

class SuggestedCard extends StatefulWidget {
  const SuggestedCard({
    super.key,
    required this.friend,
  });

  final Friend friend;

  @override
  State<SuggestedCard> createState() => _SuggestedCardState();
}

class _SuggestedCardState extends State<SuggestedCard> {
  late bool isFriend;

  @override
  void initState() {
    isFriend = widget.friend.isFriend;
    super.initState();
  }

  void _handleToggle() {
    setState(() {
      isFriend = !isFriend;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      customSnackBar(
          widget.friend,
          context.theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
          isFriend),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.transparent,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(widget.friend.imageUrl),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.friend.name,
                style: context.theme.textTheme.labelMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: _handleToggle,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isFriend ? Colors.white : Colors.grey.withOpacity(0.2),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: Text(
                  isFriend ? '\u{274C}' : 'Add',
                  style: context.theme.textTheme.labelLarge!.copyWith(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
