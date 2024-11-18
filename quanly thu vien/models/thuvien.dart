import '../models/docgia.dart';
import '../models/sach.dart';

class Thuvien {
  List<Sach> _dsSach = [];
  List<Docgia> _dsDocgia = [];

  //constructor
  Thuvien(this._dsSach,this._dsDocgia);

  //getter
  List<Sach> get dsSach => _dsSach;
  List<Docgia> get dsDocgia => _dsDocgia;

  //hien thi sach
  void hienThiSach(){
    print('\n---------------------------');
    print('Danh Sach o Thu Vien:');
    for(var Sach in _dsSach){
      print('\n---------------------------');
      Sach.hienThiThongTin();
      print('\nTrang thai : ${Sach.hienThiMuonSach()}');
    }
  }
  void themSach(Sach sach ){
    _dsSach.add(sach);
  }

  void themDocgia(Docgia docgia){
    _dsDocgia.add(docgia);
  }
}
