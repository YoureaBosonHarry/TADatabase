CREATE FUNCTION GetDailyRsi()
RETURNS TABLE ( 
	Ticker VARCHAR(6),
	DateAdded DATE,
	TwoDayRsi Numeric(5, 2),
	SixDayRsi Numeric(5, 2),
	FourteenDayRsi Numeric(5, 2)
) 
LANGUAGE plpgsql
AS $$ 
BEGIN
RETURN QUERY SELECT DISTINCT DailyRsi.Ticker, DailyRsi.DateAdded, DailyRsi.TwoDayRsi, DailyRsi.SixDayRsi, DailyRsi.FourteenDayRsi FROM DailyRsi ORDER BY DateAdded DESC;
END;
$$;