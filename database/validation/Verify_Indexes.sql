SELECT

    schemaname,

    tablename,

    indexname

FROM pg_indexes

WHERE schemaname='master'

ORDER BY tablename;