program TotalBelanja;
uses crt;

var
    i, n: integer;
    harga, jumlah, total, diskon: real;

begin
    clrscr;
    // Masukkin jumlah barangnya yah
    write ('Masukkan jumlah barang: ');
    readln (n);
    writeln;

    total := 0;

    for i := 1 to n do
    begin
        write ('Masukkan harga barang ke-', i, ': ');
        readln (harga);
        total := total + harga;
    end;

    // Diskonnya nih
    if (Total >= 500000) then
        diskon := 0.20 * total
    else if (Total >= 100000) then
        diskon := 0.10 * total
    else
        diskon := 0;

    total := total - diskon;

    writeln;
    writeln ('Total belanja: ', total:0:2);
    writeln ('Diskon: ', diskon:0:2);
    writeln ('Total yang harus dibayar: ', total:0:2);
end.