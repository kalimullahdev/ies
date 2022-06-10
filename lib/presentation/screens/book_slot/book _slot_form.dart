import 'package:flutter/material.dart';
import 'package:ies/presentation/base/custom_rounded_button.dart';
import 'package:ies/presentation/screens/book_slot/book_slot_tabbar/first_bookslot_tabbar_screen.dart';
import 'package:ies/presentation/screens/book_slot/book_slot_tabbar/second_bookslot_tabbar_screen.dart';
import 'package:ies/presentation/screens/book_slot/book_slot_tabbar/third_bookslot_tabbar_screen.dart';
import 'package:ies/utill/color_resources.dart';
import 'package:ies/utill/dimensions.dart';

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
          children: const [
            FirstBookSlotTabBarScreen(),
            SecondBookSlotTabBarScreen(),
            ThirdBookSlotTabBarScreen(),
          ],
        ),
      ),
    );
  }
}
