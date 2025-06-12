import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/search_section.dart';
import 'package:perplexity_clone/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideBar(),
          Column(
            children: [
            const Expanded(
              child: SearchSection(),
            ),
            // footer
            Container(
              height: 20,
            )
            ],
          )
        ],
      )
      );
  }
}