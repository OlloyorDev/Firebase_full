import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imei_scanner/core/extension/build_context_extension.dart';
import 'package:imei_scanner/core/theme/app_icons.dart';
import 'package:imei_scanner/core/utils/app_utils.dart';
import 'package:imei_scanner/features/favorites/presentation/pages/favorites_page.dart';
import 'package:imei_scanner/features/home/presentation/pages/home_page.dart';
import 'package:imei_scanner/features/main/presentation/bloc/main_bloc.dart';
import 'package:imei_scanner/features/scanner/presentation/pages/scanner_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String result = '';
  bool onSwitch = false;
  static const methodChannel = MethodChannel('flashLight');

  String text = "";
  final StreamController<String> controller = StreamController<String>();

  void setText(value) {
    controller.add(value);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainBloc, MainState>(
        builder: (_, state) {
          return IndexedStack(
            index: state.menu.index,
            children: const [
              HomePage(),
              ScannerPage(),
              FavoritesPage(),
            ],
          );
        },
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       ScalableOCR(
      //         paintboxCustom: Paint()
      //           ..style = PaintingStyle.stroke
      //           ..strokeWidth = 1.0
      //           ..color = const Color.fromARGB(153, 102, 160, 241),
      //         boxLeftOff: 4,
      //         boxBottomOff: 2.0,
      //         boxRightOff: 8,
      //         boxTopOff: 3,
      //         boxHeight: MediaQuery.of(context).size.height / 4,
      //         getRawData: (value) {
      //           inspect(value);
      //         },
      //         getScannedText: (value) {
      //           setText(value);
      //         },
      //       ),
      //       StreamBuilder<String>(
      //         stream: controller.stream,
      //         builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
      //           return Result(
      //             text: snapshot.data != null ? snapshot.data! : "",
      //           );
      //         },
      //       )
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BlocBuilder<MainBloc, MainState>(
        builder: (_, state) {
          return BottomNavigationBar(
            currentIndex: state.menu.index,
            type: BottomNavigationBarType.fixed,
            onTap: changeTap,
            landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
            items: [
              _navigationBarItem(
                label: 'Home',
                icon: Icons.home,
                activeIcon: Icons.home,
              ),
              _navigationBarItem(
                label: 'Scanner',
                icon: Icons.camera_alt_outlined,
                activeIcon: Icons.camera_alt_outlined,
              ),
              _navigationBarItem(
                label: context.translate('favorites'),
                icon: AppIcons.favorite,
                activeIcon: AppIcons.favorite_1,
              ),
            ],
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // onSwitch = !onSwitch;
      //     // setState(() {});
      //   },
      //   child: onSwitch
      //       ? const Icon(Icons.flashlight_off_rounded)
      //       : const Icon(Icons.flashlight_on),
      // ),
    );
  }

  void changeTap(int index) async {
    if (index == 1) {
    } else {
      context
          .read<MainBloc>()
          .add(TabChangeEvent(index: BottomMenu.values[index]));
    }
  }

  BottomNavigationBarItem _navigationBarItem({
    required String label,
    required IconData icon,
    required IconData activeIcon,
  }) =>
      BottomNavigationBarItem(
        icon: Padding(
          padding: AppUtils.kPaddingBottom2,
          child: Icon(icon),
        ),
        activeIcon: Padding(
          padding: AppUtils.kPaddingBottom2,
          child: Icon(activeIcon),
        ),
        label: label,
        tooltip: label,
      );
}

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text("Readed text: $text");
  }
}
