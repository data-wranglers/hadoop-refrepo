CREATE DATABASE IF NOT EXISTS ${hiveconf:SERVICE_ORIGIN};

USE ${hiveconf:SERVICE_ORIGIN};

CREATE TABLE service_model (
  ip string,
  time_local timestamp,
  method string,
  bytes_sent string,
  referer string,
  useragent string,
  params map<string,string>)
PARTITIONED BY
  (src STRING, y STRING, m STRING, d STRING, h STRING)
STORED
  AS orc;
