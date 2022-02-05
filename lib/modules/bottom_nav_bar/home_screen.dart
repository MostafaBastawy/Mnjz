import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mnjz/cubit/cubit.dart';
import 'package:mnjz/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  var searchController = TextEditingController();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: null,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Stack(
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
                        )
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
            ],
          ),
        ),
      ),
    );
  }
}