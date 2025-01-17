import 'package:yt/yt.dart';

void main() async {
  var yt = Yt.withOAuth(OAuthCredentials.fromYaml('example/youtube.yaml'));

  //var yt = Yt.withKey('[youtube api key]');

  var channels = await yt.channels;

  var channelsResponse = await channels.list(
      id: 'UCwXdFgeE9KYzlDdR7TG9cMw',
      part: 'snippet,contentDetails'); //the Flutter channel

  channelsResponse.items.forEach((channels) async {
    print(
        'title: ${channels.snippet?.title}, ${channels.snippet?.thumbnails?.thumbnailsDefault.url}, relatedPlaylists: ${channels.contentDetails?.relatedPlaylists.uploads}');
  });
}
