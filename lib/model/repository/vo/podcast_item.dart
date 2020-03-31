import 'package:json_annotation/json_annotation.dart';

part 'podcast_item.g.dart';

@JsonSerializable(nullable: false)
class PodCastItem {
  final String id;
  final String artistName;
  final String name;
  final String artworkUrl100;

  PodCastItem(
    this.id,
    this.artistName,
    this.name,
    this.artworkUrl100,
  );

  factory PodCastItem.fromJson(Map<String, dynamic> json) =>
      _$PodCastItemFromJson(json);

  Map<String, dynamic> toJson(PodCastItem instance) =>
      _$PodCastItemToJson(instance);
}
