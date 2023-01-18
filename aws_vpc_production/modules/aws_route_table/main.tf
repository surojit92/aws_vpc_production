resource "awa_route_table" "routetable" {
  vpc_id = var.vpc_id
  tags   = var.tags
}