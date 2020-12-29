CREATE FUNCTION GetDailyInfoByTicker(_Ticker VARCHAR(6)) 
RETURNS TABLE (
    Id Int,
    Ticker VARCHAR(6),
	DateAdded DATE,
    DailyLow NUMERIC(10, 2),
    DailyHigh NUMERIC(10, 2),
    DailyOpen NUMERIC(10, 2),
    DailyClose NUMERIC(10, 2),
    Volume INT,
    AdjClose NUMERIC(10, 2))
LANGUAGE plpgsql
AS $$
BEGIN 
RETURN QUERY SELECT * FROM DailyInfo WHERE DailyInfo.Ticker = _Ticker;
END;
$$;