import 'package:fashion_app/model/fashion.dart';
import 'package:fashion_app/ui/detail_view.dart';
import 'package:flutter/material.dart';


class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    //fetch the fashion list data from the model
    final List<Fashion> _mainFashionList = Fashion.fashionList;
    //filter the list to contain only favorite items
    final List<Fashion> _fashionList = _mainFashionList
    .where((element) => element.isFavorite == true)
    .toList();

    bool toggleIsFavorite(bool isFavorite){
      return !isFavorite;
    }
    return Padding(
        padding: EdgeInsets.all(16),
        child: Container(
        child: _fashionList.length == 0 ? Center(
          child: Text('you have no favorites'),
        ) : ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: _fashionList.length,
            itemBuilder: (context, index){
              return InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailView(fashionId: index)));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(_fashionList[index].url),
                      ),
                      Positioned(
                          bottom: 40,
                          left: 10,
                          child: Text(
                            _fashionList[index].name,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.w200,
                            ),
                          )),
                      Positioned(
                          bottom: 20,
                          left: 10,
                          child: Text(
                            _fashionList[index].location,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Positioned(
                          bottom: 20,
                          right: 10,
                          child: IconButton(
                            onPressed: (){
                              setState((){
                                bool isFavorite = toggleIsFavorite(_fashionList[index].isFavorite);
                                _fashionList[index].isFavorite == isFavorite;
                              });
                            },
                            icon: _fashionList[index].isFavorite == true ?
                            Icon(
                              Icons.favorite, color: Colors.green,
                            ) : Icon(
                              Icons.favorite_border, color: Colors.white,
                            )
                          ))
                    ],
                  ),
                ),
              );
            })
    ),
    );
  }
}
