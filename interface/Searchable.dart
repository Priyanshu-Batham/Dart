abstract class Searchable {
  String data = "";
  void search(String keyword);
}

class Document implements Searchable {
  String data = "";
  //constructor
  Document(this.data);

  void search(String keyword) {
    int index = data.indexOf(keyword);
    print("Index: ${index}");
  }
}

class WebPage implements Searchable {
  String data = "";
  //constructor
  WebPage(this.data);

  void search(String keyword) {
    int index = data.indexOf(keyword);
    if (index > -1)
      print("Index: ${index}");
    else
      print("Not found");
  }
}

void main() {
  WebPage mydoc = WebPage("Hello how are you my friend");
  mydoc.search("priyanshu");
}
