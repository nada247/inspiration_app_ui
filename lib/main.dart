import 'package:flutter/material.dart';

void main () => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.black87,)),
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding:EdgeInsets.all(20.0) ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: Colors.white ,),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Find your" , style: TextStyle(color: Colors.black87 , fontSize: 25)),
                    SizedBox( height: 5,),
                    Text("Inspiration" , style: TextStyle(color: Colors.black , fontSize: 40 ,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Container(
                      padding:EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search , color: Colors.black87,),
                          hintText: "Search you're looking for",
                          hintStyle: TextStyle(color: Colors.grey , fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox( height: 20,),
                  ],
                ),
              ),
              SizedBox( height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Promo Today" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                    SizedBox( height: 15,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/images/three.png'),
                          promoCard('assets/images/two.png'),
                          promoCard('assets/images/one.jpeg'),
                          promoCard('assets/images/four.jpg'),
                        ],
                      ),
                    ),
                    SizedBox( height: 20,),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/two.png'))
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: [0.3 , 0.9],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.2),
                                ])
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text("Best Design" , style: TextStyle(color: Colors.white , fontSize: 20),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
  Widget promoCard (image){
    return AspectRatio(
      aspectRatio: 2.62 / 3 ,   // العرض 2.62 و الطول 3
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image))
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.1 , 0.9],
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1),
                  ])
          ),
        ),
      ),
    );
  }
}