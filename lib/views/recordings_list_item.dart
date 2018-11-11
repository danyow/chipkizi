import 'package:chipkizi/models/recording.dart';
import 'package:flutter/material.dart';

typedef void OnError(Exception exception);

class RecordingsListItemView extends StatelessWidget {
  final Recording recording;
  RecordingsListItemView({this.recording});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(recording.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(recording.createdBy),
              ],
            ),
            leading: recording.imageUrl != null
                ? CircleAvatar(
                    backgroundImage: NetworkImage(recording.imageUrl),
                  )
                : Icon(Icons.account_circle, color: Colors.grey, size: 45.0),
            trailing: IconButton(
              icon: Icon(
                Icons.play_circle_filled,
                color: Colors.brown,
                size: 50.0,
              ),
              onPressed: () {},
            ),
            /*new FloatingActionButton(
                child: Icon(Icons.play_arrow), onPressed: () {})*/
//                ,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.brown,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: new Divider(
            color: Colors.brown,
          ),
        )
      ],
    );
  }
}
