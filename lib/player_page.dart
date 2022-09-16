import 'package:flutter/material.dart';

class PlayData {
  final String title;
  final String artist;
  final String uri;

  const PlayData(this.title, this.artist, this.uri);
}

class PlayerPage extends StatefulWidget {
  PlayData playData;

  PlayerPage({Key? key, required this.playData}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  var playing = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 400,
          child: Image.asset(
            'assets/images/widget_placeholder.png',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              widget.playData.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Text(
              widget.playData.artist,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              debugPrint('onTap');
            },
            child: Center(
              child: Container(
                width: 60,
                height: 60,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.blueAccent.withOpacity(0.8), BlendMode.color),
                  child: Image.asset(
                    playing
                        ? 'assets/images/ic_pause.png'
                        : 'assets/images/ic_play.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
