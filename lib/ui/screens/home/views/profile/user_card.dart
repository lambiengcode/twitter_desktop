import 'package:flutter/material.dart';
import 'package:twitter_desktop/ui/components/card.dart';
import 'package:twitter_desktop/ui/components/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
    @required double gap,
  })  : _gap = gap,
        super(key: key);

  final double _gap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(_gap),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UserAvatar(
                userAvatar:
                    'https://avatars.githubusercontent.com/u/60530946?s=460&u=e342f079ed3571122e21b42eedd0ae251a9d91ce&v=4',
                width: 75,
                height: 75,
              ),
              SizedBox(height: 15),
              Text(
                'lambiengcode',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '@lambiengcode',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.room,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Text('Ho Chi Minh, Viet Nam')
                ],
              ),
              SizedBox(height: 35),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Tweets',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text('212'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text('282'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text('369'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
