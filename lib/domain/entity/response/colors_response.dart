/// type : 200
/// color : "#FFCF00"


class ColorsResponse {
  ColorsResponse({
      num? type, 
      String? color,}){
    _type = type;
    _color = color;
}

  ColorsResponse.fromJson(dynamic json) {
    _type = json['type'];
    _color = json['color'];
  }
  num? _type;
  String? _color;
ColorsResponse copyWith({  num? type,
  String? color,
}) => ColorsResponse(  type: type ?? _type,
  color: color ?? _color,
);
  num? get type => _type;
  String? get color => _color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['color'] = _color;
    return map;
  }

}