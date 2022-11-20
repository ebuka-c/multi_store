import 'package:flutter/material.dart';
import 'package:multi_store/categories/accessories_categ.dart';
import 'package:multi_store/categories/bags_categ.dart';
import 'package:multi_store/categories/beauty_categ.dart';
import 'package:multi_store/categories/electronics_categ.dart';
import 'package:multi_store/categories/homegarden_categ.dart';
import 'package:multi_store/categories/kids_categ.dart';
import 'package:multi_store/categories/men_categ.dart';
import 'package:multi_store/categories/shoes_categ.dart';
import 'package:multi_store/categories/women_categ.dart';
import 'package:multi_store/widgets/fakesearch.dart';

List<ItemData> items = [
  ItemData(label: 'men'),
  ItemData(label: 'women'),
  ItemData(label: 'shoes'),
  ItemData(label: 'bags'),
  ItemData(label: 'electronics'),
  ItemData(label: 'accessories'),
  ItemData(label: 'home & garden'),
  ItemData(label: 'kids'),
  ItemData(label: 'beauty'),
];

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const FakeSearch(),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(children: [
        Positioned(left: 0, bottom: 0, child: sideNavigator(size)),
        Positioned(
          right: 0,
          bottom: 0,
          child: categView(size),
        ),
      ]),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.85,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeIn,
              );
            },
            child: Container(
                color: items[index].isSelected == true
                    ? Colors.white
                    : Colors.grey.shade300,
                height: size.height * 0.15,
                child: Center(child: Text(items[index].label))),
          );
        },
      ),
    );
  }

  Widget categView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
      child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              for (var element in items) {
                element.isSelected = false;
              }
              setState(() {
                items[value].isSelected = true;
              });
            });
          },
          scrollDirection: Axis.vertical,
          children: const [
            MenCategory(),
            WomenCategory(),
            ShoesCategory(),
            BagsCateg(),
            ElectronicsCategory(),
            AccessoriesCateg(),
            HomeGarden(),
            KidsCategory(),
            BeautyCateg(),
          ]),
    );
  }
}

class ItemData {
  String label;
  bool isSelected;
  ItemData({required this.label, this.isSelected = false});
}
