import 'package:flutter/material.dart';
import 'package:testapp/TrackJourney.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   bool hasCheckedIn = false;
  @override
  Widget build(BuildContext context) {
    Widget checkedInMsg (){
      Stream<bool> hasCheckedInStream;


      return StreamBuilder<bool>(
        initialData: false,
        builder: (context, snapshot){
          if(!snapshot.hasData) return Text("Not Checked In");
              else return Text("Checked In");
        },
      );
    }
    Widget checkInbtn (){
      return TextButton(child: Text("Check In"),
      onPressed: ()=> setState(()=>this.hasCheckedIn = !this.hasCheckedIn));
    }


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Golane Home"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: <Widget>[

            checkInbtn(),
            checkedInMsg(),
            goToTrackScreen(),

          ],
        ),
      ),
    );
  }

  goToTrackScreen() {
    return TextButton(
      child: Text("Track current Journey"), onPressed: ()=> Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TrackJourney(Journey("1",this.hasCheckedIn)),
        )),
    );
  }


}
