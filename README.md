# MySQL to BigQuery via DataStream
A example setup to stream data from MySQL to BigQuery via DataStream. 

## Prerequisites 
- Download and install [Terraform](https://developer.hashicorp.com/terraform/downloads)

## Setup process
In this repository, [main.tf](main.tf) creates the following
- A private MySQL instance on Cloud SQL with only private ip
- A private connection profile to be used by Datastream to connect to our VPC network
- A compute instance where a SQL Proxy is deployed to bridge the traffic between Datastream and Cloud SQL. Because connecting to Cloud SQL from Datastream is not possible

## Credit
This [repo](https://github.com/data-max-hq/terraform-datastream-postgres-bq) is where I found a working version of the code with a sql proxy setup.
Thank you [iglikoxha](https://github.com/iglikoxha) for sharing this!

I've made a few changes though,
- Added Cloud Nat: this setup requires Cloud Nat made available to the VPC Network because it needs internet access to download the proxy. Ideally it's better to package this as a container and deploy that so that we can drap the Nat gateway
- Not using Default network: because I am not using the default vpc network, so I had to specify the subnet where the compute instance is created
- Private Cloud SQL: the code enables IPV4 which creates a public IP for the Cloud SQL instance, that isn't necessary, so I've set it to false.
- Enable Binary Log: backup & binary log needs to be enabled because it is required to do replication (which is what Datastream is doing)