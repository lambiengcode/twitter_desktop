import 'package:twitter_desktop/models/retweet.dart';
import 'package:twitter_desktop/models/tweet.dart';
import 'package:twitter_desktop/models/user.dart';

class TweetRepository {
  final _users = [
    User(
      fullname: 'Material',
      name: 'material',
      image:
          'https://images.unsplash.com/photo-1567892320421-1c657571ea4a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmlraW5pfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      isVerified: true,
    ),
    User(
      fullname: 'LitleBig',
      name: 'litle',
      image:
          'https://images.unsplash.com/photo-1539697808415-0873e6eb16dd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHNleHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    User(
      fullname: 'lambiengcode',
      name: 'lambiengcode',
      image:
          'https://avatars.githubusercontent.com/u/60530946?s=460&u=e342f079ed3571122e21b42eedd0ae251a9d91ce&v=4',
    ),
  ];

  final List<Tweet> _tweets = [];

  init() async {
    final _tweet1 = Tweet(
      id: 1,
      user: _users.firstWhere((user) => user.name == 'lambiengcode'),
      comments: 3,
      likes: 49,
      retweets: 7,
      content: '''Facebook Redesign built with @FlutterDev

This weekend was unforgettable! Thanks to my friends that keeps making Flutter awesome!!!

@Zfinix1 @_iamEtornam @lesliearkorful @Flutter_Africa @timsneath @mallenkb @rodydavis @AngolaFlutter @flutterango''',
      image:
          'https://github.com/e200/my-flutter-challenges/raw/master/twitter_desktop/resources/gif/facebook_screenshot.gif',
      time: '22 min',
    );

    _tweets.add(_tweet1);

    _tweets.add(
      Retweet(
        user: _users.firstWhere((user) => user.name == 'litle'),
        comments: 2,
        likes: 3,
        retweets: 0,
        content: 'Its lookin good bro!',
        time: '13 mins',
        tweet: _tweet1,
      ),
    );

    final _tweet2 = Tweet(
      id: 2,
      user: _users.firstWhere((user) => user.name == 'material'),
      comments: 19,
      likes: 67,
      retweets: 4,
      content:
          'Hi, I\'m a Mobile App Developer...Let\'s follow me on github, my github is github.com/lambiengcode',
      time: '7 mins',
    );

    _tweets.add(_tweet2);
  }

  Future<List<Tweet>> fetch() async {
    await Future.delayed(Duration(seconds: 2));

    return _tweets.reversed.toList();
  }
}
