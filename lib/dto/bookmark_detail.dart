import 'package:json_annotation/json_annotation.dart';

part 'bookmark_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class BookmarkDetail {
  @JsonKey(name: 'is_bookmarked')
  bool isBookmarked;
  List<String> tags;
  String restrict;

  BookmarkDetail(this.isBookmarked, this.tags, this.restrict);

  factory BookmarkDetail.fromJson(Map<String, dynamic> json) => _$BookmarkDetailFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkDetailToJson(this);
}
