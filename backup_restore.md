# Backup restore process

## Installing and configuring infrastructure
```sh
    ansible-playbook infra.yaml
```

## Restoring MySQL data
On the host with MySQL:
```sh
    sudo su backup # The backup user has pre-configured permissions (authorized_key) to interact with the backup server
    duplicity restore --no-encryption rsync://Mari0nM@backup.verity.co//home/Mari0nM/mysql /home/backup/restore/
    exit
    sudo su
    mysql agama < /home/backup/restore/agama.sql
```

### Checking data integrity

- Option 1: view the database entities using Agama

Access our Agama web service and see if the entries have been restored. Use your best judgement to
determine whether the migration went smoothly.

- Option 2: MySQL shell

On the host with MySQL:
```sh
    sudo su
    mysql
    mysql> connect agama
    mysql> select * from item limit 100
```

Use your best judgement to determine whether the migration went smoothly.

## Restoring InfluxDB data

Note:
```
To preserve existing data, the restore utility does not allow restoring data to a database that already exists.
```

If it is critically important that both the actively running service's data and the backup's data
are merged, then follow [these instructions](https://docs.influxdata.com/influxdb/v1/administration/backup_and_restore/#restore-data-to-an-existing-database).

**The following instructions will irrevocably destroy the running service's data**

On the host with InfluxDB:
```sh
    sudo su backup
    duplicity --no-encryption restore rsync://Mari0nM@backup.verity.co//home/Mari0nM/influxdb /home/backup/restore/
    exit
    sudo su
    service telegraf stop
    influx -execute 'DROP DATABASE telegraf'
    influxd restore -portable -database telegraf /home/backup/restore
    service telegraf start
```

### Checking data integrity

- Option 1: use Influx CLI

On the host with InfluxDB:

```sh
    sudo su
    influx
    > use telegraf
    > select * from syslog limit 100
    > use latency
    > select * from rtt limit 100
```

Use your best judgement to determine whether the migration went smoothly.

- Option 2: use our Grafana instance

Use our Grafana instance to query InfluxDB. Use your best judgement to determine whether the migration went smoothly.
