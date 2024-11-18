import '../models/sach.dart';

class Docgia {
  String _maDG;
  String _hoTen;
  List<Sach>  _dsSach = [];

  //Constructor
  Docgia(this._maDG,this._hoTen);

  //Getter
  String get maDG => _maDG;
  String get hoten => _hoTen;
  List<Sach> get dsSach => _dsSach; 

  //Setter
  set maDG(String maDG){
  if(maDG.isNotEmpty){
      _maDG = maDG; 
    }
  }
  set hoTen(String hoTen){
    if(hoTen.isNotEmpty){
      _hoTen =hoTen;
    }
  }
  void muonSach(Sach sach){
    if (sach.trangThaiMuon == false ){
      dsSach.add(sach);
      sach.TrangThaiMuon = true;
    }
  } 
    
  void traSach(Sach sach){
      dsSach.remove(sach);
      sach.TrangThaiMuon = false; 
    } 
}