// Student: Arwa Hussein Elrayah Osman
// Reg no: 25909
const String regNo = '25909';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// by A.H.E.O
int countVowels(String text) {
  int count = 0;
  String lower = text.toLowerCase();
  int i = 0;
  while (i < lower.length) {
    String ch = lower[i];
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      count++;
    }
    i++;
  }
  return count;
}

// by A.H.E.O
String initials(String fullName) {
  if (fullName.trim().isEmpty) return '';
  List<String> parts = fullName.trim().split(' ');
  String result = '';
  int i = 0;
  while (i < parts.length) {
    String p = parts[i];
    if (p.isNotEmpty) {
      result += p[0].toUpperCase() + '.';
    }
    i++;
  }
  return result;
}

// by A.H.E.O
void drawTriangle(int height) {
  if (height <= 0) return;
  int row = 1;
  while (row <= height) {
    String ch = (row % 2 == 1) ? '*' : '#';
    String spaces = '';
    int s = 0;
    while (s < height - row) {
      spaces += ' ';
      s++;
    }
    String stars = '';
    int k = 0;
    while (k < row) {
      stars += ch;
      k++;
    }
    print(spaces + stars);
    row++;
  }
}

// by A.H.E.O
int momoFee(int amount) {
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

// by A.H.E.O
String maskPhone(String phone) {
  if (phone.length != 10) return 'INVALID';
  String mid = '';
  int i = 3;
  while (i < phone.length - 2) {
    mid += '*';
    i++;
  }
  return phone.substring(0, 3) + mid + phone.substring(phone.length - 2);
}

void main() {
  print('Reg no: $regNo | D = $d | T = $t');
  
  // B2
  print('Arwa Hussein Elrayah Osman has ${countVowels('Arwa Hussein Elrayah Osman')} vowels');
  
  // B3
  print(initials('Arwa Hussein Elrayah Osman'));
  print(initials('ana uwase'));
  print(initials(''));
  
  // C5
  drawTriangle(12);
  
  // D2
  int totalFees = 0;
  int i = 1;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    totalFees += fee;
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone('0788123456')}');
    i++;
  }
  print('Total fees: $totalFees RWF');
}
