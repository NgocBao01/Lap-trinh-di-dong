import '../models/docgia.dart';
import '../models/sach.dart';
import '../models/thuvien.dart';

void main() {
  // Tạo một số sách
  Sach sach1 = Sach('S001', 'Lập Trình Dart', 'Nguyễn Văn A', false);
  Sach sach2 = Sach('S002', 'Giới Thiệu Về Flutter', 'Trần Thị B', false);
  Sach sach3 = Sach('S003', 'Học Máy', 'Lê Văn C', false);

  // Tạo một số độc giả
  Docgia docgia1 = Docgia('DG001', 'Nguyễn Văn D');
  Docgia docgia2 = Docgia('DG002', 'Trần Thị E');

  // Tạo thư viện và thêm sách, độc giả
  Thuvien thuVien = Thuvien([], []);
  thuVien.themSach(sach1);
  thuVien.themSach(sach2);
  thuVien.themSach(sach3);
  thuVien.themDocgia(docgia1);
  thuVien.themDocgia(docgia2);

  // Hiển thị danh sách sách trong thư viện
  thuVien.hienThiSach();

  // Độc giả mượn sách
  docgia1.muonSach(sach1);
  docgia1.muonSach(sach2);

  // Hiển thị lại danh sách sách sau khi mượn
  print('\nDanh sách sách sau khi mượn:');
  thuVien.hienThiSach();

  // Độc giả trả sách
  docgia1.traSach(sach1);

  // Hiển thị lại danh sách sách sau khi trả
  print('\nDanh sách sách sau khi trả:');
  thuVien.hienThiSach();
}