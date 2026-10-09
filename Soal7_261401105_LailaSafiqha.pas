program tarifparkir;
uses crt;

var
    kode : char;
    lama : integer;
    total : integer;

begin
    clrscr;
    write('Masukkan kode kendaraan (M/K/B): ');
    readln(kode);
    write('Masukkan lama parkir (jam): ');
    readln(lama);

    case kode of
       'M', 'm' : 
    //    Mobil
begin
            if lama <= 10 then
                total := 3000
            else
                total := 5000 + (lama - 1) * 3000;
        end;
         'K', 'k' :
        //  Motor
        begin
            if lama <= 10 then
                total := 5000
            else
                total := 10000 + (lama - 1) * 5000;
        end;
        'B', 'b' :
        // Bus
        begin
            if lama > 10 then
                total := 50000 
            else
                total := 10000 + (lama - 1) * 5000;
        end;
    end;

    writeln;
    writeln('--------------------------------');
    writeln('Total Biaya Parkir: Rp ', total);
end.
