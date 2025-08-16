CREATE TABLE risk_events (
    event_id INTEGER PRIMARY KEY,
    event_date TEXT NOT NULL,
    business_line TEXT NOT NULL,
    branch_location TEXT,
    risk_category TEXT NOT NULL,
    loss_amount REAL NOT NULL,
    status TEXT NOT NULL,
    reported_date TEXT NOT NULL
);

INSERT INTO risk_events VALUES
(1, '2025-01-05', 'Retail Banking', 'New York', 'Fraud', 12000.50, 'Closed', '2025-01-10'),
(2, '2025-01-08', 'Corporate Banking', NULL, 'System Failure', 8000.00, 'Closed', '2025-01-12'), -- Missing branch_location
(3, '2025-01-12', 'Retail Banking', 'Chicago', 'Fraud', -500.00, 'Open', '2025-01-15'), -- Negative loss_amount
(4, '2025-01-15', 'Wealth Management', 'San Francisco', 'Human Error', 3000.00, 'Closed', '2025-01-25'), -- Invalid category
(5, '2025-01-20', 'Retail Banking', 'New York', 'Fraud', 12000.50, 'Closed', '2025-01-25'), -- Duplicate of event_id=1 (except ID)
(6, '2025-01-10', 'Corporate Banking', 'Boston', 'Process Error', 4500.00, 'Closed', '2025-01-25'); -- Late reporting (>7 days)
