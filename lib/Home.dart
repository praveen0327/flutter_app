import 'package:flutter/material.dart';

import 'CardItems.dart';
import 'FirebaseAuth.dart';
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
     List<CardItem> items = [
       CardItem(
         name:"Sample Name",
         time: "Within 45mins",
         context: "Sample Context",
         rating: "3.2(76)",
         image: "assets/pic.png"
       ),
       CardItem(
           name:"Sample Name",
           time: "Within 45mins",
           context: "Sample Context",
           rating: "3.2(76)",
           image: "assets/pic.png"
       )
     ];



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child: SafeArea(
     
            child: Container (
              width: size.width,
              height: size.height,


            child: ListView(


    children: [
      SizedBox(
        height: 20,
      ),
         Container(
           padding: EdgeInsets.all(15),
           child: TextField(
               style: TextStyle(fontSize: 20),
               decoration: InputDecoration(
                 filled: true,
                 fillColor: Color(0xF5F5F5F5),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(4.0),
                   borderSide: BorderSide.none
                 ),
                 hintText: "Search",

                 suffixIcon: Icon(Icons.mic),
                 prefixIcon: Icon(Icons.search),

               ),

           ),
         ),
        SizedBox(
            height: 5,
        ),
        Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
               Container(
                 width: 150,
                 height: 250,
                 margin: EdgeInsets.all(5),
                 child: Column(
                children: [
                  Stack(
                 children: <Widget>[
                   Container(
                      width: 150,
                      height: 200,
                      child: Image(
                        image: AssetImage('assets/pic.png'),
                      ),
                    ),
                   Container(
                       alignment: Alignment.center,
                       width: 50,
                       height: 25,
                       margin: EdgeInsets.only(top: 20,left: 10),
                       color: Colors.yellow ,
                       child: Text(
                         'new',
                         style: TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold,
                             fontSize: 16.0),
                       )),
                 ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text(
                        "AED 150.00",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        height: 16.0,
                        width: 16.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage('assets/shape.png'),
                              fit: BoxFit.fill),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Wooden bedside table featuring a raised design",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12
                    ),
                  )

                ],
                 ),
               ),
                Container(
                  width: 150,
                  height: 250,
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        child: Image(
                          image: AssetImage('assets/image-frame.png'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Text(
                            "AED 150.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            height: 16.0,
                            width: 16.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/shape1.png'),
                                  fit: BoxFit.fill),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Chair made of ash wood sourced from responsib...",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12
                        ),
                      )

                    ],
                  ),
                ),
              ],
            ),
        ),
            SizedBox(
            height: 20,
        ),
        Container(
            height: 200,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildCard(items[index]),
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemCount: 2),
        ),
        SizedBox(
            height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
              "categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 250,

          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                height: 130,
                child: Image(
                  image: AssetImage('assets/category.png'),
                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(
                height: 4,
              ),
              Text(
                  "Mon, Apr 18 · 21:00 Pm ",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14
                  )
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                  "Event Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
              ),
              SizedBox(
                height: 4,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  Container(
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                          AssetImage('assets/map-pin.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Text(
                    " Silicon Oasis, Dubai",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,


                children: [

                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                      height: 16.0,
                      width: 16.0,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/shape1.png'),
                            fit: BoxFit.fill),
                        shape: BoxShape.rectangle,

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 16.0,
                    width: 16.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                          AssetImage('assets/share-2.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 450,

        padding: EdgeInsets.only(left: 10,right: 10),
        
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFCAC4D0),
          ),

          child: Column(

            children: [

              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[ Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(

                          height: 40,
                          width: 40,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFFE6E1E5),
                            ),
                    child: Center(child: Text("A",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Title Header",
                        style: TextStyle(
                            color: Color(0xFFE6E1E5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )
                            ),
                            Text("Subhead",
                                style: TextStyle(
                                    color: Color(0xFFE6E1E5),
                                    fontSize: 14
                                ))
                          ],
                        )

                      ],

                    ),
                  ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Container(
                        height: 16.0,
                        width: 16.0,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage('assets/hexagon.png'),
                              fit: BoxFit.fill),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    )
                  ]
                ),
              ),

              Container(
                height: 130,
              width: size.width,
                child: Image(
                  image: AssetImage('assets/media.png'),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                width: size.width,
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Title Header",
                        style: TextStyle(
                            color: Color(0xFFE6E1E5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text("Subhead",
                        style: TextStyle(
                            color: Color(0xFFE6E1E5),
                            fontSize: 14
                        )),
                    SizedBox(
                      height: 30,
                    ),

                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  style: TextStyle(
                  color: Color(0xFFE6E1E5),
                  fontSize: 14,

      )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all( 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[ OutlinedButton(

                          onPressed: () {},
                          child: Text('Action'),
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                              primary: Color(0xFFE6E1E5)
                          ),
                        ),
                          Container(
                            padding: EdgeInsets.only( left: 20),
                            child: ElevatedButton(

                              onPressed: () {
                                FirebaseGoogleAuth().signOut();
                              },
                              child: Text('LogOut'),
                              style: ElevatedButton.styleFrom(shape: StadiumBorder(),
                                  primary: Color(0xFFE6E1E5),
                                  onPrimary: Colors.black
                              ),

                            ),
                          ),

                        ]
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
              SizedBox(
              height: 50,
            ),


    ],
            )
            ),
          
        ),
      )
    );


  }

     Widget buildCard(CardItem item) => Container(
       width: 300,
       padding: EdgeInsets.only(left: 10),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(

             height: 130,
             child: Image(
               image: AssetImage('assets/scrollpic.png'),
               fit: BoxFit.fill,
             ),
           ),
           SizedBox(
             height: 4,
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,

             children: [
               Text(
                 item.name,
                 style: TextStyle(
                     color: Colors.black,
                     fontSize: 16,
                     fontWeight: FontWeight.bold
                 ),
               ),
               Text(
                 item.time,
                 style: TextStyle(
                     color: Colors.black,
                     fontSize: 14
                 ),
               ),
             ],
           ),
           SizedBox(
             height: 4,
           ),
           Text(
               item.context,
               style: TextStyle(
                   color: Colors.black54,
                   fontSize: 14
               )
           ),
           SizedBox(
             height: 4,
           ),
           Text(
               item.rating,
               style: TextStyle(
                   color: Colors.black,
                   fontSize: 14
               )
           ),
         ],
       ),
     );
}
