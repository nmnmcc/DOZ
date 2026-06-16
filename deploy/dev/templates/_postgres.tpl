[[ define "_postgres" ]]
  group "postgres" {
    network {
      mode = "host"
      port "db" { static = 5432 }
    }

    task "postgres" {
      driver = "docker"
      config {
        image        = "postgres:17"
        hostname     = "postgres"
        network_mode = "doz"
        ports        = ["db"]
        args         = ["-c", "wal_level=logical"]
        mount {
          type     = "volume"
          target   = "/var/lib/postgresql/data"
          source   = "doz-postgres"
          readonly = false
        }
      }

      env {
        POSTGRES_USER     = "[[ var "postgres_user" . ]]"
        POSTGRES_PASSWORD = "[[ var "postgres_password" . ]]"
        POSTGRES_DB       = "[[ var "postgres_db" . ]]"
      }

      resources {
        cpu    = 200
        memory = 512
      }
    }
  }
[[ end ]]
