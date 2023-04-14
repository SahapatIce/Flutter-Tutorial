class Pagination {
  int nPageSize;
  int nPageIndex;
  String? sSortExpression;
  String? sSortDirection;

  Pagination(
      {required this.nPageSize,
      required this.nPageIndex,
      this.sSortDirection = "",
      this.sSortExpression = ""});
}
