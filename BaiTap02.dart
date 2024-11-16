import 'dart:io';
import 'dart:math';

void main() {
  double a, b, c;

  // Nhập hệ số a
  while (true) {
    stdout.write('Nhập hệ số a (a ≠ 0): ');
    String? input = stdin.readLineSync();
    if (input != null && double.tryParse(input) != null) {
      a = double.parse(input);
      if (a != 0) break;
      print('a phải khác 0.');
    } else {
      print('Vui lòng nhập một số hợp lệ.');
    }
  }

  // Nhập hệ số b
  while (true) {
    stdout.write('Nhập hệ số b: ');
    String? input = stdin.readLineSync();
    if (input != null && double.tryParse(input) != null) {
      b = double.parse(input);
      break;
    } else {
      print('Vui lòng nhập một số hợp lệ.');
    }
  }

  // Nhập hệ số c
  while (true) {
    stdout.write('Nhập hệ số c: ');
    String? input = stdin.readLineSync();
    if (input != null && double.tryParse(input) != null) {
      c = double.parse(input);
      break;
    } else {
      print('Vui lòng nhập một số hợp lệ.');
    }
  }

  // Giải phương trình
  Giaiphuongtrinh(a, b, c);
}

void Giaiphuongtrinh(double a, double b, double c) {
  double delta = b * b - 4 * a * c;

  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có hai nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép: x = $x');
  } else {
    print('Phương trình vô nghiệm (delta < 0).');
  }
}
