SET NAMES NONE;

CONNECT '37.53.85.53:/home/base/GKU.GDB' USER 'SYSDBA' PASSWORD 'masterkey';



update h_voda set wid=41 where wid=1;
update h_voda set wid=42 where wid=2;
update h_voda set wid=43 where wid=3;
update h_voda set wid=46 where wid=6;
update h_voda set wid=47 where wid=4;
update h_voda set wid=48 where wid=5;

commit;


