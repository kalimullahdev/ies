import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:ies/presentation/base/custom_rounded_button.dart';
import 'package:ies/presentation/base/custom_text_field.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';
import 'package:ies/utill/styles.dart';
import 'package:item_selector/item_selector.dart';

class Decoration {
  final String imgSrc;
  final String price;

  Decoration(this.imgSrc, this.price);
}

List<Decoration> decorationList = <Decoration>[
  Decoration(
    "https://4.imimg.com/data4/JB/XG/MY-11819618/wedding-flower-decoration-500x500.jpg",
    "30000",
  ),
  Decoration(
    "https://www.tekportal.net/wp-content/uploads/2019/01/decoration-9706.jpg",
    "25000",
  ),
  Decoration(
    "https://4.imimg.com/data4/JB/XG/MY-11819618/wedding-flower-decoration-500x500.jpg",
    "15000",
  ),
  Decoration(
    "https://www.tekportal.net/wp-content/uploads/2019/01/decoration-9706.jpg",
    "20000",
  ),
  Decoration(
    "https://4.imimg.com/data4/JB/XG/MY-11819618/wedding-flower-decoration-500x500.jpg",
    "30000",
  ),
];

class BookSlotForm extends StatefulWidget {
  const BookSlotForm({Key? key}) : super(key: key);

  @override
  State<BookSlotForm> createState() => _BookSlotFormState();
}

class _BookSlotFormState extends State<BookSlotForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorResources.whiteColor,
          title: const Center(
            child: Text(
              "Book slot",
              style: TextStyle(
                fontSize: Dimensions.FONT_SIZE_LARGE,
                color: Colors.black,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRoundedButton(
              width: Dimensions.getScreeenSize(context).width * 0.8,
              buttonText: "Next",
              onpressed: () => _tabController
                  .animateTo((_tabController.index + 1) % 3), // Switch tabs
            ),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            FirstTabBarViewScreen(tabController: _tabController),
            const SecondTabBarViewScreen(),
            const ThirdTabBarViewScreen(),
          ],
        ),
      ),
    );
  }
}

class ThirdTabBarViewScreen extends StatelessWidget {
  const ThirdTabBarViewScreen({
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

class SecondTabBarViewScreen extends StatelessWidget {
  const SecondTabBarViewScreen({
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

class FirstTabBarViewScreen extends StatelessWidget {
  const FirstTabBarViewScreen({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Select hall",
              style: TextStyle(
                // fontFamily: 'default',
                fontSize: Dimensions.FONT_SIZE_LARGE,
                fontWeight: FontWeight.w500,
              ),
            ),
            DropDown(
              items: const [
                "Hall No 1",
                "Hall No 2",
                "Hall No 3",
              ],
              hint: const Text("Choose hall"),
              icon: const Icon(
                Icons.expand_more,
                color: Colors.blue,
              ),
              onChanged: print,
            ),
          ],
        ),
        const CustomTextField(
          hintText: "Number of Guests",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Select event time",
              style: TextStyle(
                // fontFamily: 'default',
                fontSize: Dimensions.FONT_SIZE_LARGE,
                fontWeight: FontWeight.w500,
              ),
            ),
            DropDown(
              items: const ["12 PM", "2 PM", "3 PM"],
              hint: const Text("Choose time"),
              icon: const Icon(
                Icons.expand_more,
                color: Colors.blue,
              ),
              onChanged: print,
            ),
          ],
        ),
      ],
    );
  }
}
