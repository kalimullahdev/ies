import 'package:flutter/material.dart';
import 'package:ies/presentation/base/others/global_function.dart';
import 'package:ies/presentation/base/others/global_widget.dart';
import 'package:ies/utill/dimensions.dart';

class ProductModel {
  late int id;
  late String name;
  double? price;
  late String image;
  double? rating;
  int? review;
  late int sale;
  int? stock;
  String? location;

  ProductModel(
      {required this.id,
      required this.name,
      this.price,
      required this.image,
      this.rating,
      this.review,
      required this.sale,
      this.stock,
      this.location});
}

class CardSelectorFromList extends StatefulWidget {
  const CardSelectorFromList({Key? key}) : super(key: key);

  @override
  _CardSelectorFromListState createState() => _CardSelectorFromListState();
}

class _CardSelectorFromListState extends State<CardSelectorFromList> {
  // initialize global widget
  final _globalWidget = GlobalWidget();
  final _globalFunction = GlobalFunction();

  List<ProductModel> _productData = [];
  final Color _color1 = const Color(0xFF515151);

  @override
  void initState() {
    _getData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _getData() {
    _productData = [
      ProductModel(
        id: 21,
        name: "Red, White and Gold Decor",
        price: 18.3,
        image:
            "https://www.meltingflowers.com/blogs/wp-content/uploads/2016/06/IMG_20141026_195642-modified-FILEminimizer.jpg",
        rating: 5,
        review: 212,
        sale: 735,
        location: "Karachi",
      ),
      ProductModel(
        id: 21,
        name: "Lavender Wedding Decor",
        price: 18.3,
        image:
            "https://de927adv5b23k.cloudfront.net/wp-content/uploads/2019/05/30140537/Wedding-stage-decor-wreath-also-jaimaal-stage-The-Rich-Pages.jpeg",
        rating: 5,
        review: 212,
        sale: 735,
        location: "Karachi",
      ),
      ProductModel(
        id: 21,
        name: "Power of Flower Decor",
        price: 18.3,
        image:
            "https://www.geo.tv/assets/uploads/updates/2019-03-21/231757_5095423_updates.jpg",
        rating: 5,
        review: 212,
        sale: 735,
        location: "Karachi",
      ),
      ProductModel(
        id: 21,
        name: "Karachi marriage halls",
        price: 18.3,
        image:
            "https://www.geo.tv/assets/uploads/updates/2019-03-21/231757_5095423_updates.jpg",
        rating: 5,
        review: 212,
        sale: 735,
        location: "Karachi",
      ),
      ProductModel(
        id: 21,
        name: "Karachi marriage halls",
        price: 18.3,
        image:
            "https://www.geo.tv/assets/uploads/updates/2019-03-21/231757_5095423_updates.jpg",
        rating: 5,
        review: 212,
        sale: 735,
        location: "Karachi",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final double boxImageSize = (MediaQuery.of(context).size.width / 3);

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose Hall',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: boxImageSize * 1.1,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemCount: _productData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChooseHallWidget(
                    boxImageSize: boxImageSize,
                    color1: _color1,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ChooseHallWidget extends StatefulWidget {
  const ChooseHallWidget({
    Key? key,
    required this.boxImageSize,
    required Color color1,
    required this.index,
  })  : _color1 = color1,
        super(key: key);

  final double boxImageSize;
  final Color _color1;
  final int index;

  @override
  State<ChooseHallWidget> createState() => _ChooseHallWidgetState();
}

class _ChooseHallWidgetState extends State<ChooseHallWidget> {
  int currentIndex = 0;

  void changeCurrentHall(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.boxImageSize + 10,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // color: currentIndex == widget.index ? Colors.green : Colors.white,
        elevation: 2,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            changeCurrentHall(widget.index);
            // Fluttertoast.showToast(
            //     msg: 'Click ' + _productData[index].name,
            //     toastLength: Toast.LENGTH_SHORT);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hall ${widget.index + 1}",
                  style: TextStyle(
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                    color: widget._color1,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                Text(
                  "Capacity ${widget.index + 1}00",
                  style: TextStyle(fontSize: 12, color: widget._color1),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
