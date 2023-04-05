import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.grey,
              Colors.grey,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
           const SizedBox(height: 80),
            // #signup, #welcome
            Padding(
                padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 40),),
                SizedBox(height: 10,),
                Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 20),)
              ],
            ),
            ),

            const SizedBox(height: 20,),
            
            Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          const SizedBox(height: 60,),
                          // #fullname, #email, #phone, #password
                          Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: const [
                                 BoxShadow(color: Color.fromRGBO(171, 171, 171, 0.7), blurRadius: 20, offset: Offset(0,10))
                               ],
                             ),
                            child: Column(
                              children: [

                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6),),)
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Fullname",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6),),)
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6),),)
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Phone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.6),),)
                                  ),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          const SizedBox(height: 40,),

                          // #signUp
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black54,
                            ),
                            child: const Center(
                              child: Text("SignUp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          const SizedBox(height: 30,),

                          // #signUp with SNS
                          const Text("SignUp with SNS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                          const SizedBox(height: 30,),

                          // #facebook, #google, #github
                          Row(
                            children: [

                              Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue,
                                    ),
                                    child: const Center(
                                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                   ),
                              ),

                              const SizedBox(width: 10,),

                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red,
                                  ),
                                  child: const Center(
                                    child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 10,),

                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black,
                                  ),
                                  child: const Center(
                                    child: Text("GitHub", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),

                            ],
                          ),  
                        ],
                      ),
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
