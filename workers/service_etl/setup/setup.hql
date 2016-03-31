CREATE DATABASE IF NOT EXISTS ${hiveconf:SERVICE_ORIGIN};

USE ${hiveconf:SERVICE_ORIGIN};

CREATE EXTERNAL TABLE service_etl (
  ip string,
  time_local string
PARTITIONED BY
  (y string, m string, d string, h string)
LOCATION 
  '${hiveconf:ACCESS_LOG_CACHE}';
