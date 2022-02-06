import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mnjz/cubit/cubit.dart';
import 'package:mnjz/cubit/states.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  var searchController = TextEditingController();
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: null,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Row(
                      children: [
                        Container(
                          width: 117.w,
                          height: 117.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/opensooq-logo.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const FaIcon(
                            FontAwesomeIcons.solidBell,
                            size: 20,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                  100.r,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(
                                    100.r,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 4,
                              width: 4,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                  100.r,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 13.w),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 80.0),
                    child: Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.all(0),
                        height: 42.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: const Color(0xAFFAFAFA),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              size: 20,
                              color: Color(0xAF7F8083),
                            ),
                            SizedBox(width: 10.w),
                            SizedBox(
                              width: 138.w,
                              height: 25.h,
                              child: TextFormField(
                                controller: searchController,
                                keyboardType: TextInputType.phone,
                                maxLines: 1,
                                obscureText: false,
                                onChanged: (value) {},
                                onFieldSubmitted: (value) {},
                                validator: (value) {},
                                onTap: () {},
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'ابحث في السوق المصري... مصر',
                                  hintStyle: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xAF7F8083),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {},
                              icon: const Image(
                                image: AssetImage(
                                  'assets/images/egypt_logo.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 20.h),
              child: SizedBox(
                height: 40.h,
                child: TabBar(
                  isScrollable: true,
                  controller: tabController,
                  indicatorColor: const Color(0xAF007AFC),
                  labelColor: const Color(0xAF007AFC),
                  unselectedLabelColor: const Color(0xAF000000),
                  tabs: [
                    Text(
                      '    الاعلانات     ',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '    الاقسام     ',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Text(
                      '    متجر     ',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Text(
                      '    شوهٍد     ',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                'عقارات للبيع',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: const Color(0xAF000000),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                width: 75.w,
                                height: 24.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: const Color(0xAF007AFC),
                                ),
                                child: Center(
                                  child: Text(
                                    'شاهد المزيد',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: GridView.count(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 3,
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                            childAspectRatio: 1 / 1,
                            children: List.generate(
                              30,
                              (index) => Stack(
                                children: [
                                  Container(
                                    height: 134.h,
                                    width: 134.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4.r),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/grid.png',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        width: 95.w,
                                        height: 23.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xAF707070),
                                          borderRadius:
                                              BorderRadius.circular(4.r),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '10,000,000 جنيه',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    childAspectRatio: 1 / 1,
                    children: List.generate(
                      30,
                      (index) => Stack(
                        children: [
                          Container(
                            height: 160.h,
                            width: 201.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4.r),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/car.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 97.w,
                                height: 31.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4.r),
                                ),
                                child: Center(
                                  child: Text(
                                    'سيارات ومركبات',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Column(
                      children: [
                        Container(
                          width: 394.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: const Color(0xAF007AFC),
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Center(
                            child: Text(
                              '+  اضف متجرك الان',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          padding: const EdgeInsets.all(0),
                          height: 42.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            color: const Color(0xAFFAFAFA),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                size: 20,
                                color: Color(0xAF7F8083),
                              ),
                              SizedBox(width: 10.w),
                              SizedBox(
                                width: 138.w,
                                height: 25.h,
                                child: TextFormField(
                                  controller: searchController,
                                  keyboardType: TextInputType.phone,
                                  maxLines: 1,
                                  obscureText: false,
                                  onChanged: (value) {},
                                  onFieldSubmitted: (value) {},
                                  validator: (value) {},
                                  onTap: () {},
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'ابحث عن متجر (12)',
                                    hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xAF7F8083),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) =>
                                SizedBox(
                              width: 394.w,
                              height: 223.h,
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional.topCenter,
                                    children: [
                                      Container(
                                        width: 394.w,
                                        height: 145.h,
                                        color: Colors.white,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional.topCenter,
                                          child: Container(
                                            width: 394.w,
                                            height: 113.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/1.png',
                                                ),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        top: 75,
                                        child: Container(
                                          height: 66.h,
                                          width: 66.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                'assets/images/2.png',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        top: 120,
                                        child: Text(
                                          'One way',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        ignoreGestures: true,
                                        glowColor: Colors.red,
                                        unratedColor: Colors.amber[100],
                                        itemSize: 15,
                                        initialRating: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: const Color(0xAFFCD200),
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                      Text(
                                        '(3)',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.carAlt,
                                        color: Color(0xAFC71717),
                                        size: 17,
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'سيارات ومركبات . القاهرة . الإعلانات 32',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xAF7F8083),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                              height: 10.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
