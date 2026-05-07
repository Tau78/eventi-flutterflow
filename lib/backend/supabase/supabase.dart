class GiocatoriRow {
  GiocatoriRow({this.nome});

  final String? nome;
}

class _GiocatoriQueryBuilder {
  _GiocatoriQueryBuilder eqOrNull(String column, Object? value) {
    return this;
  }
}

class GiocatoriTable {
  Future<List<GiocatoriRow>> querySingleRow({
    _GiocatoriQueryBuilder Function(_GiocatoriQueryBuilder query)? queryFn,
  }) async {
    final q = _GiocatoriQueryBuilder();
    queryFn?.call(q);
    return [GiocatoriRow(nome: 'Benvenuto')];
  }
}
