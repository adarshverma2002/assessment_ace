import 'package:assessment_ace/screens/form.dart';
import 'package:flutter/material.dart';

class services extends StatelessWidget {
  const services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service List"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Ink.image(
                      image: AssetImage('assets/digimarket.png'),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => formFields()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          // padding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Ink.image(
                      image: AssetImage('assets/graphicdes.png'),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => formFields()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          // padding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 100),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Ink.image(
                      image: AssetImage('assets/mobileapp.png'),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => formFields()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          // padding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 120),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 2),
                        borderRadius: BorderRadius.circular(8)),
                    child: Ink.image(
                      image: AssetImage('assets/webdev.png'),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => formFields()));
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          // padding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
