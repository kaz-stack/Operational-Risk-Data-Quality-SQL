-- 1. Completeness: Missing branch_location
SELECT * FROM risk_events WHERE branch_location IS NULL;

-- 2. Accuracy: Negative or zero loss_amount
SELECT * FROM risk_events WHERE loss_amount <= 0;

-- 3. Validity: Invalid risk_category values
SELECT * FROM risk_events
WHERE risk_category NOT IN ('Fraud','System Failure','Process Error','External Event');

-- 4. Consistency: Duplicate event records
SELECT event_date, business_line, branch_location, risk_category, loss_amount,
       COUNT(*) AS duplicate_count
FROM risk_events
GROUP BY event_date, business_line, branch_location, risk_category, loss_amount
HAVING COUNT(*) > 1;

-- 5. Timeliness: Reported more than 7 days late
SELECT event_id, event_date, reported_date,
       julianday(reported_date) - julianday(event_date) AS days_delay
FROM risk_events
WHERE (julianday(reported_date) - julianday(event_date)) > 7;
