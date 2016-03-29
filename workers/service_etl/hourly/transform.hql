use ${hiveconf:SERVICE_ORIGIN};

ALTER TABLE service_etl
  ADD IF NOT EXISTS PARTITION(${hiveconf:PARTITION});
