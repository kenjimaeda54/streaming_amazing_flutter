class ThumbNailsDetails {
  final String url;

  ThumbNailsDetails({required this.url});

  factory ThumbNailsDetails.fromJson(Map<String, dynamic> json) {
    return ThumbNailsDetails(url: json['url']);
  }
}
