import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/views/views.dart';

class HomeHighlight extends StatelessWidget {
  const HomeHighlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            // Modify this line
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
            child: Clickable(
              child: SizedBox(
                height: 275,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/news/concert.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () => launch('https://docs.flutter.dev'),
            ),
          ),
        ),
      ],
    );
  }
}