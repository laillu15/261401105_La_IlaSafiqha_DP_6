program jumlah_hari;
uses crt;

var
    bulan, tahun, jumlahHari : integer;

begin
    clrscr;
    write('Masukkan bulan (1-12): ');
    readln(bulan);
    write('Masukkan tahun: ');
    readln(tahun);

    case bulan of
        1, 3, 5, 7, 8, 10, 12 : jumlahHari := 31;
        4, 6, 9, 11 : jumlahHari := 30;
        2 : 
        begin
            if (tahun mod 400 = 0) and ((tahun mod 4 = 0) or (tahun mod 100 <> 0)) then
                jumlahHari := 29
            else
                jumlahHari := 28
        end;
    else
        jumlahHari := 0;
    end;

    writeln;
    writeln('--------------------------------');
    if jumlahHari <> 0 then
        writeln('Jumlah Hari : ', jumlahHari, ' hari')
    else
        writeln('Bulan tidak valid.');
   readln;
end.