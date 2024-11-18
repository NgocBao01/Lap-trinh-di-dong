//Lop hoc
import '../models/sinhvien.dart';
class LopHoc{
  String _tenLop;
  List<SinhVien> _danhSachSV = [];

  LopHoc(this._tenLop);

  //Gettters
String get tenLop => _tenLop;
List<SinhVien> get danhSachSV => _danhSachSV;

  //Setters
set tenLop(String tenLop){
    if(tenLop.isNotEmpty){
      _tenLop = tenLop;
    }
  }
  // Them SV
  void themSinhVien(SinhVien sv) => _danhSachSV.add(sv);

  void hienThiDanhSach(){
    print('Danh Sach Sinh Vien: $_tenLop');
    for(var sv in _danhSachSV){
      print('\n---------------------------');
      sv.hienThiThongTin();
      print('\nXep loai : ${sv.xepLoai()}');
    }
  }
}
