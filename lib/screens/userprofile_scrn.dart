import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserProfileState();
    //
  }
}

class UserProfileState extends State<UserProfile>{
  @override
  Widget build(BuildContext context) {
    var widthDevice =MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
    print(widthDevice);
    print(heightDevice);

    return SafeArea(child: Scaffold(
        backgroundColor: Color.fromARGB(250, 244, 245, 249),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:
          IconButton(onPressed: (){},icon: Image.asset('assets/images/arrow.png'),),
        ),

        body: Column(
            children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration( color: Colors.white,
                  boxShadow: [
                  BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 3,
                    blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
    ),
    ],
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),

            height: heightDevice/2.77,
              width: widthDevice,
              child: Column(
                children: [
                  Expanded(
                    flex: 9,
                    child: Container(
                      margin: EdgeInsets.only(top: 5, bottom: 20,left: 5),
                      height: heightDevice/2.77,
                      width: widthDevice,
                      child: Row(

                              children: [
                                Flexible(
                                  flex: 1,
                                    child:
                                     Container(
                                       width: 60,
                                       height: 65,
                                       child: ClipRRect(
                                           borderRadius: BorderRadius.circular(10),
                                           child: Image.asset('assets/images/profile.png',fit: BoxFit.cover,),//Image(image:AssetImage('assets/images/profile.png'),),
                                       ),
                                     ),
                                ),
                                Expanded(
                                flex: 4,

                                child: Container(
                                  padding: EdgeInsets.only(left: 10,right: 10),
                                  height: 30,
                                  margin: EdgeInsets.only(top:35, bottom: 0),
                                  child: Text('Saadur Rahman', style: TextStyle(fontSize: 18.76),
                                  ),
                                ),
                                ),
                                Flexible(
                                flex: 1,
                                child: IconButton(onPressed: (){},icon: Image.asset('assets/images/edit.png'),),
                              ),
                            ],

                        ),
                    ),
                  ),

                  Expanded(
                    flex: 4,
                    child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                              height: 40,
                              width: 45,
                              child: Image.asset('assets/images/email.png',fit: BoxFit.cover,),),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container
                            (
                            margin: EdgeInsets.only(left: 15),
                            child: Text('saad123@gmail.com', style: TextStyle(fontSize: 17),),),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child:Container(
                            height: 40,
                            width: 45,
                          child: Image.asset('assets/images/hospital.png'),
                        ),),
                        Expanded(
                          flex: 9,
                          child:Container(
                            margin: EdgeInsets.only(left: 10),
                          child: Text('Khyber Teaching Hospital Peshawar',style: TextStyle(fontSize: 17),),
                        ),),
                      ],
                    ),
                  ),),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child:Container(
                              height: 40,
                              width: 45,
                            child: Image.asset('assets/images/location.png'),
                          ),),
                          Expanded(
                            flex: 9,
                            child:Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('House#148, Sector N2, Phase-4 Hayatabad, Peshawar',style: TextStyle(fontSize: 17),),
                          ),),
                        ],
                      ),
                    ),),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child:Container(
                              height: 40,
                              width: 45,
                            child: Image.asset("assets/images/unemployment.png"),
                          ),),
                          Expanded(
                            flex: 9,
                            child:Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('Unemployed',style: TextStyle(fontSize: 17),),
                          ),),
                        ],
                      ),
                    ),),

                ],
              ),

            ),
            Container(
              height: heightDevice/33.73,
              width: widthDevice,
              margin: EdgeInsets.only(left: 20),
              child: Text('Qualification',style: TextStyle(fontSize: 18.73),),


            ),
            Container(
              height: heightDevice/10.81,
              width: widthDevice/1.11,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex:1,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Image.asset('assets/images/dot.png'),
                    ),
                  ),
                  Expanded(
                    flex:4,
                    child: Container(
                      child: Text('MBBS General Surgery',style: TextStyle(fontSize: 18.76),),
                    ),
                  ),
                  Flexible(
                    flex:1,
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(right: 0),
                      child: IconButton(onPressed: (){},icon: Image.asset('assets/images/plus.png'),
                    ),
                  ),
                  ),
                ],
              ),
            ),
              Container(
                height: heightDevice/33.73,
                width: widthDevice,
                margin: EdgeInsets.only(left: 20,top: 20),
                child: Text('Experience',style: TextStyle(fontSize: 18.73),),


              ),
              Container(
                height: heightDevice/10.81,
                width: widthDevice/1.11,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex:1,
                      child: Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: Image.asset('assets/images/dot.png'),
                      ),
                    ),
                    Expanded(
                      flex:4,
                      child: Container(
                        child: Text('Add Experience here',style: TextStyle(fontSize: 18.76,color: Colors.grey),),
                      ),
                    ),
                    Flexible(
                      flex:1,
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        margin: EdgeInsets.only(right: 0),
                        child: IconButton(onPressed: (){},icon: Image.asset('assets/images/plus.png'),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              ],
    ),

    )
    );

  }

}
