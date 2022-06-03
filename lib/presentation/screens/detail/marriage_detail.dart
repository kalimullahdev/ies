import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ies/presentation/base/custom_rounded_button.dart';
import 'package:ies/presentation/base/horizantal_list.dart';
import 'package:ies/utill/dimensions.dart';
import 'package:ies/utill/styles.dart';

class MarriageDetail extends StatelessWidget {
  final String marriageId;
  const MarriageDetail({Key? key, required this.marriageId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(marriageId),
            const SizedBox(height: Dimensions.PADDING_SIZE_DEFAULT),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Shree Laxmi Marriage Hall And Banquet",
                style: defaultRegularLarge,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Reacting to the National Command Operations Center’s (NCOC) announcement a week ago about the ",
                style: defaultRegular,
              ),
            ),
            CustomRoundedButton(
              buttonText: "Book now",
              onpressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RatingBar.builder(
                initialRating: 3,
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
            ),
            const ListTile(
              title: Text(
                "Avaliable slots",
                style: defaultBold,
              ),
            ),
            const SizedBox(
              width: 600,
              height: 800,
              child: HorizantalList(),
            ),
          ],
        ),
      ),
    );
  }
}
