import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ies/presentation/screens/detail/marriage_detail.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';
import 'package:ies/utill/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Instant Event Solution'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
          children: const [
            MarriageWidget(
              imgSrc:
                  "https://cdn0.weddingwire.in/vendor/8603/3_2/960/jpg/shree-laxmi-marriage-and-benquet-lawn-1_15_248603-157182282279601.jpeg",
              marriageTitle: "Shree Laxmi Marriage Hall And Banquet",
            ),
            MarriageWidget(
              imgSrc:
                  "https://5.imimg.com/data5/NK/AW/GLADMIN-33559172/marriage-hall-500x500.jpg",
              marriageTitle: "Marriage Hall in Rajendra Nagar, Patna",
            ),
            MarriageWidget(
              imgSrc:
                  "https://cdn0.weddingwire.in/vendor/8603/3_2/960/jpg/shree-laxmi-marriage-and-benquet-lawn-1_15_248603-157182282279601.jpeg",
              marriageTitle:
                  "Sundas Marriage Hall Islamabad - Directions & Contacts Detail ",
            ),
            MarriageWidget(
              imgSrc:
                  "https://propakistani.pk/wp-content/uploads/2020/11/marriage-halls.jpg",
              marriageTitle: "Shree Laxmi Marriage Hall And Banquet",
            ),
            MarriageWidget(
              imgSrc:
                  "https://www.marriageregistrationpune.com/images/Navyug-Banquet-Hall-Boat-Club-Road-6-Pune-700x466.jpg",
              marriageTitle: "Shree Laxmi Marriage Hall And Banquet",
            ),
          ],
        ),
      ),
    );
  }
}

class MarriageWidget extends StatelessWidget {
  final String imgSrc;
  final String marriageTitle;
  const MarriageWidget({
    Key? key,
    required this.imgSrc,
    required this.marriageTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MarriageDetail(
              marriageId: imgSrc,
            ),
          )),
      child: Container(
        width: 400,
        height: 200,
        margin: const EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
        decoration: Styles.boxDecorationWithShadow.copyWith(
          color: Colors.black26,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
            image: NetworkImage(imgSrc),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                marriageTitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.FONT_SIZE_DEFAULT,
                ),
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    unratedColor: ColorResources.whiteColor,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 20,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Avaliable slots",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.FONT_SIZE_DEFAULT,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.PADDING_SIZE_DEFAULT,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: 6,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            ],
          ),
        ),
      ),
    );
  }
}
