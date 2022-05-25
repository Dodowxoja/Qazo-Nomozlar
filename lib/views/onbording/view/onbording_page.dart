import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qazo_nomozlar/core/constants/color_const.dart';
import 'package:qazo_nomozlar/views/lang/lang_page.dart';
import 'package:qazo_nomozlar/views/onbording/cubit/onbording_cubit.dart';
import 'package:qazo_nomozlar/views/onbording/state/onbording_state.dart';

class OnBordingView extends StatefulWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  State<OnBordingView> createState() => _OnBordingViewState();
}

class _OnBordingViewState extends State<OnBordingView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  String textt1 = 'Namozingizni to’la-to’kis qiling';
  String text1 =
      'Vitae a odio fusce eu, eget massa ut. Consectetur ut nisl, turpis arcu massa at magna quisque.';

  String textt2 = 'Consectetur ut nisl, turpis arcu';
  String text2 =
      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration';

  String textt3 = 'Massa at magna quisque.';
  String text3 =
      'Integer neque erat, vehicula nec ante vel, congue sagittis elit. Nullam semper eu odio at placerat. Etiam lacinia lorem dui.';

  @override
  Widget build(BuildContext context) {
    return myScaffold(context);
    // BlocProvider(
    //   create: (context) => OnBordingCubit(),
    //   child: BlocConsumer<OnBordingCubit, OnBordingState>(
    //     listener: (context, state) {},
    //     builder: (context, state) => myScaffold(context),
    //   ),
    // );
  }

  myScaffold(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: TabBarView(
              controller: tabController,
              children: [
                Image.asset(
                  'assets/images/rectangle1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/rectangle2.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/rectangle3.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 53,
            height: 7,
            child: TabBar(
              controller: tabController,
              tabs: [
                Tab(
                  child: tabController!.index == 0 ? imageTab1() : imageTab2(),
                ),
                Tab(
                  child: tabController!.index == 1 ? imageTab1() : imageTab2(),
                ),
                Tab(
                    child:
                        tabController!.index == 2 ? imageTab1() : imageTab2()),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     tabController!.index == 0 ? imageTab1() : imageTab2(),
          //     const SizedBox(width: 8),
          //     tabController!.index == 1 ? imageTab1() : imageTab2(),
          //     const SizedBox(width: 8),
          //     tabController!.index == 2 ? imageTab1() : imageTab2(),
          //   ],
          // ),
          const SizedBox(height: 10),
          SizedBox(
            height: 108,
            width: 335,
            child: TabBarView(
              controller: tabController,
              children: [
                textScroll(textt1, text1),
                textScroll(textt2, text2),
                textScroll(textt3, text3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container imageTab1() {
    return Container(
      height: 7,
      width: 20,
      decoration: BoxDecoration(
        color: ColorConst.green100,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  CircleAvatar imageTab2() {
    return CircleAvatar(radius: 3.5, backgroundColor: ColorConst.green20);
  }

  SizedBox textScroll(t1, t2) {
    return SizedBox(
      height: 108,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(t1),
          Text(t2),
        ],
      ),
    );
  }

  a() {
    return DotsDecorator(
      activeColor: ColorConst.green100,
      color: ColorConst.green20.withOpacity(0.5),
      size: const Size.square(10.0),
      activeSize: const Size(18.0, 10.0),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    );
  }

  b() {
    return DotsIndicator(
      dotsCount: 1,
      position: 2.0,
      decorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(18.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
