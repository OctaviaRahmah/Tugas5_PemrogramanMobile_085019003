class Peserta {
  final String nama;
  final String npm;
  final Object id;

  Peserta({
    required this.nama,
    required this.npm,
    required this.id,
  });

  factory Peserta.fromJson(Map<String, dynamic> json) {
    return Peserta(
      nama: json['nama'],
      npm: json['npm'],
      id: json['id'],
    );
  }
}
