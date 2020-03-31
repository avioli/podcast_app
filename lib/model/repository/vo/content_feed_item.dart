import 'package:json_annotation/json_annotation.dart';

part 'content_feed_item.g.dart';

@JsonSerializable(nullable: false)
class ContentFeedItem {
  final String title;
  final String desc;
  final String contentUrl;

  ContentFeedItem(
    this.title,
    this.desc,
    this.contentUrl,
  );

  factory ContentFeedItem.fromJson(Map<String, dynamic> json) =>
      _$ContentFeedItemFromJson(json);

  Map<String, dynamic> toJson(ContentFeedItem instance) =>
      _$ContentFeedItemToJson(instance);
}
