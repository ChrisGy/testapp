import 'package:flutter/material.dart';


class Journey {
  final journeyID;
  final bool hasCheckedIn;
  Journey(this.journeyID, this.hasCheckedIn);
}

class TrackJourney extends StatefulWidget {
  final Journey journey ;
  TrackJourney(this.journey);

  @override
  _TrackJourneyState createState() => _TrackJourneyState();
}

class _TrackJourneyState extends State<TrackJourney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(""),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/map.png"),
            Center(child: Icon(Icons.place)),
          ],
        ),
      ),
    );
  }
}
