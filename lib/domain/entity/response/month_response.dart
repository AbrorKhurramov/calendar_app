/// month : "8"
/// year : 2023
/// days : [{"day":1,"type":100},{"day":4,"type":200},{"day":6,"type":200},{"day":8,"type":200},{"day":11,"type":200},{"day":13,"type":200},{"day":15,"type":400},{"day":18,"type":100},{"day":20,"type":300},{"day":22,"type":400},{"day":25,"type":300},{"day":27,"type":300},{"day":29,"type":300}]

class MonthResponse {
  MonthResponse({
      String? month, 
      num? year, 
      List<Days>? days,}){
    _month = month;
    _year = year;
    _days = days;
}

  MonthResponse.fromJson(dynamic json) {
    _month = json['month'];
    _year = json['year'];
    if (json['days'] != null) {
      _days = [];
      json['days'].forEach((v) {
        _days?.add(Days.fromJson(v));
      });
    }
  }
  String? _month;
  num? _year;
  List<Days>? _days;
MonthResponse copyWith({  String? month,
  num? year,
  List<Days>? days,
}) => MonthResponse(  month: month ?? _month,
  year: year ?? _year,
  days: days ?? _days,
);
  String? get month => _month;
  num? get year => _year;
  List<Days>? get days => _days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['month'] = _month;
    map['year'] = _year;
    if (_days != null) {
      map['days'] = _days?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// day : 1
/// type : 100

class Days {
  Days({
      num? day, 
      num? type,}){
    _day = day;
    _type = type;
}

  Days.fromJson(dynamic json) {
    _day = json['day'];
    _type = json['type'];
  }
  num? _day;
  num? _type;
Days copyWith({  num? day,
  num? type,
}) => Days(  day: day ?? _day,
  type: type ?? _type,
);
  num? get day => _day;
  num? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['type'] = _type;
    return map;
  }

}