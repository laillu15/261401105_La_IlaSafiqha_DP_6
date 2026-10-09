program rekapitulasi;
uses crt;

var
    m, n, i, j, lulus, tidaklulus : integer;
    nilai, total, rata : real;

begin
    clrscr;
    write('Jumlah Mahasiswa : ');
    readln(m);
    write('Jumlah tugas : ');
    readln(n);

    lulus := 0;
    tidaklulus := 0;

    // Mengulang input nilai mahasiswa ke i
    for i := 1 to m do
    begin
        writeln;
        writeln('Nilai Mahasiswa ke-', i, ' : ');
        total := 0; 

        // Mengulang input nilai tugas ke j
        for j := 1 to n do
        begin
            write('Nilai Tugas ke-', j, ' : ');
            readln(nilai);
            total := total + nilai;
        end;

        rata := total / n;
        writeln('Rata-rata: ', rata:0:2);

        if rata >= 65 then
        begin
            writeln('Status: Lulus');
            lulus := lulus + 1;
        end
        else
        begin
            writeln('Status: Tidak Lulus');
            tidaklulus := tidaklulus + 1;
        end;
    end;

    writeln;
    writeln('================================');
    writeln('Jumlah Mahasiswa yang Lulus: ', lulus);
    writeln('Jumlah Mahasiswa yang Tidak Lulus: ', tidaklulus);
end.