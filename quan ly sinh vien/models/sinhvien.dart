class SinhVien {
  String _hoTen;
  int _tuoi;
  String _msv;
  double _diemtb;

  SinhVien(this._hoTen,this._tuoi,this._msv,this._diemtb);

  //Getters
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get msv => _msv;
  double get diemtb => _diemtb;

  //Setters
  set hoTen(String hotTen){
    if(hotTen.isNotEmpty){
      _hoTen = hotTen;
    }
  }
  set tuoi(int tuoi){
    if(tuoi > 0){
      _tuoi = tuoi;
    }
  }set msv(String msv){
    if(msv.isNotEmpty){
      _msv = _msv;
    }
  }set diemtb(double hotTen){
    if(0 <= diemtb && diemtb <= 10){
      _diemtb = diemtb;
    }
  }

  void hienThiThongTin(){
    print('Ho Ten: $hoTen');
    print('Tuoi : $tuoi');
    print('Ma SV : $msv');
    print('Diem TB :$diemtb');  
  }

  String xepLoai(){
    if(_diemtb >=8.0) return 'Gioi';
    if(_diemtb >=6.5) return 'Kha';
    if(_diemtb >=5.0) return 'Trung binh';
    return 'Yeu';
  }

}
