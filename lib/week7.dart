import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

    var _sum = 0;

    var RedCount = 0;
    var BlueCount = 0;


    bool player = false;
    bool playerTwo = true;

    ButtonStyle styleRed = ElevatedButton.styleFrom(
      primary: Colors.redAccent.shade700,
      textStyle: TextStyle(fontSize: 40.0,),
    );

    ButtonStyle styleBlue = ElevatedButton.styleFrom(
      primary: Colors.blueAccent.shade700,
      textStyle: TextStyle(fontSize: 40.0,),

    );




    _CountOneRed() {
      setState(() {
        player = !player;
        playerTwo = !playerTwo;
        _sum++;
        RedCount++;

      });
    }
    _CountTwoRed() {
      setState(() {
        player = !player;
        playerTwo = !playerTwo;
        _sum += 2;
        RedCount += 2;
      });
    }
    _CountThreeRed() {
      setState(() {
        player = !player;
        playerTwo = !playerTwo;
        _sum += 3;
        RedCount +=3;
      });
    }

    _CountOneBlue() {
      setState(() {
        playerTwo = !playerTwo;
        player = !player;
        _sum++;
        BlueCount++;
      });
    }
    _CountTwoBlue() {
      setState(() {
        playerTwo = !playerTwo;
        player = !player;
        _sum += 2;
        BlueCount += 2;
      });
    }
    _CountThreeBlue() {
      setState(() {
        playerTwo = !playerTwo;
        player = !player;
        _sum += 3;
        BlueCount +=3;
      });
    }

    _Winner(){
      if(_sum < 20){
        return true;
      }else{
        return false;
      }
    }

    _NewGame(){
      setState(() {
        _sum = 0;
        BlueCount = 0;
        RedCount = 0;
      });
    }

    _NameWinner(){
      if(player == false ){
        return true;
      }else{
        return false;
      }
    }



    @override
    Widget build(BuildContext context) {
      /*Icon icon;
      if (player == false) {
        icon = new Icon(
          Icons.star,
          color: Colors.tealAccent,
        );
      }
      else {
        icon = new Icon(
          Icons.star_border,
          color: Colors.tealAccent,
        );

      }*/
      List<Widget> Star = [];
      for (var i = 0; i < 20; i++) {
          Star.add(Icon(
          Icons.star_border,
          color: Colors.black,
        ));
      }

      return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: const DecorationImage(
                image: const AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
                child: _Winner() ? Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // ส่วนฝั่งสีแดง
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: player ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: styleRed,
                                onPressed:_CountThreeRed ,
                                child: Text('    3    '),
                              ),
                              ElevatedButton(
                                style: styleRed,
                                onPressed: _CountTwoRed,
                                child: Text('    2    '),
                              ),
                              ElevatedButton(
                                style: styleRed,
                                onPressed:_CountOneRed,
                                child: Text('    1    '),
                              ),
                            ],
                          )
                              :
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: styleRed,
                                onPressed: null,
                                child: Text('    3    '),
                              ),
                              ElevatedButton(
                                style: styleRed,
                                onPressed: null,
                                child: Text('    2    '),
                              ),
                              ElevatedButton(
                                style: styleRed,
                                onPressed: null,
                                child: Text('    1    '),
                              ),
                            ],
                          )
                      ),
                      // ตรงกลาง
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: Star,

                              ),
                            ),


                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  player ? Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 100.0,
                                    color: Colors.purple.shade900 ,
                                  )
                                      :
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 100.0,
                                    color: Colors.black12,
                                  ),
                                  Text(
                                    '$_sum',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 200.0,
                                      color: Colors.purple.shade900,
                                    ),

                                  ),
                                  playerTwo ? Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 100.0,
                                    color: Colors.purple.shade900,
                                  )
                                      :
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 100.0,
                                    color: Colors.black12,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ส่วนฝั่งสีน้ำเงิน
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: playerTwo ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: _CountOneBlue,
                                child: Text('    1    '),
                              ),
                              ElevatedButton(
                                style: styleBlue,
                                onPressed:_CountTwoBlue,
                                child: Text('    2    '),
                              ),
                              ElevatedButton(
                                style: styleBlue,
                                onPressed:_CountThreeBlue,
                                child: Text('    3    '),
                              ),
                            ],
                          )
                              :
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: null,
                                child: Text('    1    '),
                              ),
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: null,
                                child: Text('    2    '),
                              ),
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: null,
                                child: Text('    3    '),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                )
                    :
                // new game
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // ส่วนข้างบน
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: styleRed,
                                onPressed: null,
                                child: Text('    3    '),
                              ),
                              ElevatedButton(
                                style: styleRed,
                                onPressed: null,
                                child: Text('    2    '),
                              ),
                              ElevatedButton(
                                style: styleRed,
                                onPressed: null,
                                child: Text('    1    '),
                              ),
                            ],
                          )
                      ),
                      // ตรงกลาง
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                child: _NameWinner() ? Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'BLUE \n WIN!!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 100.0,
                                        color: Colors.purple.shade900,
                                      ),
                                    ),
                                    OutlinedButton(
                                      onPressed: _NewGame,
                                      child: Text(
                                        'NEW GAME',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                    ),
                                  ],
                                )
                                    :
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      'RED \n WIN!!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 100.0,
                                        color: Colors.purple.shade900,
                                      ),
                                    ),
                                    OutlinedButton(
                                      onPressed: _NewGame,
                                      child: Text(
                                        'NEW GAME',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                      // ส่วนข้างล่าง
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: null,
                                child: Text('    1    '),
                              ),
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: null,
                                child: Text('    2    '),
                              ),
                              ElevatedButton(
                                style: styleBlue,
                                onPressed: null,
                                child: Text('    3    '),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                )
            )
        ),
      );
    }
}
