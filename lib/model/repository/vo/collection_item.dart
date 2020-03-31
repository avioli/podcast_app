import 'package:json_annotation/json_annotation.dart';
import 'package:podcastapp/model/repository/vo/content_feed_item.dart';

part 'collection_item.g.dart';

@JsonSerializable(nullable: false)
class CollectionItem {
  final int collectionId;
  final String collectionName;

  final int artistId;
  final String artistName;
  final String artworkUrl100;
  final String artworkUrl600;

  @JsonKey(name: "contentFeed")
  List<ContentFeedItem> contentFeeds = new List<ContentFeedItem>();

  CollectionItem(
    this.collectionId,
    this.collectionName,
    this.artistId,
    this.artistName,
    this.artworkUrl100,
    this.artworkUrl600,
    this.contentFeeds,
  );

  factory CollectionItem.fromJson(Map<String, dynamic> json) =>
      _$CollectionItemFromJson(json);

  Map<String, dynamic> toJson(CollectionItem instance) =>
      _$CollectionItemToJson(instance);
}
