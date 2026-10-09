program DeretAngka;
uses crt;

var
n, i, kategori : integer;

begin
    clrscr;
    write('Masukkan nilai N : ');
    readln(n);
    writeln('Pilih kategori deret angka : ');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Masukkan pilihan : ');
    readln(kategori);
    writeln;

    writeln('Hasil deret angka : ');
    i := 0;
    while (i < n) do
    begin
        i := i + 1;
        // Lewati kelipatan 5
        if (i mod 5 = 0) then
            continue;

        // Lewati angka genap jika pilih kategori ganjil
        if (kategori = 1) and (i mod 2 = 0) then
            continue;

        // Lewati angka ganjil jika pilih kategori genap
        if (kategori = 2) and (i mod 2 <> 0) then
            continue;

            write(i, ' ');
    end;
    writeln;
    readln;
end.