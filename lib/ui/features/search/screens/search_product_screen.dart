import 'package:flutter/material.dart';

import '../components/search_product_screen_body.dart';

class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SearchProductScreenBody(),
    );
  }
}
