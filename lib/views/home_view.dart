import 'package:blacknote/style/app_styles.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Notes',
          style: TextStyle(
              color: AppStyles.backgroundColorWhite,
              fontWeight: FontWeight.bold,
              fontSize: 43),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/search_icon.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/disclaimer_icon.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/home_icon.png'),
                const Text(
                  'Create your first note !',
                  style: TextStyle(
                    color: AppStyles.backgroundColorWhite,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60.0,
            right: 10,
            child: SizedBox(
              width: 70,
              height: 70,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                tooltip: 'Add new note',
                onPressed: () async {},
                backgroundColor: AppStyles.primaryBgColor,
                child: const Icon(
                  Icons.add,
                  color: AppStyles.backgroundColorWhite,
                  size: 48,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}