#before-run-script

/tool e-mail
set from=exapmle@gmail.com password=pass-from-gmail port=587 server=smtp.gmail.com tls=starttls user=exapmle@gmail.com

#script

:log warning "backup begin";
:local backupfile ([/system identity get name] ."-" . [:pick [/system clock get date] 7 11] ."-" . [:pick [/system clock get date] 0 3] ."-" . [:pick [/system clock get date] 4 6] . ".backup");
:local exportfile ([/system identity get name] ."-" . [:pick [/system clock get date] 7 11] ."-" . [:pick [/system clock get date] 0 3] ."-" . [:pick [/system clock get date] 4 6] . ".rsc");
:local dudebd ([/system identity get name] ."-" . [:pick [/system clock get date] 7 11] ."-" . [:pick [/system clock get date] 0 3] ."-" . [:pick [/system clock get date] 4 6] . ".db");
/system backup save dont-encrypt=yes name=$backupfile;
:delay 10;
/export file=$exportfile;
:delay 10;
/dude export-db $dudebd
:delay 15
:local date [/system clock get date];
:local body1 "$date Mikrotik backup";
:local body2 "$date Mikrotik export";
/tool e-mail send to="example@gmail.com" body="$body1" subject="$body1" file=($backupfile, $exportfile, $dudebd);
:delay 35;
/file remove $backupfile;
/file remove $exportfile;
/file remove $dudebd;
:log warning "backup, export e-mail finished";