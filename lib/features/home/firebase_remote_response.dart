class FirebaseRemoteResponse {
  FirebaseRemoteResponse({
    this.children,
  });

  FirebaseRemoteResponse.fromJson(dynamic json) {
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Children.fromJson(v));
      });
    }
  }

  List<Children>? children;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Children {
  Children({
    this.name,
  });

  Children.fromJson(dynamic json) {
    name = json['name'];
  }

  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }
}
