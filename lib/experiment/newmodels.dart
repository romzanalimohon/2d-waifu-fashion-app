import 'package:fashion_app/experiment/character_detail_list.dart';
import 'package:fashion_app/experiment/extra_poster.dart';
import 'package:flutter/material.dart';

class NewModel extends StatefulWidget {
  const NewModel({Key? key}) : super(key: key);

  @override
  State<NewModel> createState() => _NewModelState();
}

class _NewModelState extends State<NewModel> {
  @override
  Widget build(BuildContext context) {
    List<characterDetails> _charDetails = characterDetails.charList;
    return Scaffold(
      body: ListView.builder(
          itemCount: _charDetails.length,
          itemBuilder: (context, index){
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtraPoster(posterId: index,)));
                      });
                    },
                    child: Card(
                      color: Colors.black45,
                      child: Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 8, left: 54),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(_charDetails[index].name, style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                  Text('Type: '+_charDetails[index].type, style: sampleStyle(),)
                                ],
                              ),),
                            Text('Details: '+_charDetails[index].details, style: sampleStyle(),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(_charDetails[index].img1),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    )),
                SizedBox(height: 8,)
              ],
            );
          }),
    );
  }
}

TextStyle sampleStyle(){
  return TextStyle(
    fontSize: 15,
    color: Colors.grey
  );
}