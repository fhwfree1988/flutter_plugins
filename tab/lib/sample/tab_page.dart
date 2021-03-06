import 'package:flutter/material.dart';
import 'package:tab/items/topwidget/top_widget.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              child: Center(

               /* child: Text(
                  'Your Widget if you want',
                ),*/
                child: Row(
                    children: const [
                      SizedBox(width: 10),
                      TopWidget(),
                      SizedBox(width: 10),
                      TopWidget(),
                      SizedBox(width: 10),
                    ],
                ),
              ),
              color: Colors.white70,
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                ),
                Tab(
                  icon: Icon(
                    Icons.add,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.deck,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.child_care,
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'Screen 1',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Screen 2',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Screen 3',
                    ),
                  ),
                  Center(
                    child: Text(
                      'Screen 4',
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}