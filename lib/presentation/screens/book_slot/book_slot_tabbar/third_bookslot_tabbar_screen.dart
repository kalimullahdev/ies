import 'package:flutter/material.dart';
import 'package:ies/presentation/screens/book_slot/book%20_slot_form.dart';
import 'package:ies/utill/dimensions.dart';
import 'package:ies/utill/styles.dart';

class ThirdBookSlotTabBarScreen extends StatelessWidget {
  const ThirdBookSlotTabBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      child: Column(
        children: [
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          ListTile(
            title: const Text(
              "Selected hall capacity",
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hall No 1",
                  style: defaultRegular.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                Text(
                  "200 Guest",
                  style: defaultRegular.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.FONT_SIZE_SMALL,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          ListTile(
            title: const Text(
              "Selected time slot",
            ),
            trailing: Text(
              "2 PM",
              style: defaultRegular.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_SMALL,
              ),
            ),
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  child: Text(
                    "Selected decoration",
                    style: defaultBold,
                  ),
                ),
                Text(
                  "Selected Menu",
                  style: defaultBold,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 140,
                  height: 160,
                  decoration: Styles.boxDecorationWithShadow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Image.network(
                          decorationList[0].imgSrc,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          Dimensions.PADDING_SIZE_DEFAULT,
                        ),
                        child: Text(
                          "${decorationList[0].price} PKR",
                          style: defaultMedium,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: Styles.boxDecorationWithShadow.copyWith(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                        decorationList[0].imgSrc,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          ListTile(
            title: const Text(
              "Total cost",
            ),
            trailing: Text(
              "30,000 PKR",
              style: defaultRegular.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.FONT_SIZE_SMALL,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
