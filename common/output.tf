output "settings" {
  value = yamldecode(file("./settings.yaml"))
}
output "vpn" {
  value = yamldecode(file("./settings.yaml"))["vpn"]
}
output "vpn_cidrs" {
  value = yamldecode(file("./settings.yaml"))["vpn_cidrs"]
}
output "tags" {
  value = yamldecode(file("./settings.yaml"))["tags"]
}
output "route53_records_defaults" {
  value = {
    type                             = ""
    prefix                           = ""
    set_identifier                   = ""
    health_check_id                  = ""
    alias                            = ""
    failover_routing_policy          = []
    geolocation_routing_policy       = []
    latency_routing_policy           = []
    weighted_routing_policy          = []
    multivalue_answer_routing_policy = false
    allow_overwrite                  = false
    ttl                              = ""
    values                           = []
  }
}