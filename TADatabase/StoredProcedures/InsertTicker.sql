CREATE PROCEDURE InsertTicker(_Ticker VARCHAR(6))
LANGUAGE plpgsql
AS $$ 
BEGIN
    INSERT INTO Tickers (Ticker) VALUES (_Ticker);
COMMIT;
END;
$$;