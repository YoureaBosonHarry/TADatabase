CREATE FUNCTION MarketData.GetTickers() 
RETURNS TABLE (Ticker VARCHAR(6))
LANGUAGE plpgsql
AS $$
BEGIN 
RETURN QUERY SELECT Tickers.Ticker FROM MarketData.Tickers;
END;
$$;