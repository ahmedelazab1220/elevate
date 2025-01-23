class Rating {
  final num rate;

  Rating({required this.rate});

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
    };
  }
}
