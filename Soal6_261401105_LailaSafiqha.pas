program nilai_akhir;
uses crt;

var
    tugas, uts, uas, kehadiran, nilaiAkhir : real;
    indeks : char;

begin
    clrscr;
    write('Masukkan nilai tugas: ');
    readln(tugas);
    write('Masukkan nilai UTS: ');
    readln(uts);
    write('Masukkan nilai UAS: ');
    readln(uas);
    write('Masukkan Kehadiran: ');
    readln(kehadiran);

    nilaiAkhir := (tugas * 0.3) + (uts * 0.3) + (uas * 0.4);

    if nilaiAkhir >= 85 then
        indeks := 'A'
    else if nilaiAkhir >= 75 then
        indeks := 'B'
    else if nilaiAkhir >= 60 then
        indeks := 'C'
    else if nilaiAkhir >= 50 then
        indeks := 'D'
    else
        indeks := 'E';

    writeln;
    writeln('--------------------------------');
    writeln('Nilai Akhir: ', nilaiAkhir:0:2);
    writeln('Indeks: ', indeks);

    if (nilaiAkhir >= 60) and (kehadiran >= 80) then
        writeln('Status: Lulus')
    else
        writeln('Status: Tidak Lulus');
    readln;
end.