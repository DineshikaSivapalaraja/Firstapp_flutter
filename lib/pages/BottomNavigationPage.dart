import 'package:flutter/material.dart';

/*class BottomNavigationPage extends StatelessWidget{
  const BottomNavigationPage({super.key});
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
          }, child: Icon(Icons.arrow_back)),
      ),
    );
  }
} */   //-> Stateless widget not suppporting
//let's try stateful widget
class BottomNavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    /*// // implement createstate */
    // throw UnimplementedError();
    return _BottomNavigationPageState();
  }
}
class _BottomNavigationPageState extends State<BottomNavigationPage> {
  /*get selectedIndex => null;
    get onItemTapped => null;*/

  int _selectedIndex = 0;

  //get onItemTapped => null;

  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back),
                    Text("Go back"),
                  ],),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pink,
          onTap: onItemTapped,
        ));
  }
}