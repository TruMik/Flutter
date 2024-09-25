import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.38,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const ExactAssetImage('assets/climb.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(const Color.fromARGB(255, 86, 132, 170).withOpacity(0.9), BlendMode.multiply),
                  )
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*.62,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 238, 238, 238)
                ),
              )
            ],
          ),
          Column(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width*.92,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius:  5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  ),
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.fromLTRB(24, 28, 0, 25),
                            child: TextButton(
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
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 22, 27, 25),
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 212, 212, 212), 
                                prefixIcon: Icon(Icons.person),
                                hintText: 'First Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 212, 212, 212), 
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Last Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 212, 212, 212), 
                                prefixIcon: Icon(Icons.mail),
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 212, 212, 212), 
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Username',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const Center(
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center ,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 212, 212, 212), 
                                prefixIcon: Icon(Icons.lock),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: const TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center ,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 212, 212, 212), 
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Confirm Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide.none
                                ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal:  
                          20, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child:  
                          const Text(
                              "SIGN UP",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          "Already have an Account?",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                      Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: TextButton(
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
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              ),
                          ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
                child: Text(
                          "Or Sign up with",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 32, 79, 139),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                      ),
                      child: 
                      const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 20,
                        ),
                          Text("Facebook"),
                        ],
                      )),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                    ),
                    child: const Row( // Use Row to arrange icon and text
                      mainAxisSize: MainAxisSize.min, // Ensure content fits button size
                      children: [
                        Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 5.0), // Add spacing between icon and text
                        Text("Twitter"),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}