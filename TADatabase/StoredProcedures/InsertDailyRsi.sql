CREATE FUNCTION InsertDailyRsi(
	"_Ticker" VARCHAR(6),
	"_DateAdded" TIMESTAMP,
	"_TwoDayRsi" Numeric(5, 2),
	"_SixDayRsi" Numeric(5, 2),
	"_FourteenDayRsi" Numeric(5, 2)
	)
RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN
INSERT INTO DailyRsi (Ticker, DateAdded, TwoDayRsi, SixDayRsi, FourteenDayRsi) VALUES ("_Ticker", "_DateAdded"::DATE, "_TwoDayRsi", "_SixDayRsi", "_FourteenDayRsi");
END;
$$;
