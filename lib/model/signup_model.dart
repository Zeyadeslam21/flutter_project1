class signup_model
{
  Map<String,dynamic>data;
  String message;
  bool status;
  signup_model({required this.data,required this.message,required this.status});
  factory signup_model.fromjeson(Map<String,dynamic>json)
  {
    return signup_model(data: json["data"], message: json["message"], status: json["status"]);
  }
}