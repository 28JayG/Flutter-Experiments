import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String age;
  final String height;
  final String hairColor;
  final String name;

  const CustomListTile(
      {Key key,
      this.imageUrl,
      this.age,
      this.height,
      this.hairColor,
      this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextAlign textAlign = TextAlign.left;

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name: $name',
                textAlign: textAlign,
              ),
              Text(
                'Age: $age',
                textAlign: textAlign,
              ),
              Text(
                'Height: $height',
                textAlign: textAlign,
              ),
              Text(
                'Hair Color: $hairColor',
                textAlign: textAlign,
              ),
            ],
          )
        ],
      ),
    );
  }
}
