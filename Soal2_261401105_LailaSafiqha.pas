program InputSandi;
uses crt;

var
 sandi : string;
 percobaan : integer;

begin
    clrscr;
    percobaan := 0;

    repeat
    percobaan := percobaan + 1;
    
    // Ketik sandi kalian yah
        write('Masukkan kata sandi : ');
        readln(sandi);

    if (sandi = 'charles leclerc') then
    begin
        writeln('Login berhasil, Selamat Datang');
    break;
    end
    else
    begin
        if (percobaan = 3) then
        writeln('SALAH!! Jangan harap bisa masuk!!')
         else 
        begin
        writeln('Kesempatan yang kamu miliki hanya 3 kali percobaan');
        writeln('Kesempatan yang kamu miliki tinggal ', 3 - percobaan, ' kali lagi');
        end;
     end;
    until (percobaan = 3);
        readln;
end.