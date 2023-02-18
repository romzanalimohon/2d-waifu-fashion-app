import 'package:fashion_app/experiment/character_detail_list.dart';
import 'package:flutter/material.dart';

class ExtraPoster extends StatefulWidget {

  final int posterId;

  const ExtraPoster({super.key, required this.posterId});

  @override
  State<ExtraPoster> createState() => _ExtraPosterState();
}

class _ExtraPosterState extends State<ExtraPoster> {
  @override
  Widget build(BuildContext context) {
    List<characterDetails> _characterPoster = characterDetails.charList;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(_characterPoster[widget.posterId].img1),
                ),
              ),
              Container(

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(_characterPoster[widget.posterId].img11),
                ),
              ),
              Container(

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(_characterPoster[widget.posterId].img12),
                ),
              ),
              Container(

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(_characterPoster[widget.posterId].img13),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
