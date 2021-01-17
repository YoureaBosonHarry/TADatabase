CREATE FUNCTION MarketData.InsertDailyInfo(
	"_Ticker" VARCHAR(6),
	"_DateAdded" TIMESTAMP,
	"_DailyLow" NUMERIC(10, 2),
	"_DailyHigh" NUMERIC(10, 2),
	"_DailyOpen" NUMERIC(10, 2),
	"_DailyClose" NUMERIC(10, 2),
	"_Volume" INT,
	"_AdjClose" NUMERIC(10, 2) 
	)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
INSERT INTO MarketData.DailyInfo (Ticker, DateAdded, DailyLow, DailyHigh, DailyOpen, DailyClose, Volume, AdjClose) VALUES ("_Ticker", "_DateAdded"::DATE, "_DailyLow", "_DailyHigh", "_DailyOpen", "_DailyClose", "_Volume", "_AdjClose");
END;
$$;
