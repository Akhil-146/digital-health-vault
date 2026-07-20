SELECT table_name
FROM information_schema.tables
WHERE table_schema='master'
ORDER BY table_name;