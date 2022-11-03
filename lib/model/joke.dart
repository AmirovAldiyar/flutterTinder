import 'package:freezed_annotation/freezed_annotation.dart';
part 'joke.freezed.dart';
part 'joke.g.dart';

@freezed
class Joke with _$Joke {
  const factory Joke({
    required String value,
  }) = _Joke;

  factory Joke.fromJson(Map<String, Object?> json) => _$JokeFromJson(json);
}
