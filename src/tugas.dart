import 'dart:io';
double tambah(double a, double b) {
  return a + b;
}

double kurang(double a, double b) {
  return a - b;
}

double kali(double a, double b) {
  return a * b;
}

double bagi(double a, double b) {
  if (b == 0) {
    print("Error: Tidak bisa dibagi dengan nol!");
    return double.nan;
  }
  return a / b;
}

int modulus(int a, int b) {
  if (b == 0) {
    print("Error: Tidak bisa modulus dengan nol!");
    return 0;
  }
  return a % b;
}

void main() {
  print("=== KALKULATOR SEDERHANA DENGAN DART ===");

  stdout.write("Masukkan angka pertama: ");
  double angka1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  double angka2 = double.parse(stdin.readLineSync()!);

  print("\nPilih operasi:");
  print("1. Tambah (+)");
  print("2. Kurang (-)");
  print("3. Kali (*)");
  print("4. Bagi (/)");
  print("5. Modulus (%)");
  stdout.write("Pilihan: ");
  int pilihan = int.parse(stdin.readLineSync()!);

  switch (pilihan) {
    case 1:
      print("Hasil: $angka1 + $angka2 = ${tambah(angka1, angka2)}");
      break;
    case 2:
      print("Hasil: $angka1 - $angka2 = ${kurang(angka1, angka2)}");
      break;
    case 3:
      print("Hasil: $angka1 * $angka2 = ${kali(angka1, angka2)}");
      break;
    case 4:
      double hasilBagi = bagi(angka1, angka2);
      if (!hasilBagi.isNaN) {
        print("Hasil: $angka1 / $angka2 = $hasilBagi");
      }
      break;
    case 5:
      int hasilMod = modulus(angka1.toInt(), angka2.toInt());
      print("Hasil: ${angka1.toInt()} % ${angka2.toInt()} = $hasilMod");
      break;
    default:
      print("Pilihan tidak valid!");
  }
}