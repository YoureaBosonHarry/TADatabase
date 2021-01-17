CREATE TABLE TechnicalIndicators.DailyRsi
(
	Id SERIAL NOT NULL PRIMARY KEY,
	Ticker VARCHAR(6) NOT NULL,
	DateAdded DATE NOT NULL,
	TwoDayRsi Numeric(5, 2) NOT NULL,
	SixDayRsi Numeric(5, 2) NOT NULL,
	FourteenDayRsi Numeric(5, 2) NOT NULL,
	FOREIGN KEY (Ticker) REFERENCES MarketData.Tickers (Ticker)
)
