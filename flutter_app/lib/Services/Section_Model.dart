class Section{
  String? Title;
  String? uid;
  Section({
    this.Title='',
    this.uid=''
  });
  Map<String,dynamic> toMap(){
    return{
      'title':Title,
      'uid':uid
    };
  }
  Section fromMap(Map<String,dynamic> data){
    return Section(
      Title: data['title'],
      uid: data['uid']
    );
  }

  static toList() {}
}