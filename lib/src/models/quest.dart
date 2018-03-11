class Quest {
String title;
String description;
bool isActive;

Quest(this.title,{this.description='',this.isActive=false});

  @override
  bool operator ==(Quest other) {
    return this.title == other.title;
  }

  @override
  String toString() {
    return '$title: $description';
  }

}