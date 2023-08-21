import 'dart:convert';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:imei_scanner/core/widgets/loading_widgets/modal_progress_hud.dart';
import 'package:imei_scanner/features/home/firebase_remote_response.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseRemoteResponse? remoteResponse;

  @override
  void initState() {
    getRemoteConfig();
    setState(() {
      debugPrint('remote CONFIG');
      debugPrint(remoteResponse.toString());
    });
    super.initState();
  }

  Future<void> getRemoteConfig() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 30),
        minimumFetchInterval: const Duration(seconds: 2),
      ),
    );
    remoteConfig.fetchAndActivate();
    final response = remoteConfig.getString('newJson');
    final ok = jsonDecode(response);
    remoteResponse = FirebaseRemoteResponse.fromJson(ok);
  }

  @override
  Widget build(BuildContext context) {
    String text = "Initial Text";
    return ModalProgressHUD(
      inAsyncCall: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ),
        // drawer: Drawer(
        //   child: ListView(
        //     children: <Widget>[
        //       DrawerHeader(child: Container()),
        //       Column(children: <Widget>[
        //         ListTile(
        //             leading: const Icon(Icons.info),
        //             onTap: () {
        //               setState(() {
        //                 text = "info pressed";
        //               });
        //             }),
        //         ListTile(
        //             leading: const Icon(Icons.save),
        //             onTap: () {
        //               setState(() {
        //                 text = "save pressed";
        //               });
        //             }),
        //         ListTile(
        //             leading: const Icon(Icons.settings),
        //             onTap: () {
        //               setState(() {
        //                 text = "settings pressed";
        //               });
        //             }),
        //       ])
        //     ],
        //   ),
        // ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: remoteResponse?.children?.length ?? 0,
                (_, index) {
                  return ListTile(
                    // leading: Text(''),
                    title: Row(
                      children: [
                        Text(remoteResponse?.children?[index].name ?? ''),
                      ],
                    ),
                    subtitle: const Row(
                      children: [
                        Text('Date'),
                        Text('       10.07.2023'),
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            getRemoteConfig();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
