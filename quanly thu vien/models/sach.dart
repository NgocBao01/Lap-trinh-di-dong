class Sach{
  String _masach;
  String _tensach;
  String _tacgia;
  bool _trangthaiMuon;

  //Constructor
  Sach(this._masach,this._tensach,this._tacgia,this._trangthaiMuon);

  //getter
  String get maSach => _masach;
  String get tenSach => _tensach;
  String get tacGia => _tacgia;
  bool get trangThaiMuon => _trangthaiMuon;

  //setter
  set MaSach(String maSach){
    if (maSach.isNotEmpty){
      _masach = maSach;
    }
  }
  set TenSach(String tenSach){
    if (tenSach.isNotEmpty){
      _tensach = tenSach;
    }
  }
  set TacGia(String tacGia){
    if (tacGia.isNotEmpty){
      _tacgia= tacGia;
    }
  }
  set TrangThaiMuon(bool trangThaiMuon){
    _trangthaiMuon = trangThaiMuon;
  }
  void hienThiThongTin(){
    print('Ma Sach: $maSach');
    print('Ten Sach : $tenSach');
    print('Tac Gia : $tacGia');  
  }

  String hienThiMuonSach(){
    if (_trangthaiMuon == true) return 'Da muon';
    return 'Chua muon';
  }
}