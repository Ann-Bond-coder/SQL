drop table Services CASCADE CONSTRAINTS;
drop table Implementers CASCADE CONSTRAINTS;
drop table ListOfServices CASCADE CONSTRAINTS;
drop table Registration CASCADE CONSTRAINTS;

CREATE TABLE Services(
	Serv_id NUMBER(6), -- ����� ������
	Serv_name VARCHAR(15) -- �������� ������
);

CREATE TABLE Implementers(
	Implem_Id NUMBER(6), -- ����� ����������
	Implem_name VARCHAR(10), -- ��� ����������
	Salary NUMBER(7,2) --�������� ����������
);

CREATE TABLE List_Of_Services(
	List_id NUMBER(6), -- ����� ������ ����� 
	Service_name NUMBER(6), -- �������� ������
	Service_price NUMBER(4), -- ���� ������
	Service_implementer NUMBER(6) -- ����� ������������ ����������
);

CREATE TABLE Registration(
	Reg_id NUMBER(6), -- ����� ������
	Reg_Client VARCHAR(25), -- ����� �������
	Service_for_registration NUMBER(6), -- �������� ������
	Reg_Date DATE -- ���� ���������� ������
);
