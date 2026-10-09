program hitungGaji;
uses crt;

var
    golongan : char;
    jamKerja : integer;
    gajiPokok : longint;
    lembur : longint;
    bonus : longint;
    totalGaji : longint;

begin
    clrscr;
    write('Masukkan golongan (A/B/C): ');
    readln(golongan);
    write('Masukkan jam kerja: ');
    readln(jamKerja);

    case golongan of
        'A', 'a' : gajiPokok := 1500000;
        'B', 'b' : gajiPokok := 2000000;
        'C', 'c' : gajiPokok := 2500000;
    else
        gajiPokok := 0;
        writeln('Golongan tidak valid.');
    end;

    if jamKerja > 40 then
        lembur := (jamKerja - 40) * 20000
    else
        lembur := 0;
        bonus := 0;
    if (golongan = 'C') or (golongan = 'c') then
    begin
        if jamkerja > 50 then
           bonus := bonus + 100000;
end;
    // Hitung total gaji
    totalGaji := gajiPokok + lembur + bonus;

    // Tampilkan hasil
    writeln;
    writeln('--------------------------------');
    writeln('Gaji Pokok: Rp ', gajiPokok);
    writeln('Lembur: Rp ', lembur);
    writeln('Bonus: Rp ', bonus);
    writeln('Total Gaji: Rp ', totalGaji);
end.