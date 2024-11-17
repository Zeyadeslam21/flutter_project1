class login_model
{
  Map<String,dynamic>data;
  String message;
  bool status;
  login_model({required this.data,required this.message,required this.status});
  factory login_model.fromjeson(Map<String,dynamic>json)
  {
    return login_model(data: json["data"], message: json["message"], status: json["status"]);
  }
}