ALTER TABLE STUDENT.PLSQL_PROFILER_DATA
 DROP PRIMARY KEY CASCADE;

DROP TABLE STUDENT.PLSQL_PROFILER_DATA CASCADE CONSTRAINTS;

CREATE TABLE STUDENT.PLSQL_PROFILER_DATA
(
  RUNID        NUMBER,
  UNIT_NUMBER  NUMBER,
  LINE#        NUMBER                           NOT NULL,
  TEXT         VARCHAR2(4000 BYTE),
  TOTAL_OCCUR  NUMBER,
  TOTAL_TIME   NUMBER,
  MIN_TIME     NUMBER,
  MAX_TIME     NUMBER,
  SPARE1       NUMBER,
  SPARE2       NUMBER,
  SPARE3       NUMBER,
  SPARE4       NUMBER
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING;

COMMENT ON TABLE STUDENT.PLSQL_PROFILER_DATA IS 'Accumulated data from all profiler runs';


--  There is no statement for index STUDENT.SYS_C0011061.
--  The object is created when the parent object is created.

ALTER TABLE STUDENT.PLSQL_PROFILER_DATA ADD (
  PRIMARY KEY
  (RUNID, UNIT_NUMBER, LINE#)
  USING INDEX
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                PCTINCREASE      0
                BUFFER_POOL      DEFAULT
               )
  ENABLE VALIDATE);

ALTER TABLE STUDENT.PLSQL_PROFILER_DATA ADD (
  FOREIGN KEY (RUNID, UNIT_NUMBER) 
  REFERENCES STUDENT.PLSQL_PROFILER_UNITS (RUNID,UNIT_NUMBER)
  ON DELETE CASCADE
  ENABLE VALIDATE);
