--Taking a look at the default event table (which contrary to the lesson, was not empty!)
USE DATABASE snowflake;
USE SCHEMA telemetry;
SELECT * FROM EVENTS;

--Peeking inside
DESCRIBE TABLE events;

--Creating a new event table
USE DATABASE staging_tasty_bytes;
CREATE OR REPLACE SCHEMA telemetry;
CREATE OR REPLACE EVENT TABLE pipeline_events

--Peeking inside
DESCRIBE TABLE pipeline_events;

--Setting your own event table using ALTER ACCOUNT SET EVENT_TABLE = table_name
ALTER ACCOUNT SET EVENT_TABLE = staging_tasty_bytes.telemetry.pipeline_events