class Hadith {
  String key;
  String nameHadith;
  String textHadith;
  String explanationHadith;
  String translateNarrator;
  String audioHadith;

  Hadith(
      {this.audioHadith,
      this.explanationHadith,
      this.key,
      this.nameHadith,
      this.textHadith,
      this.translateNarrator});

  Map<String, dynamic> toJson() => {
        "key": this.key,
        "nameHadith": this.nameHadith,
        "textHadith": this.textHadith,
        "explanationHadith": this.explanationHadith,
        "translateNarrator": this.translateNarrator,
        "audioHadith": this.audioHadith,
      };

//  factory Hadith.fromMap(Map<String, dynamic> json) => new Hadith(
//     key:json["key"],
//     nameHadith:json["nameHadith"],
//     textHadith:json["textHadith"],
//     explanationHadith:json["explanationHadith"],
//     translateNarrator:json["translateNarrator"],
//       audioHadith:json["audioHadith"],
//   );

}
