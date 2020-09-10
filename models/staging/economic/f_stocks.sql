
	SELECT
        ROW_NUMBER() OVER( ORDER BY date_id) AS transaction_id
        ,date_id
        ,stock_id
        ,current_value
        ,rate
        ,input
        ,output
	FROM
	    {{source('economic','economic_f_stocks')}}