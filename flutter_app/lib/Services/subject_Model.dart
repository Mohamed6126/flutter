class Subject{
  String? Title;
  String? Description;
  String? uid;
  Subject({
    this.Title= '',
    this.Description= '',
    this.uid= ''
  });

  Map<String,dynamic> toMap(){
    return{
      'title':Title,
      'description':Description,
      'uid':uid
    };
  }

  Subject fromMap(Map<String,dynamic> data){
    return Subject(
      Title: data['title'],
      Description: data['description'],
      uid: data['uid']
    );
  }
}