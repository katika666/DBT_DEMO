WITH CTE AS (
    select
    to_timestamp(started_at) as started_at,
    date(to_timestamp(started_at)) as date_started_at,
    hour(to_timestamp(started_at)) as hour_started_at,
   {{day_type('started_at')}} as day_type,
    {{function1('started_at')}} as func1,
    {{get_season('started_at')}} as season
    from {{source('demo', 'bike')}}
    where started_at != 'started_at'
)
select * from CTE