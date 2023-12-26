pg_fdw_servers = [ 
    {
        server_name = "dev_ms_auth_fdw"
        fdw_name    = "postgres_fdw"
        options = {
            host   = "localhost"
            dbname = "dev_ms_auth"
            port   = "5432"
        }
    }
 ]