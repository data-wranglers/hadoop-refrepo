USE ${hiveconf:SERVICE_ORIGIN};

INSERT OVERWRITE TABLE service_model
  PARTITION (${hiveconf:PARTITION_SPEC})
SELECT
    sl.ip,
    unix_timestamp(concat(y, "-", m, "-", d, " ", h, " UTC"),
      'yyyy-MM-dd HH Z') * 1000 as request_time,
    sl.method,
    sl.bytes_sent,
    sl.referer,
    sl.useragent,
    coalesce(
      param,
      str_to_map('params=null',':','=')
    ) as param ${hiveconf:PARTITION_COLUMNS}
FROM service_log sl
LATERAL VIEW explode(sl.params) paramstable as param
WHERE
    and concat(y,m,d,h) >= rpad('${hiveconf:FROM_DATESTAMP}',10,'0')
    and concat(y,m,d,h) <= rpad('${hiveconf:TO_DATESTAMP}',10,'9');
