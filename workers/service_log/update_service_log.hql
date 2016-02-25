USE ${hiveconf:SERVICE_ORIGIN};

INSERT OVERWRITE TABLE service_log
  PARTITION(${hiveconf:PARTITION_SPEC})
SELECT
    -- These fields correspond to the field names in apache/nginx log
    -- files adhering to the W3C Extended Log File Format standard:
    -- http://www.w3.org/TR/WD-logfile
    -- http://httpd.apache.org/docs/1.3/logs.html#combined
    etl.ip,
    unix_timestamp(etl.time_local, 'dd/MMM/yyyy:HH:mm:ss Z') * 1000,
    etl.method,
    etl.bytes_sent,
    etl.referer,
    etl.useragent,
    coalesce(
      param,
      str_to_map('params=null',':','=')
    ) as param ${hiveconf:PARTITION_COLUMNS}
FROM service_etl etl
  LATERAL VIEW explode(etl.params) paramstable as param
WHERE
  concat(y,m,d,h) >= rpad('${hiveconf:FROM_DATESTAMP}',10,'0')
  and concat(y,m,d,h) <= rpad('${hiveconf:TO_DATESTAMP}',10,'9');
