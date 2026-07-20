SELECT

    tc.table_schema,

    tc.table_name,

    tc.constraint_name,

    ccu.table_name AS referenced_table,

    ccu.column_name AS referenced_column

FROM information_schema.table_constraints tc

         JOIN information_schema.constraint_column_usage ccu

              ON tc.constraint_name=ccu.constraint_name

WHERE tc.constraint_type='FOREIGN KEY'

ORDER BY tc.table_name;