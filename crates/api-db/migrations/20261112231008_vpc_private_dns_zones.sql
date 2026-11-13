-- The private DNS zone a VPC holds. `serial` is the zone's SOA serial.
CREATE TABLE vpc_private_dns_zones (
    vpc_id uuid PRIMARY KEY REFERENCES vpcs (id),
    name text NOT NULL,
    serial bigint NOT NULL CHECK (serial BETWEEN 1 AND 4294967295)
);
