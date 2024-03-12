/// Represents birth information of a person.
class BirthEntity {
  /// Constructs a [BirthEntity] with the provided [country], [date], and [place].
  ///
  /// Parameters:
  ///   - country: The country where the person was born.
  ///   - date: The date of birth of the person.
  ///   - place: The place of birth of the person.
  const BirthEntity({
    required this.country,
    required this.date,
    required this.place,
  });

  /// The country where the person was born.
  final String country;

  /// The date of birth of the person.
  final String date;

  /// The place of birth of the person.
  final String place;
}
