import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  void showToast(String message) {
    Fluttertoast.showToast(
      msg: "스탬프에 등록되었습니다.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Color(0xfff59a3b),
      textColor: Colors.white,
      fontSize: 13.0
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoo App',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Zoo App',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xfff59a3b),
          toolbarHeight: 70,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          iconTheme: IconThemeData(color: Colors.white),
          bottom: PreferredSize(
            child: Container(
              color: Color(0xff744700),
              height: 6.0,
            ),
            preferredSize: Size.fromHeight(6.0),
          ),
        ),
        
        body: Container(
          color: Color(0xffF1c232),
          padding: EdgeInsets.all(30),
          child: Container( 
            margin: EdgeInsets.only(bottom: 70),
            decoration: BoxDecoration(
              color: Color(0xffbcb08e),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Color(0xffbcb08e), width: 10),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 60),
              decoration: BoxDecoration(
                color: Color(0xffdad5c5),
                borderRadius: BorderRadius.circular(30), 
              ),
              child: ListView(
                padding: EdgeInsets.all(25),
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:Image.asset(
                      'images/photo1.jpg',
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff3f6f4),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xffbcb08e), width: 1),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '기린은 자연 상태에서는 사하라사막 이남의 대부분의 아프리카 대륙에 분포하며, 대초원과 훤하게 트인 관목지역에 무리를 지어 살고, 주로 아카시아나무의 잎을 먹으며, 되새김질을 한다. 물을 많이 먹지만, 낙타와 같이 물 없이도 오래 견딜 수 있다고 한다. 걸음걸이는 걸음나비가 길어서 빠르며, 빨리 달릴 때에는 시속 48㎞에 달한다. 그리고 헤엄을 전혀 못한다고 한다.기린은 세상에서 가장 혈압이 높은 동물인데 이것은 목이 매우 긴 데 원인이 있다. 심장이 3∼3.5m나 되는 경동맥을 통해 뇌에 까지 혈액을 밀어 올리기 위해서는 큰 힘을 필요로 한다. 심장 자체는 길이 60㎝ 이상, 벽의 두께 약 7.5㎝, 무게 약 11㎏이나 된다. 심장의 힘이 매우 크리라는 것을 알 수 있다. 뇌의 기부에 원더네트(wonder net)라는 구조가 있어서 이것이 기린이 머리를 숙일 때 뇌의 혈압을 조절하여 뇌의 혈관이 터지는 것을 막는다.',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1.0,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
