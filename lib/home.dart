import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  HomePages createState() => HomePages();
}

class HomePages extends State<HomePage> {
  List meals = []
  bool isLoading = true;
  Dio dio = Dio();
  final url = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=chicken';

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    try {
      setState(() {
        meals = response.data['meals'];
        isLoading = false;
      });
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)
                ),
              ),
            ],
          ),
           Center(
            child: Column(
              children: [
                const Image(
                  image: ExactAssetImage('assets/logo.png')
                ),
                TextButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/login'));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide.none
                  ),
                  backgroundColor: Colors.transparent, 
                  elevation: 0,
                  
                ),
                child: const Text(
                  "LOGOUT",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                ),
                ElevatedButton(
                  onPressed: fetchPosts,
                  child: Text('Fetch Posts'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}