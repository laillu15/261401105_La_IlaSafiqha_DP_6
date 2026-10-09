program Kalkulator;
uses crt;

var
    pilihan : integer;
    a, b : integer;
    ulang : char;

begin
    repeat
    clrscr;
    writeln('Kalkulator Sederhana');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV dan MOD');

    write('Pilih operasi (1-5): ');
    readln(pilihan);

            writeln;
            write('Masukkan angka pertama: ');
            readln(a);
            write('Masukkan angka kedua: ');
            readln(b);
            
        writeln;
        case pilihan of
        1 : writeln('Hasil penjumlahan: ', a + b);
        2 : writeln('Hasil pengurangan: ', a - b);
        3 : writeln('Hasil perkalian: ', a * b);
        4 : writeln('Hasil pembagian: ', a / b:0:2);
        5 :
        begin
            writeln('Hasil DIV (Hasil Bagi) :  ', a div b);
            writeln('Hasil MOD (Sisa Bagi) :  ', a mod b);
        end;
    end;

    // Konfirmasi 
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/N): ');
    readln(ulang);

    until (ulang = 'N') or (ulang = 'n');
    readln;
end.