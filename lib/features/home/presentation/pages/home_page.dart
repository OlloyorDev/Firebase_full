import 'package:flutter/material.dart';
import 'package:imei_scanner/features/home/presentation/widgets/home_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String text = "Initial Text";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Container()),
            Column(children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.info),
                  onTap: () {
                    setState(() {
                      text = "info pressed";
                    });
                  }),
              ListTile(
                  leading: const Icon(Icons.save),
                  onTap: () {
                    setState(() {
                      text = "save pressed";
                    });
                  }),
              ListTile(
                  leading: const Icon(Icons.settings),
                  onTap: () {
                    setState(() {
                      text = "settings pressed";
                    });
                  }),
            ])
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 5,
              (_, index) {
                return ListTile(
                  // leading: Text(''),
                  title: const Row(
                    children: [
                      Text('Model'),
                      Text('   Samsung a10'),
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
          showBottomSheet(
              context: context,
              builder: (context) {
                return const HomeBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
