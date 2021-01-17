CREATE FUNCTION MarketData.GetDailyInfoByTicker("_Ticker" VARCHAR(6))
RETURNS TABLE ( 
	Ticker VARCHAR(6),
	DateAdded DATE,
	DailyLow NUMERIC(10, 2),
	DailyHigh NUMERIC(10, 2),
	DailyOpen NUMERIC(10, 2),
	DailyClose NUMERIC(10, 2),
	Volume INT,
	AdjClose NUMERIC(10, 2)
) 
LANGUAGE plpgsql
AS $$ 
BEGIN
RETURN QUERY SELECT DailyInfo.Ticker, DailyInfo.DateAdded, DailyInfo.DailyLow, DailyInfo.DailyHigh, DailyInfo.DailyOpen, DailyInfo.DailyClose, DailyInfo.Volume, DailyInfo.AdjClose FROM MarketData.DailyInfo WHERE DailyInfo.Ticker = "_Ticker";
END;
$$;