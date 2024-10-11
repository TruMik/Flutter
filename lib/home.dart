import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePages();
}

class HomePages extends State<HomePage> {
  Dio dio = Dio();
  final url = 'https://randomuser.me/api/';
  List person = [];

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    try {
      var response = await Dio().get(url);
      if(response.statusCode == 200){
        setState(() {
          person = response.data['results'];
        });
      }
      else{
        print(response.statusCode);
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  Widget loadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const ExactAssetImage('assets/climb.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(const Color.fromARGB(255, 86, 132, 170).withOpacity(0.9), BlendMode.multiply),
                )
              ),
            ),
           Center(
            child: Column(
              children: [
                const Image(
                  image: ExactAssetImage('assets/logo.png')
                ),
                person.isEmpty ? loadingIndicator() : 
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 251, 255)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(person[0]['picture']['large']),  
                                          
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '${person[0]['name']['first']}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 1),  
                  
                      Text(
                        '${person[0]['name']['last']}',
                        style: const TextStyle(
                          fontSize: 16,  
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 1),
                      Text(
                        '${person[0]['email']}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}