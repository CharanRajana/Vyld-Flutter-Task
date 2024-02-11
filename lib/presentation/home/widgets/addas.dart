import 'package:flutter/material.dart';
import 'package:vyld_flutter_task/common/widgets/icon_text_button.dart';
import 'package:vyld_flutter_task/data/data_repository.dart';
import 'package:vyld_flutter_task/utils/helper_extensions.dart';

class AddasCard extends StatelessWidget {
  const AddasCard({
    super.key,
    required this.adda,
  });

  final Adda adda;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade800,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image(
                width: double.infinity,
                image: NetworkImage(
                  adda.coverUrl,
                  scale: 0.5,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListTile(
              leading: Container(
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(adda.profileUrl),
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    adda.name,
                    style: context.theme.textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(adda.friends[0].imageUrl),
                          ),
                        ),
                      ),
                      Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(adda.friends[1].imageUrl),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              trailing: IconTextButton(
                text: adda.activeUsers.toString(),
                style: context.theme.textTheme.labelSmall!.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
                icon: const Icon(
                  Icons.people_alt_rounded,
                  color: Colors.grey,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
