import 'package:flutter/material.dart';
import 'package:jogo_do_bicho/components/bottomNavBar.dart';
import 'package:jogo_do_bicho/components/usersAdm.dart';

class appAdm extends StatefulWidget {
  appAdm({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _appAdmState createState() => _appAdmState();
}

class _appAdmState extends State<appAdm> {

  int currentIndex = 0;
  int _counter = 0;

  var _users = [ 
    UserItem(
      nome: "Micaias",
      tipo: "USUÀRIO",
      ultimaAposta: "Ultima aposta: hoje",
      saldo: "200.0",
      qtd: "114"
    ), 
    UserItem(
      nome: "Micaias",
      tipo: "USUÀRIO",
      ultimaAposta: "Ultima aposta: hoje",
      saldo: "200.0",
      qtd: "114"
    ),
    UserItem(
      nome: "Micaias",
      tipo: "USUÀRIO",
      ultimaAposta: "Ultima aposta: hoje",
      saldo: "200.0",
      qtd: "114"
    )
  ];

  void _incrementCounter() {
    print(_users);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
      ),
      backgroundColor: Colors.grey[900],
      body: UsersAdm(
        items: _users,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Usuários'),
              activeColor: Colors.redAccent
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Extracoes'),
            activeColor: Colors.redAccent,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Apostas'),
              activeColor: Colors.redAccent
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Config'),
              activeColor: Colors.redAccent
          ),
        ],
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: Colors.grey[800],
  );
}

Widget builderItem(context, index){
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Container(
      height: 70.0,
      decoration: myBoxDecoration(),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 8.0,bottom: 10.0, top: 10.0),
            child: Icon(
              Icons.assignment_ind,
              size: 50.0,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  //color: Colors.tealAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 6.0, 0.0, 1.0),
                  alignment: Alignment.topLeft,
                  child: Text('Micaías', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text('CAMBISTA', 
                    style: TextStyle(color: Colors.grey[400], fontSize: 10.0)
                  ),
                ),
                Container(
                  //color: Colors.redAccent,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 2.0),
                  alignment: Alignment.topLeft,
                  child: Text('Última aposta: Ontem', 
                    style: TextStyle(color: Colors.grey, fontSize: 13.0)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(40.0,2.0,0.0,0.0),
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: Icon(
                        Icons.attach_money,
                        size: 30.0,
                        color: Colors.yellowAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      height: 22.0,
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 2.0, 0.0),
                      alignment: Alignment.topLeft,
                      child: Text('100.00', style: TextStyle(color: Colors.yellowAccent, fontSize: 20.0)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      //color: Colors.blueAccent,
                      padding: EdgeInsets.fromLTRB(40.0,0.0,0.0,0.0),
                      child: Icon(
                        Icons.assessment,
                        size: 30.0,
                        color: Colors.greenAccent,
                      ),
                    ),
                    Container(
                      //color: Colors.cyanAccent,
                      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 0.0, 2.0),
                      alignment: Alignment.topLeft,
                      child: Text('14', style: TextStyle(color: Colors.greenAccent, fontSize: 20.0)),
                    ),
                  ],
                ),
              ],
            )
          ),  
        ],
      ),
    ),
  );
}