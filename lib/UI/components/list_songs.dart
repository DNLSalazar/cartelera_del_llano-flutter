import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListSongs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, _) => Divider(
        color: Theme.of(context).primaryColor,
        height: 15,
        thickness: 0.5,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        TextStyle textStyleSubInformation =
            TextStyle(color: Colors.black38, fontSize: 13);
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nombre de cancion $index',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Nombre del artista cancion $index',
                style: textStyleSubInformation,
              ),
              Text(
                'Nombre del album cancion $index',
                style: textStyleSubInformation,
              ),
              Text(
                'Fecha de lanzamiento cancion $index',
                style: textStyleSubInformation,
              ),
            ],
          ),
          leading: ConstrainedBox(
            constraints: BoxConstraints(minWidth: 36, maxWidth: 60),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        '$index',
                        style: TextStyle(
                          fontSize: 30,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Icon(Icons.person)),
                ],
              ),
            ),
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                splashRadius: 20.0,
                alignment: Alignment.center,
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
                iconSize: 17,
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
              ),
              IconButton(
                splashRadius: 20.0,
                alignment: Alignment.center,
                icon: Icon(Icons.star),
                onPressed: () {},
                iconSize: 17,
                padding: EdgeInsets.all(5),
                constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
              ),
            ],
          ),
        );
      },
    );
  }
}
