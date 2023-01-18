resource "aws_route_table_association" "subnets" {
  subnet_id = var.subnet.id
  route_table_id = var.route_table_id
}