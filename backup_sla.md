# Verity.co Service Level Agreement (SLA)

## Scope of Services

Verity.co agrees to provide the following infrastructure services to your company:

* DNS Servers
* Web Servers
* Database Servers
* Monitoring Servers
* Backup Servers
* and more based on our clients needs and our agreements

Verity also provides backup services for above mentioned infrastructure services.

## Service Levels
Verity agrees to the following service levels:
1. **Uptime**: Verity will strive to ensure that the infrastructure services are available 99% of the time.
2. **Mean Time Between Failures (MTBF)**: Verity will strive to ensure that the Mean Time Between Failures is less than 30 days.
3.  **Mean Time To Repair (MTTR)**: Verity will strive to ensure that the Mean Time To Repair is less than 4 hours.
4. **Cyber Security Rating**: Verity will strive to ensure that the Cyber Security Rating is 80% or higher.
5. **Recovery Time Objective (RTO)**: Verity will strive to ensure that the Recovery Time Objective (RTO) is less than 8 hours for all backup scenarios.
6. **Recovery Time Objective (RPO)**: Verity will strive to ensure that the Recovery Point Objective (RPO) is less than 24 hour for all backup scenarios.

## Service Level Indicators (SLIs)
Verity will use the following Service Level Indicators (SLIs) to measure the performance of the services:
1. **Uptime**: The percentage of time that the infrastructure services are available for use.
2. **Mean Time Between Failures (MTBF)**: The average time between failures of the infrastructure services.
3.  **Mean Time To Repair (MTTR)**: The average time it takes to repair a failed infrastructure service.
4. **Cyber Security Rating**: The effectiveness of the company's cybersecurity measures.
5. **Recovery Time Objective (RTO)**: The maximum acceptable length of time that a system can be down or not functioning during a disaster.
7. **Recovery Time Objective (RPO)**: The maximum acceptable amount of data loss measured in time.

## Service Level Objectives (SLOs)
Verity will use the following Service Level Objectives (SLOs) to measure the performance of the services:
1. **Uptime**: Verity will strive to ensure that the infrastructure services are available 99% of the time.
2. **Mean Time Between Failures (MTBF)**: Verity will strive to ensure that the Mean Time Between Failures is less than 30 days.
3.  **Mean Time To Repair (MTTR)**: Verity will strive to ensure that the Mean Time To Repair is less than 4 hours.
4. **Cyber Security Rating**: Verity will strive to ensure that the Cyber Security Rating is 80% or higher.
 5. **Recovery Time Objective (RTO)**: Verity will strive to ensure that the Recovery Time Objective (RTO) is less than 8 hours for all backup scenarios.
 7. **Recovery Time Objective (RPO)**: Verity will strive to ensure that the Recovery Point Objective (RPO) is less than 24 hour for all backup scenarios.

## Backup Coverage
In case of disaster, recovery from backups will be done only on MySQL and InfluxDB services.
1.  **MySQL database**: Verity will backup the entire MySQL database, including all tables, stored procedures, and functions. Full backups are made every Friday at 20:30 UTC and incremental backups are made every day at 20:00 UTC.

2.  **InfluxDB**: Verity will backup the entire InfluxDB database, including all time series data, measurements, and retention policies. Full backups are made every Friday at 20:30 UTC and incremental backups are made every day at 20:00 UTC.

3.  **Ansible Repository**: Verity will backup the entire Ansible repository, including all playbooks, roles, and variables.

## Backup Exclusions
 Other services shall be restored from Ansible playbooks, meaning they will be re-created and not backed up. 
1.  **MySQL database**: Verity will not backup temporary tables or any tables that are not essential to the operation of the application.

2.  **InfluxDB**: Verity will not backup any data that is considered sensitive or confidential.

3.  **Ansible Repository**: Verity will not backup any sensitive or confidential data, such as passwords or API keys. All other services excluding InfluxDB and MySQL will be re-created using a playbook from said repository.

## Versioning and Retention

Verity will store the following number of backup versions:

1.  **MySQL database**: Verity will store the last 7 days of daily backups and the last 90 days of weekly backups.

2.  **InfluxDB**: Verity will store the last 7 days of daily backups and the last 90 days of weekly backups.

3.  **Ansible Repository**: Verity will store the last 7 days of daily backups and the last 90 days of weekly backups.

## Usability Checks
Verity will verify backup usability by restoring the backup to a test environment and running a series of tests to ensure that all data and functionality are intact. This shall be done for all backups.

## Restoration Criteria
Verity will restore backups when a data loss event is detected, or when a critical issue is detected that requires a rollback to a previous state.

## Service Level Commitments
Verity will strive to meet the Service Level Objectives (SLOs) as outlined above. If Verity fails to meet any of the SLOs, your company will be compensated next months subscription as credits.

## Termination
This SLA will be in effect for 1 year. Either party may terminate this SLA with 30 days' notice.

## Governing Law
This SLA will be governed by the laws of Estonia.

## Entire Agreement
This SLA constitutes the entire agreement between Verity and the client's company and supersedes all prior agreements, whether oral or written.

