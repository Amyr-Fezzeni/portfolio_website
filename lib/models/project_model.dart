class ProjectModel {
  final String name;
  final String pic;
  final List<String> languages;

  ProjectModel(
      {required this.name, required this.pic, required this.languages});
  
  
  String getLanguages() {
    String result = "";
    for (var l in languages) {
      result += "$l, ";
    }
    return result.substring(0, result.length - 2);
  }
}
