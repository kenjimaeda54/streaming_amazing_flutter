class VideosWithChannel {
  final String thumbVideo;
  final String thumbProfileChannel;
  final String titleVideo;
  final String publishedVideo;
  final String id;
  final String videoId;
  final String descriptionVideo;
  final String subscriberCountChannel;
  final String channelId;

  VideosWithChannel(
      {required this.channelId,
      required this.descriptionVideo,
      required this.id,
      required this.publishedVideo,
      required this.subscriberCountChannel,
      required this.thumbVideo,
      required this.thumbProfileChannel,
      required this.titleVideo,
      required this.videoId});
}
