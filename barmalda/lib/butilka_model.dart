class ButilkaModel {
  String butType;
  late List<String> butCol;

  ButilkaModel(this.butType, {List<String>? buCols = null}) {
    butCol = buCols ?? [];
  }

  bool eqBut(ButilkaModel other) =>
      butType == other.butType &&
      butCol[0] == other.butCol[0] &&
      butCol[1] == other.butCol[1] &&
      butCol[2] == other.butCol[2];
}
