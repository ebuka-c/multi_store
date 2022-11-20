import 'package:flutter/material.dart';

import '../utilities/categ_list.dart';
import '../widgets/categ_widgets.dart';

// List<String> labeltry = [
//   'shirt',
//   't-shirt',
//   'jacket',
//   'jersey',
// ];

class WomenCategory extends StatelessWidget {
  const WomenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(headerLabel: 'women'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 70,
                      crossAxisSpacing: 15,
                      crossAxisCount: 3,
                      children: List.generate(men.length, (index) {
                        return SubcategoryModel(
                          mainCategName: 'women',
                          subCategName: men[index],
                          assetName: 'asset/images/women/women$index.jpg',
                          subCategLabel: men[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 0,
              right: 0,
              child: SliderBar(
                maincategName: 'women',
              ))
        ],
      ),
    );
  }
}
