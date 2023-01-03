drop table Services CASCADE CONSTRAINTS;
drop table Implementers CASCADE CONSTRAINTS;
drop table ListOfServices CASCADE CONSTRAINTS;
drop table Registration CASCADE CONSTRAINTS;

CREATE TABLE Services(
	Serv_id NUMBER(6), -- номер услуги
	Serv_name VARCHAR(15) -- название услуги
);

CREATE TABLE Implementers(
	Implem_Id NUMBER(6), -- номер сотрудника
	Implem_name VARCHAR(10), -- имя сотрудника
	Salary NUMBER(7,2) --зарплата сотрудника
);

CREATE TABLE List_Of_Services(
	List_id NUMBER(6), -- номер списка услуг 
	Service_name NUMBER(6), -- название услуги
	Service_price NUMBER(4), -- цена услуги
	Service_implementer NUMBER(6) -- номер исполняющего сотрудника
);

CREATE TABLE Registration(
	Reg_id NUMBER(6), -- номер записи
	Reg_Client VARCHAR(25), -- номер клиента
	Service_for_registration NUMBER(6), -- название услуги
	Reg_Date DATE -- дата выполнения услуги
);
