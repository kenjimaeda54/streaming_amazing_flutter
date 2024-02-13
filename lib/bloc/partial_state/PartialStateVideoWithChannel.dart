class PartialStateVideoWithChannel {
  final String thumbVideo;
  final String thumbProfileChannel;
  final String titleVideo;
  final String publishedVideo;
  final String videoId;
  final String descriptionVideo;
  final String subscriberCountChannel;
  final String channelId;

  PartialStateVideoWithChannel(
      {required this.videoId,
      required this.channelId,
      required this.descriptionVideo,
      required this.publishedVideo,
      required this.subscriberCountChannel,
      required this.thumbProfileChannel,
      required this.thumbVideo,
      required this.titleVideo});

  factory PartialStateVideoWithChannel.fromEmpty() {
    return PartialStateVideoWithChannel(
        videoId: "",
        channelId: "",
        descriptionVideo: "",
        publishedVideo: "",
        subscriberCountChannel: "",
        thumbProfileChannel: "",
        thumbVideo: "",
        titleVideo: "");
  }
}
