[[ define "_redis" ]]
  group "redis" {
    network {
      mode = "host"
      port "redis" { static = 6379 }
    }

    task "redis" {
      driver = "docker"
      config {
        image        = "redis:7"
        hostname     = "redis"
        network_mode = "doz"
        ports        = ["redis"]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
[[ end ]]
