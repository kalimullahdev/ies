import 'package:flutter/material.dart';
import 'package:ies/presentation/screens/book_slot/book%20_slot_form.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';
import 'package:ies/utill/styles.dart';
import 'package:item_selector/item_selector.dart';

class SecondBookSlotTabBarScreen extends StatelessWidget {
  const SecondBookSlotTabBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          const Text(
            "Please choose the decoration",
            textAlign: TextAlign.start,
            style: defaultRegularLarge,
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          ItemSelectionController(
            child: SizedBox(
              width: Dimensions.getScreeenSize(context).width * .9,
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: decorationList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ItemSelectionBuilder(
                      index: index,
                      builder:
                          (BuildContext context, int index, bool selected) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 170,
                            height: 170,
                            decoration: Styles.boxDecorationWithShadow.copyWith(
                              border: selected
                                  ? Border.all(
                                      color: Colors.green,
                                      width: 3,
                                    )
                                  : Border.all(
                                      width: 0,
                                      color: ColorResources.whiteColor,
                                    ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 100,
                                  child: Image.network(
                                    decorationList[index].imgSrc,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(
                                    Dimensions.PADDING_SIZE_DEFAULT,
                                  ),
                                  child: Text(
                                    "${decorationList[index].price} PKR",
                                    style: defaultMedium,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                        // return Text('$index: $selected');
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Choose menu",
                textAlign: TextAlign.start,
                style: defaultRegularLarge,
              ),
              Text(
                "Create custom menu",
                textAlign: TextAlign.start,
                style: defaultMedium.copyWith(
                  // color: ColorResources.colorPrimary,
                  // fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          ItemSelectionController(
            child: SizedBox(
              width: Dimensions.getScreeenSize(context).width * .9,
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: decorationList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ItemSelectionBuilder(
                      index: index,
                      builder:
                          (BuildContext context, int index, bool selected) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 170,
                            height: 100,
                            decoration: Styles.boxDecorationWithShadow.copyWith(
                              border: selected
                                  ? Border.all(
                                      color: Colors.green,
                                      width: 3,
                                    )
                                  : Border.all(
                                      width: 0,
                                      color: ColorResources.whiteColor,
                                    ),
                            ),
                            child: Image.network(
                              decorationList[index].imgSrc,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        );
                        // return Text('$index: $selected');
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
