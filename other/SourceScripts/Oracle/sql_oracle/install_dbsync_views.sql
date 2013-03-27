CREATE OR REPLACE VIEW DBSYNC_TRANSACTIONS(ADDR, KSSPAFLG, STATE, KTCXBSTM, KTCXBSSB, KTCXBSSW, KSCNBAS, KSCNWRP)  AS 
SELECT ktcxbxba addr, ksspaflg,
DECODE (ktcxbsta,
        0, 'IDLE',
        1, 'COLLECTING',
        2, 'PREPARED',
        3, 'COMMITTED',
        4, 'HEURISTIC ABORT',
        5, 'HEURISTIC COMMIT',
        6, 'HEURISTIC DAMAGE',
        7, 'TIMEOUT',
        9, 'INACTIVE',
        10, 'ACTIVE',
        11, 'PTX PREPARED',
        12, 'PTX COMMITTED',
            'UNKNOWN') state,
ktcxbstm, ktcxbssb, ktcxbssw, kscnbas, kscnwrp
FROM x$ktcxb;

grant select on dbsync_transactions to public;

create public synonym dbsync_transactions for sys.dbsync_transactions;


create or replace view sys.x_$kcccp as select * from sys.x$kcccp;
grant select on sys.x_$kcccp to public;
create public synonym x_$kcccp for sys.x_$kcccp;

create or replace view sys.x_$kccle as select * from sys.x$kccle;
grant select on sys.x_$kccle to public;
create public synonym x_$kccle for sys.x_$kccle;

create or replace view sys.x_$kccfn as select * from sys.x$kccfn;
grant select on sys.x_$kccfn to public;
create public synonym x_$kccfn for sys.x_$kccfn;
