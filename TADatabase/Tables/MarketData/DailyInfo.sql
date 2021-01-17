CREATE TABLE MarketData.DailyInfo(
    Id SERIAL NOT NULL, 
    Ticker VARCHAR(6) NOT NULL,
    DateAdded DATE NOT NULL,
    DailyLow NUMERIC(10, 2) NOT NULL,
    DailyHigh NUMERIC(10, 2) NOT NULL,
    DailyOpen NUMERIC(10, 2) NOT NULL,
    DailyClose NUMERIC(10, 2) NOT NULL,
    Volume INT NOT NULL,
    AdjClose NUMERIC(10, 2) NOT NULL,
    FOREIGN KEY (Ticker) REFERENCES MarketData.Tickers (Ticker)
);