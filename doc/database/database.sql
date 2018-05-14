�f�[�^�x�[�X: sample_db
���[�U�[�F test_user
�e�[�u��: actor, prefecture

create database if not exists sample_db;
create user 'test_user'@'localhost' identified by 'test_user';
grant all on sample_db.* to 'test_user'@'localhost';
create table if not exists actor (
  id int not null auto_increment,
  name varchar(30) not null,
  height smallint,
  blood varchar(2),
  birthday date,
  birthplace_id smallint,
  update_at timestamp(6) not null default current_timestamp(6) on update current_timestamp(6),
  primary key (id)
) engine = INNODB;


insert into actor (name, height, blood, birthday, birthplace_id) values
('�O�g�N�Y', 175, 'O',  '1922-07-17', 13),
('�X�c����', 175, 'O',  '1949-12-16', 13),
('������',   173, null, '1938-02-04', 22),
('���c�z�q', 171, 'O',  '1953-05-17',  43),
('�R���ʗ�', null, null,'1947-05-10',  13),
('�������M', null, null, '1909-02-12', 1),
('���`��',   173, 'B',   '1937-07-20', 13),
('���R���H', 167, 'A',   '1947-05-21', 13),
('������',   null, null, '1913-01-12', 13),
('���䂫��', 155, 'B',   '1926-02-28', 13),
('�}�q�O',   null, null, '1904-05-13', 43),
('�a�R�׎i', null, null, '1915-10-17', 28),
('������',   173,  'B',  '1928-03-10', 13);


create table if not exists prefecture (
  id smallint not null,
  name varchar(6) not null,
  primary key (id)
) engine = INNODB;


insert into prefecture (id, name) values
(1,'�k�C��'),(2,'�X��'),(3,'��茧'),(4,'�{�錧'),(5,'�H�c��'),(6,'�R�`��'),(7,'������'),
(8,'��錧'),(9,'�Ȗ،�'),(10,'�Q�n��'),(11,'��ʌ�'),(12,'��t��'),(13,'�����s'),(14,'�_�ސ쌧'),
(15,'�V����'),(16,'�x�R��'),(17,'�ΐ쌧'),(18,'���䌧'),(19,'�R����'),(20,'���쌧'),(21,'�򕌌�'),
(22,'�É���'),(23,'���m��'),(24,'�O�d��'),(25,'���ꌧ'),
(26,'���s�{'),(27,'���{'),(28,'���Ɍ�'),(29,'�ޗǌ�'),(30,'�a�̎R��'),
(31,'���挧'),(32,'������'),(33,'���R��'),(34,'�L����'),(35,'�R����'),
(36,'������'),(37,'���쌧'),(38,'���Q��'),(39,'���m��'),
(40,'������'),(41,'���ꌧ'),(42,'���茧'),(43,'�F�{��'),(44,'�啪��'),(45,'�{�茧'),(46,'��������'),(47,'���ꌧ');

