// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/neo_box.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 25),
              //back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeoBox(
                      child: Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                  Text('P L A Y L I S T'),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeoBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              //cover art, artist name
              NeoBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/backgrd2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ramin Djawadi',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(height: 6),
                              Text(
                                'HBO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              //start time, shuffle button, repeat button, end time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0:45'),
                  Icon(Icons.shuffle_outlined),
                  Icon(Icons.repeat),
                  Text('3:22'),
                ],
              ),
              SizedBox(height: 30),
              //linear bar
              NeoBox(
                child: LinearPercentIndicator(
                  barRadius: Radius.circular(8),
                  progressColor: Colors.grey[600],
                  backgroundColor: Color.fromARGB(41, 0, 0, 0),
                  lineHeight: 8,
                  percent: 0.2,
                ),
              ),
              //previous song, pause/play button, next song
              SizedBox(height: 30),
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: NeoBox(
                        child: Icon(
                          Icons.skip_previous_rounded,
                          size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: NeoBox(
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeoBox(
                        child: Icon(
                          Icons.skip_next_rounded,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
