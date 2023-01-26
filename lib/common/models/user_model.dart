class UserModel {
  final String username;
  final String uid;
  final String phoneNumber;
  final String profileImageUrl;
  final bool active;
  final List<String> groupId;

  UserModel({
    required this.username,
    required this.uid,
    required this.phoneNumber,
    required this.profileImageUrl,
    required this.active,
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "uid": uid,
      "phoneNumber": phoneNumber,
      "profileImageUrl": profileImageUrl,
      "active": active,
      "groupId": groupId
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'] ?? '',
      uid: map['uid'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      profileImageUrl: map['username'] ?? '',
      active: map['active'] ?? false,
      groupId: List<String>.from(map['groupId']),
    );
  }
}
