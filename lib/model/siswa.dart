class Siswa{
  final String id;
  final String nis;
  final String nama;
  final String kelas_id;
  final String created_at;
  final String updated_at;

  Siswa({this.id, this.nis, this.nama, this.kelas_id, this.created_at, this.updated_at});

  factory Siswa.fromMap(Map<String, dynamic> json){
    return Siswa(id: json['id'], nis: json['nis'], nama: json['nama'], kelas_id: json['kelas_id'], created_at: json['created_at'], updated_at: json['updated_at']);
  }
}