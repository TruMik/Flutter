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
                  colorFilter: ColorFilter.mode(const Color.fromARGB(255, 118, 183, 236).withOpacity(0.9), BlendMode.multiply),
                )
              ),
            ),
           Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: ExactAssetImage('assets/logo.png'),
                  width: 100,
                  height: 100,
                ),
                person.isEmpty ? loadingIndicator() : 
                Stack(
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width*.92,
                        height: MediaQuery.of(context).size.height*.3,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width*.92,
                          height: MediaQuery.of(context).size.height*.30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*.92,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                  child: CircleAvatar(
                                    radius: 55,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(person[0]['picture']['large']),      
                                    ),
                                  ),
                              ),
                              Text(
                                '${person[0]['name']['first']} ${person[0]['name']['last']}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 12,
                                  ),
                                  Text(
                                    ' ${person[0]['location']['city']}, ${person[0]['location']['country']}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 20,
                                endIndent: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                                child:  Text('I am a Car'),
                              ),
                              const Divider(
                                color: Colors.grey,
                                indent: 40,
                                endIndent: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.email_outlined,
                                    color: Colors.grey,
                                    size: 12,
                                  ),
                                  Text(
                                    ' ${person[0]['email']}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.phone_android,
                                    color: Colors.grey,
                                    size: 12,
                                  ),
                                  Text(
                                    ' ${person[0]['phone']}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                      ),
                    ),
                  ],
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