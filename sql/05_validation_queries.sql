
--examples of validation queries fr quick checks on tables after tables are loaded
--example for Opportunities table:
SELECT OpportunityStage, COUNT(*), SUM(OrderAmount)
FROM Opportunities
GROUP BY OpportunityStage;
