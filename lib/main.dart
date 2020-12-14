import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Color> clr = [Color(0xff8ab5dd), Color(0xff94d3da ), Color(0xfff7d2b8  ),  Color(0xfff5bc77   ),   ];
  List<String> title = ["648" , "6" , "1080" , '4.9'];
  List<String> subtitle = ["Patients" , "Years Exp" , "Surgery" ,"Rating"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
           backgroundColor: Color(0xfff2c6a9),
            body: SingleChildScrollView(
                child: SafeArea(
                    child: Container(
                        child: Column(children: [
                          Container(
                            padding: EdgeInsets.only(left: 20 ,right: 15 , top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.arrow_back_ios ,  size:25 ,color: Colors.white,) ,
                                Icon(Icons.menu_open , size: 25, color: Colors.white,)
                              ],
                            ),
                          ),
              Container(
                height: 400,

               child: Image.asset("img/doctor.png"),
              ),
              Container(
                width: double.infinity,
                height: 500,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 100, left: 10, right: 10),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Appointment",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_rounded,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "August",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [Text("Sun"), Text("2")],
                              ),
                              Column(
                                children: [Text("mon"), Text("3")],
                              ),
                              Column(
                                children: [Text("tue"), Text("4")],
                              ),
                              Container(
                                height: 90,
                                width: 50,
                                padding:
                                    EdgeInsets.only(top: 20, left: 5, right: 5),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(60)),
                                child: Column(
                                  children: [
                                    Text(
                                      "web",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: [Text("Fri"), Text("6")],
                              ),
                              Column(
                                children: [Text("sat"), Text("7")],
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("About" , style: TextStyle(
                                fontWeight: FontWeight.w800,
                              ),),
                              Text("Call Now" , style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,color: Colors.green
                              ),)
                            ],
                          ),
                          SizedBox(height: 20,),

                          Text("Doctors that work within a community They are the frontline and first point of contact in a patient's health care. "
                          ,style: TextStyle(fontWeight: FontWeight.w300),),
                          SizedBox(height: 15,),

                          Container(
                            height: 60,


                            child: ListView.builder(itemCount: clr.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context , index){
                              return AboutListClass(clr: clr[index],
                              title: title[index],
                              subtitle: subtitle[index],);
                            }),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Fee: 1500\-" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                SizedBox(width: 10,),
                                RaisedButton(onPressed: (){

                                },textColor: Colors.white,
                                  elevation: 0,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)
                                 ),
                                  color: Color(0xffaadbe2) ,
                                child: Text("Appointment"),)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff94d3da),
                              borderRadius: BorderRadius.circular(50)
                            ),
                          )

                        ],
                      ),

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                    ),
                    Positioned(
                      top: -50,
                      left: 40,
                      child: Container(
                        padding: EdgeInsets.all(18),
                        width: 300,
                        height: 110,
                        child: Column(
                          children: [
                            Text(
                              "Dr jane Foster",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            SizedBox(height: 5,),

                          Text(
                                "Senior Cardiologist and Surgeon",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10),
                              ),
                            SizedBox(height: 5,),
                            Text(
                                "United State medical college and hospital",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10),
                              ),

                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff8eb4db),
                            boxShadow: [
                              BoxShadow(
                                color:  Color(0xff8eb4db),
                                offset: Offset(1,1),
                                spreadRadius: 1,
                                blurRadius: 5
                              )
                            ],
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                  ],
                ),
              ),
            ]))))));
  }
}

class AboutListClass extends StatefulWidget {
  AboutListClass({this.clr , this.subtitle, this.title });
  final Color clr ;
  final String title ;
  final String subtitle;
  @override
  _AboutListClassState createState() => _AboutListClassState();
}

class _AboutListClassState extends State<AboutListClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5),
          width: 100,
          child: Column(
            children: [
              Text(widget.title , style: TextStyle(color: Colors.white),),
              Text(widget.subtitle , style: TextStyle(color: Colors.white),)
            ],
          ),
          decoration: BoxDecoration(
            color: widget.clr,
            borderRadius: BorderRadius.circular(10),

          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}

