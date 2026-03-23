USE SCHEMA crm;

-- Create the target table
CREATE OR REPLACE TABLE Accounts (
    AccountID            STRING,
    AccountName          STRING,
    Industry             STRING,
    AccountType          STRING,
    Region               STRING,
    Country              STRING,
    State                STRING,
    City                 STRING,
    EmployeeCount        NUMBER,
    AnnualRevenue        NUMBER(18,2),
    CreatedDate          DATE,
    Status               STRING,
    OwnerName            STRING,
    LeadSource           STRING
);

CREATE OR REPLACE TABLE Opportunities (
    OpportunityID            STRING,
    AccountID                STRING,
    CustomerID               STRING,
    Region                   STRING,
    LeadSource               STRING,
    OpportunityStage         STRING,
    Product                  STRING,
    SubscriptionType         STRING,
    OpportunityCreatedDate   DATE,
    ExpectedCloseDate        DATE,
    CloseDate                DATE,
    OrderAmount              NUMBER(18,2),
    MRR                      NUMBER(18,2),
    ARR                      NUMBER(18,2),
    DiscountPct              NUMBER(5,2),
    SalesRep                 STRING,
    MarketingCampaign        STRING,
    DemoCompleted            STRING,
    DealOutcome              STRING
);

CREATE OR REPLACE TABLE MarketingActivities (
    ActivityID        STRING,
    AccountID         STRING,
    CampaignName      STRING,
    CampaignType      STRING,
    Channel           STRING,
    ActivityDate      DATE,
    Cost              NUMBER(12,2),
    LeadsGenerated    INTEGER,
    MQLsGenerated     INTEGER,
    SQLsGenerated     INTEGER
);

CREATE OR REPLACE TABLE ProductUsage (
    UsageID                STRING,
    AccountID              STRING,
    CustomerID             STRING,
    Product                STRING,
    UsageDate              DATE,
    ActiveUsers            INTEGER,
    APIRequests            INTEGER,
    ReportsGenerated       INTEGER,
    FeatureAdoptionScore   NUMBER(5,2),
    SupportTickets         INTEGER
);
