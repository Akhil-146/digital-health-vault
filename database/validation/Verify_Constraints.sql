SELECT

    conname,

    contype,

    conrelid::regclass

FROM pg_constraint

WHERE connamespace='master'::regnamespace

ORDER BY conrelid::regclass;