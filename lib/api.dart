class Note {
  late String name;
  late String unitPrice;

  Note(this.name, this.unitPrice);

  Note.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    unitPrice = json['unitprice'];
  }
}
