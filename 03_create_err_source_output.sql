use Telecom
go

if exists (select * from sys.tables where name = 'err_source_output' and type = 'U')
drop table err_source_output
go


CREATE TABLE err_source_output (
	id int identity(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int
)
go

alter table err_source_output add audit_id int;