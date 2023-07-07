import 'package:flutter/material.dart';
import 'package:ui_design/screens/catalogue/categories/categories_page.dart';
import 'package:ui_design/screens/catalogue/products/products_page.dart';

final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

class CataloguePage extends StatefulWidget {
  const CataloguePage({super.key});

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Title(
          color: Colors.white,
          child: const Text('Catalogue'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelStyle: const TextStyle(fontSize: 18),
          tabs: const [
            Tab(
              child: Text('Products'),
            ),
            Tab(
              child: Text('Categories'),
            ),
          ],
        ),
      ),
      body: Navigator(
        key: _navKey,
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (_) => TabBarView(
            controller: _tabController,
            children: const [
              ProductsPage(),
              CategoriesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
