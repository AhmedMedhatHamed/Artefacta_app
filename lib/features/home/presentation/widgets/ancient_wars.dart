import 'package:flutter/material.dart';
import 'package:artefacta_app/core/utils/app_color/app_color.dart';

class AncientWars extends StatefulWidget {
  const AncientWars({super.key});

  @override
  State<AncientWars> createState() => _AncientWarsState();
}

class _AncientWarsState extends State<AncientWars> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<String> images = [
    'assets/images/Ancient Wars.jpg',
    'assets/images/Ancient Wars.jpg',
    'assets/images/Ancient Wars.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 343,
          height: 169,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              controller: _controller,
              itemCount: images.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Stack(
                  fit: StackFit.expand,
                  children: [Image.asset(images[index], fit: BoxFit.cover)],
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentIndex == index ? 18 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? AppColor.primaryColor
                    : AppColor.grey,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
