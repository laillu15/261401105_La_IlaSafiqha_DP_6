program tampilkan_hari;
uses crt;

var
    nohari : integer;

begin
    clrscr;
    write('Masukkan nomor hari (1-7): ');
    readln(nohari);

    case nohari of
        1 : writeln('Hari ke-', nohari, ' adalah Senin');
        2 : writeln('Hari ke-', nohari, ' adalah Selasa');
        3 : writeln('Hari ke-', nohari, ' adalah Rabu');
        4 : writeln('Hari ke-', nohari, ' adalah Kamis');
        5 : writeln('Hari ke-', nohari, ' adalah Jumat');
        6 : writeln('Hari ke-', nohari, ' adalah Sabtu');
        7 : writeln('Hari ke-', nohari, ' adalah Minggu');
    else
        writeln('Nomor hari tidak valid.');
    end;
    readln;
end.
