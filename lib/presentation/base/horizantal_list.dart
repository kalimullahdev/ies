import 'package:flutter/material.dart';
import 'package:ies/presentation/base/others/constant.dart';
import 'package:ies/presentation/base/others/global_function.dart';
import 'package:ies/presentation/base/others/global_widget.dart';

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

class HorizantalList extends StatefulWidget {
  const HorizantalList({Key? key}) : super(key: key);

  @override
  _HorizantalListState createState() => _HorizantalListState();
}

class _HorizantalListState extends State<HorizantalList> {
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
            Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Previous functions',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      // Fluttertoast.showToast(
                      //     msg: 'Click last search',
                      //     toastLength: Toast.LENGTH_SHORT);
                    },
                    child: const Text('view all',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: PRIMARY_COLOR),
                        textAlign: TextAlign.end),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              height: boxImageSize * 1.1,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemCount: _productData.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildLastSearchCard(index, boxImageSize);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLastSearchCard(index, boxImageSize) {
    return SizedBox(
      width: boxImageSize + 10,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        color: Colors.white,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            // Fluttertoast.showToast(
            //     msg: 'Click ' + _productData[index].name,
            //     toastLength: Toast.LENGTH_SHORT);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(_productData[index].image),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _productData[index].name,
                      style: TextStyle(fontSize: 12, color: _color1),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
