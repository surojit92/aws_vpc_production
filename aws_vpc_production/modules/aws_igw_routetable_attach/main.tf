resource "aws_route_table_association" "routetable" {
  gateway_id        = var.gateway_id
  route_table_id    = var.routetable_id
}