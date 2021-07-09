import 'dart:io';
import 'dart:math';

void main() {
  print('|| Program Kalkulator Sederhana');
  print(
      '|| Silahkan ketikan operator + | - | x | : | ^ | Angka 6 untuk akar | untuk melakukan penjumlahan dan gunakan titik untuk koma');
  print('|| By: Vlakas');
  print('======================');
  print('Pilih Suhu :');
  print('1. Tambah (+)');
  print('2. Kurang (-)');
  print('3. Kali (x)');
  print('4. Bagi (:)');
  print('5. Pangkat (^)');
  print('6. Akar (√)');
  print('======================');

  stdout.write('Masukan Angka Pertama : ');
  var angkaPertama = num.parse(stdin.readLineSync()!);
  stdout.write('Masukan Operator : ');
  var operator = stdin.readLineSync()!;
  if (operator == '6') {
    var hasil = sqrt(angkaPertama);
    print('√$angkaPertama = $hasil');
  
  } else {
    stdout.write('Masukan Angka Kedua : ');
    var angkaKedua = num.parse(stdin.readLineSync()!);

    switch (operator) {
      case '+':
        {
          print(
              '$angkaPertama $operator $angkaKedua = ${angkaPertama + angkaKedua}');
          break;
        }
      case '-':
        {
          print(
              '$angkaPertama $operator $angkaKedua = ${angkaPertama - angkaKedua}');
          break;
        }
      case 'x':
        {
          print(
              '$angkaPertama $operator $angkaKedua = ${angkaPertama * angkaKedua}');
          break;
        }
      case 'X':
        {
          print(
              '$angkaPertama $operator $angkaKedua = ${angkaPertama * angkaKedua}');
          break;
        }
      case ':':
        {
          print(
              '$angkaPertama $operator $angkaKedua = ${angkaPertama / angkaKedua}');
          break;
        }
      case '^':
        {
          var hasil = pow(angkaPertama, angkaKedua);
          print('$angkaPertama $operator $angkaKedua = $hasil');
          break;
        }
      default:
        {
          print('Silahkan lakukan pengisian operator sesuai instruksi');
        }
    }
  }
}
