import 'package:flutter/material.dart';

import 'main.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _imageSection(),
            _headerSection(),
            _NavSection(),
            _bodySection(),
          ],
        ),
      ),
    );
  }

  Widget _bodySection() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(metro),
    );
  }

  Widget _NavSection() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call, color: Colors.blue),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'CALL',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.near_me, color: Colors.blue),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'ROUTE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.share, color: Colors.blue),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'SHARE',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _headerSection() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Metro Rail',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Dhaka, Bangladesh',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(
            '9.5',
          )
        ],
      ),
    );
  }

  Widget _imageSection() {
    return Stack(
      clipBehavior:Clip.none,
      children: [
        Image.asset(
          'asset/amz.jpg',
          fit: BoxFit.fill,
        ),
        const Positioned(
            bottom: 150,
            right: 10,
            left: 10,
            child: Text(
              'WELCOME TO AMZ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18,
              ),
            )),
        Positioned(
          right: 16,
          bottom: -20,//position overflowed by the fav button
          left: 16,
          child: Center(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.yellow,
                  size: 30,
                )),
          ),
        )
      ],
    );
  }
}