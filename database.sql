CREATE TABLE 'tb_selecoes' (
  'id' int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  'abv' text,
  'nome' text,
  'grupo' char
);
CREATE TABLE 'tb_jogadores' (
  'id' int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  'nome' text,
  'altura' float,
  'peso' int,
  'data_nascimento' date,
  'posicao' text,
  'id_selecao' int,
  FOREIGN KEY ('id_selecao') REFERENCES tb_selecoes('id')
);

INSERT INTO `tb_selecoes` VALUES 

('1', 'QAT', 'Qatar', 'A'),
('2', 'ECU', 'Ecuador', 'A'),
('3', 'SEN', 'Senegal', 'A'),
('4', 'NED', 'Netherlands', 'A'),
('5', 'ENG', 'England', 'B'),
('6', 'IRN', 'Iran', 'B'),
('7', 'USA', 'USA', 'B'),
('8', 'WAL', 'Wales', 'B'),
('9', 'ARG', 'Argentina', 'C'),
('10', 'KSA', 'Saudi Arabia', 'C'),
('11', 'MEX', 'Mexico', 'C'),
('12', 'POL', 'Poland', 'C'),
('13', 'FRA', 'France', 'D'),
('14', 'AUS', 'Australia', 'D'),
('15', 'DEN', 'Denmark', 'D'),
('16', 'TUN', 'Tunisia', 'D'),
('17', 'ESP', 'Spain', 'E'),
('18', 'CRC', 'Costa Rica', 'E'),
('19', 'GER', 'Germany', 'E'),
('20', 'JPN', 'Japan', 'E'),
('21', 'BEL', 'Belgium', 'F'),
('22', 'CAN', 'Canada', 'F'),
('23', 'MAR', 'Morocco', 'F'),
('24', 'CRO', 'Croatia', 'F'),
('25', 'BRA', 'Brazil', 'G'),
('26', 'SRB', 'Serbia', 'G'),
('27', 'SUI', 'Switzerland', 'G'),
('28', 'CMR', 'Cameroon', 'G'),
('29', 'POR', 'Portugal', 'H'),
('30', 'GHA', 'Ghana', 'H'),
('31', 'URU', 'Uruguay', 'H'),
('32', 'KOR', 'Korea Republic', 'H');

INSERT INTO 'tb_jogadores' VALUES

('1', 'Saad Al Sheeb', '1.88', '83', '1990-2-19', 'Goleiro', '1'),
('2', 'Bassam Alrawi', '1.74', '77', '1997-12-16', 'Zagueiro', '1'),
('3', 'Abdulkarim Hassan', '1.85', '82', '1993-8-28', 'Zagueiro', '1'),
('4', 'Boualem Khoukhi', '1.84', '78', '1990-7-9', 'Zagueiro', '1'),
('5', 'Pedro Miguel', '1.80', '73', '1990-8-6', 'Zagueiro', '1'),
('6', 'Tarek Salman', '1.79', '69', '1997-12-5', 'Zagueiro', '1'),
('7', 'Karim Boudiaf', '1.90', '87', '1990-9-16', 'Meia', '1'),
('8', 'Abdulaziz Hatem', '1.82', '76', '1990-10-28', 'Meia', '1'),
('9', 'Akram Hassan Afif', '1.76', '68', '1996-11-18', 'Atacante', '1'),
('10', 'Hasan Al-Haydos', '1.70', '58', '1990-12-11', 'Atacante', '1'),
('11', 'Almoez Ali', '1.80', '68', '1996-8-19', 'Atacante', '1'),

('12', 'Hernán Galíndez', '1.90', '90', '1987-3-30', 'Goleiro', '2'),
('13', 'Pervis Estupiñán', '1.75', '78', '1998-1-21', 'Zagueiro', '2'),
('14', 'Piero Hincapié', '1.83', '66', '2002-1-9', 'Zagueiro', '2'),
('15', 'Ángelo Preciado', '1.73', '73', '1998-2-18', 'Zagueiro', '2'),
('16', 'Félix Torres', '1.87', '78', '1997-1-11', 'Zagueiro', '2'),
('17', 'Moisés Caicedo', '1.78', '73', '2001-11-2', 'Meia', '2'),
('18', 'Carlos Gruezo', '1.73', '71', '1995-4-19', 'Meia', '2'),
('19', 'Michael Estrada', '1.87', '85', '1996-4-7', 'Atacante', '2'),
('20', 'Ángel Mena', '1.68', '70', '1988-1-21', 'Atacante', '2'),
('21', 'Gonzalo Plata', '1.78', '65', '2000-11-1', 'Atacante', '2'),
('22', 'Enner Valencia', '1.77', '76', '1989-11-4', 'Atacante', '2'),

('23', 'Édouard Mendy', '1.97', '93', '1992-3-1', 'Goleiro', '3'),
('24', 'Saliou Ciss', '1.75', '70', '1989-9-15', 'Zagueiro', '3'),
('25', 'Abdou Diallo', '1.87', '79', '1996-5-4', 'Zagueiro', '3'),
('26', 'Kalidou Koulibaly', '1.95', '89', '1991-6-20', 'Zagueiro', '3'),
('27', 'Bouna Sarr', '1.78', '71', '1992-1-31', 'Zagueiro', '3'),
('28', 'Idrissa Gueye', '1.74', '66', '1989-9-26', 'Meia', '3'),
('29', 'Cheikhou Kouyaté', '1.89', '83', '1989-12-21', 'Meia', '3'),
('30', 'Nampalys Mendy', '1.67', '73', '1992-6-23', 'Meia', '3'),
('31', 'Boulaye Dia', '1.80', '75', '1992-4-10', 'Atacante', '3'),
('32', 'Sadio Mané', '1.75', '69', '1992-4-10', 'Atacante', '3'),
('33', 'Ismaila Sarr', '1.85', '76', '1998-2-25', 'Atacante', '3'),

('34', 'Justin Bijlow', '1.90', '84', '1998-1-22', 'Goleiro', '4'),
('35', 'Daley Blind', '1.80', '72', '1990-3-9', 'Zagueiro', '4'),
('36', 'Matthijs de Ligt', '1.88', '96', '1999-8-12', 'Zagueiro', '4'),
('37', 'Stefan de Vrij', '1.89', '78', '1992-2-5', 'Zagueiro', '4'),
('38', 'Denzel Dumfries', '1.88', '80', '1996-4-18', 'Zagueiro', '4'),
('39', 'Virgil Van Dijk', '1.93', '92', '1991-7-8', 'Zagueiro', '4'),
('40', 'Frenkie de Jong', '1.80', '74', '1997-5-12', 'Meia', '4'),
('41', 'Davy Klaassen', '1.79', '70', '1993-2-21', 'Meia', '4'),
('42', 'Georginio Wijnaldum', '1.73', '74', '1990-11-11', 'Meia', '4'),
('43', 'Steven Bergwijn', '1.78', '74', '1997-10-8', 'Atacante', '4'),
('44', 'Memphis Depay', '1.76', '78', '1994-2-13', 'Atacante', '4'),

('45', 'Jordan PickFord', '1.85', '77', '1994-3-7', 'Goleiro', '5'),
('46', 'Harry Maguire', '1.94', '100', '1993-3-5', 'Zagueiro', '5'),
('47', 'Luke Shaw', '1.85', '75', '1995-7-12', 'Zagueiro', '5'),
('48', 'John Stones', '1.88', '70', '1994-5-28', 'Zagueiro', '5'),
('49', 'Kyle Walker', '1.78', '70', '1990-5-28', 'Zagueiro', '5'),
('50', 'Mason Mount', '1.78', '70', '1999-1-10', 'Meia', '5'),
('51', 'Kalvin Phillips', '1.78', '73', '1995-12-2', 'Meia', '5'),
('52', 'Declan Rice', '1.85', '80', '1999-1-14', 'Meia', '5'),
('53', 'Phil Foden', '1.71', '70', '2000-5-28', 'Atacante', '5'),
('54', 'Harry Kane', '1.88', '85', '1993-7-28', 'Atacante', '5'),
('55', 'Raheem', '1.70', '69', '1994-12-8', 'Atacante', '5'),

('56', 'Alireza Beiranvand', '1.95', '79', '1992-9-21', 'Goleiro', '6'),
('57', 'Hossein Kannani', '1.88', '81', '1994-3-23', 'Zagueiro', '6'),
('58', 'Shoja Khalilzadeh', '1.83', '80', '1989-5-14', 'Zagueiro', '6'),
('59', 'Milad Mohammadi', '1.78', '79', '1993-9-29', 'Zagueiro', '6'),
('60', 'Omid Noorafkan', '1.82', '78', '1997-4-9', 'Zagueiro', '6'),
('61', 'Saeid Ezatolahi', '1.90', '78', '1996-10-1', 'Meia', '6'),
('62', 'Ali Gholizadeh', '1.76', '69', '1996-3-10', 'Meia', '6'),
('63', 'Alireza Jahanbakhsh', '1.80', '76', '1993-8-11', 'Meia', '6'),
('64', 'Ahmad Nourollahi', '1.83', '74', '1993-2-1', 'Meia', '6'),
('65', 'Sardar Azmoun', '1.86', '79', '1995-1-1', 'Atacante', '6'),
('66', 'Mehdi Taremi', '1.87', '79', '1992-7-18', 'Atacante', '6'),

('67', 'Matt Turner', '1.90', '79', '1994-6-24', 'Goleiro', '7'),
('68', 'Sergiño Dest', '1.75', '62', '2000-11-3', 'Zagueiro', '7'),
('69', 'Antonee Robinson', '1.83', '70', '1997-8-8', 'Zagueiro', '7'),
('70', 'DeAndre Yedlin', '1.72', '74', '1993-7-9', 'Zagueiro', '7'),
('71', 'Walker Zimmerman', '1.90', '89', '1993-5-19', 'Zagueiro', '7'),
('72', 'Tyler Adams', '1.75', '72', '1999-2-14', 'Meia', '7'),
('73', 'Weston McKennie', '1.80', '86', '1998-8-28', 'Meia', '7'),
('74', 'Ricardo Pepi', '1.85', '74', '2003-1-9', 'Atacante', '7'),
('75', 'Christian Pulisic', '1.77', '73', '1998-9-18', 'Atacante', '7'),
('76', 'Giovanni Reyna', '1.85', '79', '2002-11-13', 'Atacante', '7'),
('77', 'Timothy Weah', '1.85', '66', '2000-2-22', 'Atacante', '7'),

('78', 'Wayne Hennessey', '1.98', '90', '1987-1-24', 'Goleiro', '8'),
('79', 'Ethan Ampadu', '1.83', '78', '2000-9-14', 'Zagueiro', '8'),
('80', 'Ben Davies', '1.81', '76', '1993-4-24', 'Zagueiro', '8'),
('81', 'Connor Roberts', '1.73', '75', '1995-9-23', 'Zagueiro', '8'),
('82', 'Joe Rodon', '1.92', '87', '1997-10-22', 'Zagueiro', '8'),
('83', 'Neco Williams', '1.83', '72', '2001-4-13', 'Zagueiro', '8'),
('84', 'Joe Allen', '1.68', '62', '1990-3-14', 'Meia', '8'),
('85', 'Aaron Ramsey', '1.80', '78', '1990-12-26', 'Meia', '8'),
('86', 'Gareth Bale', '1.85', '81', '1989-7-16', 'Atacante', '8'),
('87', 'Daniel James', '1.70', '76', '1997-11-10', 'Atacante', '8'),
('88', 'Keiffer Moore', '1.96', '83', '1992-8-8', 'Atacante', '8'),

('89', 'Emiliano Martínez', '1.95', '88', '1992-9-2', 'Goleiro', '9'),
('90', 'Marcos Acuña', '1.72', '69', '1991-10-28', 'Zagueiro', '9'),
('91', 'Nahuel Molina', '1.75', '70', '1998-4-6', 'Zagueiro', '9'),
('92', 'Nicolás Otamendi', '1.83', '81', '1988-2-12', 'Zagueiro', '9'),
('93', 'Cristian Romero', '1.85', '79', '1998-4-27', 'Zagueiro', '9'),
('94', 'Rodrigo De Paul', '1.80', '70', '1994-5-24', 'Meia', '9'),
('95', 'Ángel Di Maria', '1.80', '75', '1988-2-14', 'Meia', '9'),
('96', 'Giovani Lo Celso', '1.77', '70', '1996-4-9', 'Meia', '9'),
('97', 'Leandro Paredes', '1.80', '75', '1994-6-29', 'Meia', '9'),
('98', 'Lautaro Martínez', '1.74', '72', '1992-8-22', 'Atacante', '9'),
('99', 'Lionel Messi', '1.70', '72', '1987-6-24', 'Atacante', '9'),

('100', 'Mohammed Al-Owais', '1.85', '70', '1991-10-10', 'Goleiro', '10'),
('101', 'Abdulelah Al-Amri', '1.85', '74', '1997-1-15', 'Zagueiro', '10'),
('102', 'Sultan Al-Ghannam', '1.73', '67', '1994-5-6', 'Zagueiro', '10'),
('103', 'Yasser Al-Shahrani', '1.71', '62', '1992-5-25', 'Zagueiro', '10'),
('104', 'Hassan Al-TAmbakti', '1.82', '73', '1999-2-9', 'Zagueiro', '10'),
('105', 'Abdullah Madu', '1.87', '77', '1993-7-15', 'Zagueiro', '10'),
('106', 'Salman Al-Faraj', '1.80', '62', '1989-8-1', 'Meia', '10'),
('107', 'Abdulelah Al-Malki', '1.76', '69', '1994-10-11', 'Meia', '10'),
('108', 'Mohamed Kanno', '1.91', '73', '1994-9-22', 'Meia', '10'),
('109', 'Salem Al-Dawsari', '1.71', '72', '1991-8-19', 'Atacante', '10'),
('110', 'Khalid Al-Ghannam', '1.71', '64', '2000-11-4', 'Atacante', '10'),

('111', 'Guillermo Ochoa', '1.83', '78', '1985-7-13', 'Goleiro', '11'),
('112', 'Néstor Araújo', '1.88', '87', '1991-8-29', 'Zagueiro', '11'),
('113', 'Jesús Gallardo', '1.76', '73', '1994-8-15', 'Zagueiro', '11'),
('114', 'César Montes', '1.91', '70', '1997-2-24', 'Zagueiro', '11'),
('115', 'Joger Sánchez', '1.75', '71', '1997-12-10', 'Zagueiro', '11'),
('116', 'Edson Álvarez', '1.87', '73', '1997-10-24', 'Meia', '11'),
('117', 'Jesús Manuel Corona', '1.73', '62', '1993-1-6', 'Meia', '11'),
('118', 'Hétor Herrera', '1.85', '78', '1990-4-19', 'Meia', '11'),
('119', 'Carlos Rodríguez', '1.75', '66', '1997-1-3', 'Meia', '11'),
('120', 'Raúl Jiménez', '1.90', '76', '1991-5-5', 'Atacante', '11'),
('121', 'Hirving Lozano', '1.77', '70', '1995-7-30', 'Atacante', '11'),

('122', 'Wojciech Szczesny', '1.92', '96', '1990-4-18', 'Goleiro', '12'),
('123', 'Jan Bednarek', '1.89', '77', '1996-4-12', 'Zagueiro', '12'),
('124', 'Bartosz Bereszynski', '1.83', '77', '1992-7-12', 'Zagueiro', '12'),
('125', 'Matty Cash', '1.85', '64', '1997-8-7', 'Zagueiro', '12'),
('126', 'Kamil Glik', '1.90', '80', '1988-2-3', 'Zagueiro', '12'),
('127', 'Kamil Józwiak', '1.76', '70', '1998-4-22', 'Meia', '12'),
('128', 'Grzegorz', '1.87', '84', '1990-1-29', 'Meia', '12'),
('129', 'Jakub Moder', '1.88', '78', '1999-4-7', 'Meia', '12'),
('130', 'Piotr Zielinski', '1.80', '75', '1994-5-20', 'Meia', '12'),
('131', 'Robert Lewandowski', '1.84', '80', '1988-8-21', 'Atacante', '12'),
('132', 'Arkadiusz Milik', '1.86', '76', '1994-2-28', 'Atacante', '12'),

('133', 'Hugo Lloris', '1.88', '82', '1986-12-26', 'Goleiro', '13'),
('134', 'Theo Hernández', '1.84', '81', '1997-10-6', 'Zagueiro', '13'),
('135', 'Presnel Kimpembe', '1.82', '79', '1995-8-13', 'Zagueiro', '13'),
('136', 'Jules Koundé', '1.80', '75', '1998-11-12', 'Zagueiro', '13'),
('137', 'Raphael Varane', '1.91', '81', '1993-4-25', 'Zagueiro', '13'),
('138', 'NGolo Kanté', '1.68', '70', '1991-3-29', 'Meia', '13'),
('139', 'Paul Pogba', '1.91', '87', '1993-3-15', 'Meia', '13'),
('140', 'Adrien Rabiot', '1.88', '72', '1995-4-3', 'Meia', '13'),
('141', 'Karim Benzema', '1.85', '81', '1987-12-19', 'Atacante', '13'),
('142', 'Antoine Griezmann', '1.76', '73', '1991-3-21', 'Atacante', '13'),
('143', 'Kylian Mbappé', '1.78', '73', '1998-12-20', 'Atacante', '13'),

('144', 'Mathew Ryan', '1.84', '82', '1992-4-8', 'Goleiro', '14'),
('145', 'Aziz Behich', '1.70', '63', '1990-12-16', 'Zagueiro', '14'),
('146', 'Rhyan Grant', '1.76', '79', '1991-2-26', 'Zagueiro', '14'),
('147', 'Trent Sainsbury', '1.83', '76', '1992-1-5', 'Zagueiro', '14'),
('148', 'Harry Souttar', '1.98', '79', '1998-10-22', 'Zagueiro', '14'),
('149', 'Ajdin Hrustic', '1.83', '74', '1996-7-5', 'Meia', '14'),
('150', 'Jackson Irvine', '1.89', '70', '1993-3-7', 'Meia', '14'),
('151', 'Aaron Mooy', '1.74', '68', '1990-9-15', 'Meia', '14'),
('152', 'Martin Boyle', '1.72', '53', '1993-4-25', 'Atacante', '14'),
('153', 'Mitchel Duke', '1.86', '84', '1991-1-18', 'Atacante', '14'),
('154', 'Mathew Leckie', '1.81', '82', '1991-2-4', 'Atacante', '14'),

('155', 'Kasper Schmeichel', '1.89', '89', '1986-11-5', 'Goleiro', '15'),
('156', 'Andreas Christensen', '1.87', '82', '1996-4-10', 'Zagueiro', '15'),
('157', 'Simon Kjaer', '1.89', '82', '1989-3-26', 'Zagueiro', '15'),
('158', 'Joakim Maehle', '1.84', '79', '1997-5-20', 'Zagueiro', '15'),
('159', 'Jannik Vestergaad', '1.99', '96', '1992-8-3', 'Zagueiro', '15'),
('160', 'Thomas Delaney', '1.82', '79', '1991-9-3', 'Meia', '15'),
('161', 'Christian Eriksen', '1.82', '76', '1992-2-14', 'Meia', '15'),
('162', 'Pierre Emile Hojbjerg', '1.87', '84', '1995-8-5', 'Meia', '15'),
('163', 'Daniel Wass', '1.81', '74', '1989-5-31', 'Meia', '15'),
('164', 'Martin Braithwaite', '1.77', '73', '1991-6-5', 'Atacante', '15'),
('165', 'Yussuf Poulsen', '1.93', '78', '1994-6-15', 'Atacante', '15'),

('166', 'Benchir Ben Said', '1.88', '80', '1994-11-29', 'Goleiro', '16'),
('167', 'Dylan Bronn', '1.85', '76', '1995-6-19', 'Zagueiro', '16'),
('168', 'Mohamed Drager', '1.78', '74', '1996-6-25', 'Zagueiro', '16'),
('169', 'Ali Maâloul', '1.75', '72', '1990-1-1', 'Zagueiro', '16'),
('170', 'Montassar Talbi', '1.90', '81', '1998-5-26', 'Zagueiro', '16'),
('171', 'Wahbi Khazri', '1.82', '76', '1991-2-8', 'Meia', '16'),
('172', 'Aissa Laidouni', '1.83', '75', '1996-12-13', 'Meia', '16'),
('173', 'Ellyes Skhiri', '1.85', '73', '1995-5-10', 'Meia', '16'),
('174', 'Anis Slimane', '1.88', '82', '2001-3-16', 'Meia', '16'),
('175', 'Seifeddine Jaziri', '1.80', '71', '1993-2-12', 'Atacante', '16'),
('176', 'Youssef Msakni', '1.79', '74', '1990-10-28', 'Atacante', '16'),

('177', 'Unai Simon', '1.90', '88', '1997-6-11', 'Goleiro', '17'),
('178', 'Eric Garcia', '1.82', '79', '2001-1-9', 'Zagueiro', '17'),
('179', 'Jordi Alba', '1.70', '68', '1989-3-21', 'Zagueiro', '17'),
('180', 'Aymeric Laporte', '1.89', '85', '1994-5-27', 'Zagueiro', '17'),
('181', 'Cesar Azpilicueta', '1.78', '77', '1989-8-28', 'Zagueiro', '17'),
('182', 'Sergio Busquets', '1.89', '76', '1988-7-16', 'Meia', '17'),
('183', 'Gavi', '1.73', '68', '2004-8-5', 'Meia', '17'),
('184', 'Pedri', '1.74', '60', '2002-11-25', 'Meia', '17'),
('185', 'Dani Olmo', '1.79', '72', '1998-5-7', 'Atacante', '17'),
('186', 'Ferran Torres', '1.84', '77', '2000-2-29', 'Atacante', '17'),
('187', 'Alvaro Morata', '1.89', '82', '1992-10-23', 'Atacante', '17'),


('188', 'Keylor Navas', '1.85', '80', '1986-12-15', 'Goleiro', '18'),
('189', 'Francisco Calvo', '1.80', '88', '1992-7-8', 'Zagueiro', '18'),
('190', 'Oscar Duarte', '1.86', '81', '1989-6-3', 'Zagueiro', '18'),
('191', 'Keysher Fuller', '1.83', '78', '1994-7-12', 'Zagueiro', '18'),
('192', 'Bryan Oviedo', '1.72', '70', '1990-2-18', 'Zagueiro', '18'),
('193', 'Celso Borges', '1.82', '79', '1988-5-27', 'Meia', '18'),
('194', 'Bryan Ruiz', '1.88', '81', '1985-8-18', 'Meia', '18'),
('195', 'Yeltsin Tejeda', '1.79', '66', '1992-3-17', 'Meia', '18'),
('196', 'Jewison Bennette', '1.75', '70', '2004-6-15', 'Atacante', '18'),
('197', 'Joel Campbell', '1.78', '71', '1992-6-26', 'Atacante', '18'),
('198', 'Anthony Contreras', '1.80', '72', '2000-1-29', 'Atacante', '18'),


('199', 'Manuel Neuer', '1.93', '92', '1986-3-27', 'Goleiro', '19'),
('200', 'Thilo Kehrer', '1.86', '76', '1996-9-21', 'Zagueiro', '19'),
('201', 'David Raum', '1.80', '75', '1998-4-22', 'Zagueiro', '19'),
('202', 'Antonio Rudiger', '1.90', '85', '1993-3-3', 'Zagueiro', '19'),
('203', 'Niklas Sule', '1.95', '97', '1995-9-3', 'Zagueiro', '19'),
('204', 'Leon Goretzka', '1.89', '79', '1995-2-6', 'Meia', '19'),
('205', 'Kai Havertz', '1.89', '82', '1999-6-11', 'Meia', '19'),
('206', 'Joshua Kimmich', '1.76', '73', '1995-2-8', 'Meia', '19'),
('207', 'Serge Gnabry', '1.75', '75', '1995-7-14', 'Atacante', '19'),
('208', 'Thomas Muller', '1.86', '75', '1989-9-13', 'Atacante', '19'),
('209', 'Timo Werner', '1.80', '75', '1996-3-6', 'Atacante', '19'),


('210', 'Shuichi Gonda', '1.87', '84', '1989-3-3', 'Goleiro', '20'),
('211', 'Yuto Nagatomo', '1.70', '68', '1986-9-12', 'Zagueiro', '20'),
('212', 'Takehiro Tomiyasu', '1.87', '84', '1998-11-5', 'Zagueiro', '20'),
('213', 'Miki Yamane', '1.78', '72', '1993-12-22', 'Zagueiro', '20'),
('214', 'Maya Yoshida', '1.89', '87', '1988-8-24', 'Zagueiro', '20'),
('215', 'Wataru Endo', '1.78', '76', '1993-2-9', 'Meia', '20'),
('216', 'Gaku Shibasaki', '1.75', '64', '1992-5-28', 'Meia', '20'),
('217', 'Ao Tanaka', '1.80', '69', '1998-9-10', 'Meia', '20'),
('218', 'Junya Ito', '1.76', '66', '1993-3-9', 'Atacante', '20'),
('219', 'Takumi Minamino', '1.74', '68', '1995-1-16', 'Atacante', '20'),
('220', 'Yuya Osako', '1.82', '71', '1990-5-18', 'Atacante', '20'),

('221', 'Thibaut Courtois', '1.99', '96', '1992-5-11', 'Goleiro', '21'),
('222', 'Toby Alderweireld', '1.86', '81', '1989-3-2', 'Zagueiro', '21'),
('223', 'Jason Denayer', '1.84', '80', '1995-6-28', 'Zagueiro', '21'),
('224', 'Thomas Meunier', '1.90', '82', '1991-9-12', 'Zagueiro', '21'),
('225', 'Jan Vertonghen', '1.89', '86', '1987-4-24', 'Zagueiro', '21'),
('226', 'Yannick Carrasco', '1.81', '73', '1993-9-4', 'Meia', '21'),
('227', 'Kevin de Bruyne', '1.81', '68', '1991-6-28', 'Meia', '21'),
('228', 'Youri Tielemans', '1.76', '72', '1997-5-7', 'Meia', '21'),
('229', 'Axel Witsel', '1.86', '81', '1989-1-12', 'Meia', '21'),
('230', 'Eden Hazard', '1.75', '74', '1991-1-7', 'Atacante', '21'),
('231', 'Romelu Lukaku', '1.91', '94', '1993-5-13', 'Atacante', '21'),

('232', 'Milan Borjan', '1.95', '80', '1987-10-23', 'Goleiro', '22'),
('233', 'Alistair Johnston', '1.80', '77', '1998-10-8', 'Zagueiro', '22'),
('234', 'Richie Laryea', '1.75', '68', '1995-1-7', 'Zagueiro', '22'),
('235', 'Kamal Miller', '1.83', '84', '1997-5-16', 'Zagueiro', '22'),
('236', 'Steven Vitoria', '1.95', '86', '1987-1-11', 'Zagueiro', '22'),
('237', 'Tajon Buchanan', '1.83', '71', '1999-2-8', 'Meia', '22'),
('238', 'Alphonso Davies', '1.83', '75', '2000-11-2', 'Meia', '22'),
('239', 'Stephen Eustaquio', '1.75', '66', '1996-12-21', 'Meia', '22'),
('240', 'Atiba Hutchinson', '1.85', '72', '1983-2-8', 'Meia', '22'),
('241', 'Jonathan David', '1.80', '73', '2000-1-14', 'Atacante', '22'),
('242', 'Cyle Larin', '1.88', '86', '1995-4-17', 'Atacante', '22'),

('243', 'Yassine Bounou', '1.95', '78', '1991-4-5', 'Goleiro', '23'),
('244', 'Nayef Aguerd', '1.88', '76', '1996-3-30', 'Zagueiro', '23'),
('245', 'Achraf Hakimi', '1.81', '73', '1998-11-4', 'Zagueiro', '23'),
('246', 'Adam Masina', '1.89', '78', '1994-1-2', 'Zagueiro', '23'),
('247', 'Romain Saiss', '1.88', '84', '1990-3-26', 'Zagueiro', '23'),
('248', 'Selim Amallah', '1.86', '82', '1996-11-15', 'Meia', '23'),
('249', 'Sofyan Amrabat', '1.83', '70', '1996-8-21', 'Meia', '23'),
('250', 'Imran Louza', '1.78', '65', '1999-5-1', 'Meia', '23'),
('251', 'Sofiane Boufal', '1.75', '60', '1993-9-17', 'Atacante', '23'),
('252', 'Youssef En-Nesyri', '1.89', '73', '1997-6-1', 'Atacante', '23'),
('253', 'Ryan Mmaee', '1.88', '85', '1997-11-1', 'Atacante', '23'),

('254', 'Dominik Livakovic', '1.87', '79', '1959-1-9', 'Goleiro', '24'),
('255', 'Josko Gvardiol', '1.85', '80', '2002-1-23', 'Zagueiro', '24'),
('256', 'Josip Juranovic', '1.75', '68', '1995-8-16', 'Zagueiro', '24'),
('257', 'Dejan Lovren', '1.88', '84', '1989-7-5', 'Zagueiro', '24'),
('258', 'Borna Sosa', '1.87', '79', '1998-1-21', 'Zagueiro', '24'),
('259', 'Marcelo Brozovic', '1.81', '68', '1992-11-16', 'Meia', '24'),
('260', 'Mateo Kovacic', '1.76', '80', '1994-5-6', 'Meia', '24'),
('261', 'Luka Modric', '1.72', '66', '1985-9-9', 'Meia', '24'),
('262', 'Ivan Perisic', '1.86', '80', '1989-2-2', 'Meia', '24'),
('263', 'Nikola Vlasic', '1.78', '79', '1997-10-4', 'Meia', '24'),
('264', 'Andrej Kramaric', '1.77', '73', '1991-6-19', 'Atacante', '24'),

('265', 'Alisson', '1.91', '91', '1992-10-2', 'Goleiro', '25'),
('266', 'AlexSandro', '1.80', '80', '1991-1-26', 'Zagueiro', '25'),
('267', 'Danilo', '1.84', '84 ', '1991-7-15', 'Zagueiro', '25'),
('268', 'Marquinhos', '1.83', '75', '1994-5-14', 'Zagueio', '25'),
('269', 'Thiago Silva', '1.83', '79', '1984-9-22', 'Zagueiro', '25'),
('270', 'Casemiro', '1.85', '84', '1992-2-23', 'Meia', '25'),
('271', 'Fred', '1.69', '72', '1993-3-5', 'Meia', '25'),
('272', 'LucasPaqueta', '1.80', '72', '1997-8-27', 'Meia', '25'),
('273', 'GabrielJesus', '1.75', '68', '1994-4-27', 'Atacante', '25'),
('274', 'NeymarJr', '1.75', '68', '1992-2-5', 'Atacante', '25'),
('275', 'ViniciusJr', '1.76', '73', '2000-7-12', 'Atacante', '25'),

('276', 'Predrag Rajkovic', '1.91', '85', '1995-10-31', 'Goleiro', '26'),
('277', 'Nikola Milenkovic', '1.95', '92', '1997-10-12', 'Zagueiro', '26'),
('278', 'Strahinja Pavlovic', '1.94', '84', '2001-5-24', 'Zagueiro', '26'),
('279', 'Milos Veljkovic', '1.88', '85', '1995-9-26', 'Zagueiro', '26'),
('280', 'Nemanja Gudelj', '1.87', '73', '1991-11-16', 'Meia', '26'),
('281', 'Filip Kostic', '1.84', '82', '1992-11-1', 'Meia', '26'),
('282', 'Darko Lazovic', '1.81', '66', '1990-9-15', 'Meia', '26'),
('283', 'Sergej Milinkovic-Savic', '1.91', '76', '1995-2-27', 'Meia', '26'),
('284', 'Aleksandar Mitrovic', '1.88', '90', '1994-9-16', 'Atacante', '26'),
('285', 'Dusan Tadic', '1.81', '74', '1988-11-20', 'Atacante', '26'),
('286', 'Dusan Vlahovic', '1.90', '75', '2000-1-28', 'Atacante', '26'),

('287', 'Yann Sommer', '1,83', '79', '1988-12-17', 'Goleiro', '27'),
('288', 'Manuel Akanji', '1.87', '91', '1995-7-19', 'Zagueiro', '27'),
('289', 'Nico Elvedi', '1.89', '78', '1996-9-30', 'Zagueiro', '27'),
('290', 'Ricardo Rodriguez', '1.82', '77', '1992-8-25', 'Zagueiro', '27'),
('291', 'Silvan Widmer', '1.83', '79', '1993-3-5', 'Zagueiro', '27'),
('292', 'Remo Freuler', '1.81', '77', '1992-4-15', 'Meia', '27'),
('293', 'Xherdan Shaqiri', '1.69', '72', '1991-10-10', 'Meia', '27'),
('294', 'Granit Xhaka', '1.85', '82', '1992-9-27', 'Meia', '27'),
('295', 'Denis Zakaria', '1.90', '80', '1996-11-20', 'Meia', '27'),
('296', 'Breel Embolo', '1.85', '84', '1997-2-14', 'Atacante', '27'),
('297', 'Haris Seferovic', '1.87', '88', '1992-2-22', 'Atacante', '27'),

('298', 'Andre Orana', '1.90', '93', '1996-4-2', 'Goleiro', '28'),
('299', 'Jean-Charles Castelletto', '1.86', '78', '1995-1-26', 'Zagueiro', '28'),
('300', 'Collins Fai', '1.65', '70', '1992-8-13', 'Zagueiro', '28'),
('301', 'Michael Ngadeu', '1.90', '93', '1990-11-23', 'Zagueiro', '28'),
('302', 'Nouhou', '1.78', '79', '1997-6-23', 'Zagueiro', '28'),
('303', 'Samuel Oum Gouet', '1.85', '74', '1997-12-14', 'Meia', '28'),
('304', 'Andre-Frank Zambo Anguissa', '1.84', '83', '1995-11-16', 'Meia', '28'),
('305', 'Vincent Aboubakar', '1.83', '78', '1992-1-22', 'Atacante', '28'),
('306', 'Eric Maxim Choupo-Moting', '1.91', '82', '1989-3-23', 'Atacante', '28'),
('307', 'Nicolas Moumi Ngamaleu', '1.81', '74', '1994-7-9', 'Atacante', '28'),
('308', 'Karl Toko Ekambi', '1.85', '78', '1992-9-14', 'Atacante', '28'),

('309', 'Diogo Costa', '1.87','81', '1999-9-19','Goleiro','29'),
('310', 'Joao Cancelo', '1.82', '74', '1994-5-27', 'Zagueiro', '29'),
('311', 'Pepe', '1.88', '81', '1983-2-26', 'Zagueiro', '29'),
('312', 'Raphael Guerreiro', '1.70', '71', '1993-12-22', 'Zagueiro', '29'),
('313', 'Ruben Dias', '1.86', '83', '1997-5-14', 'Zagueiro', '29'),
('314', 'Bernado Silva', '1.73', '64', '1994-8-10', 'Meia', '29'),
('315', 'Bruno Fernandes', '1.79', '69', '1994-9-8', 'Meia', '29'),
('316', 'Danilo Pereira', '1.88', '83', '1991-9-9', 'Meia', '29'),
('317', 'Joao Moutinho', '1.70', '61', '1986-9-8', 'Meia', '29'),
('318', 'Cristiano Ronaldo', '1.87', '83', '1985-2-5', 'Atacante', '29'),
('319', 'Diogo Jota', '1.78', '73', '1996-12-4', 'Atacante', '29'),

('320', 'Joe Wollacott', '1.90', '80', '1996-9-8', 'Goleiro', '30'),
('321', 'Daniel Amartey', '1.86', '79', '1994-12-21', 'Zagueiro', '30'),
('322', 'Abdul-Rahman Baba', '1.80', '72', '1994-7-2', 'Zagueiro', '30'),
('323', 'Alexander Djiku', '1.82', '81', '1994-8-9', 'Zagueiro', '30'),
('324', 'Andy Yiadom', '1.80', '75', '1991-12-2', 'Zagueiro', '30'),
('325', 'Iddrisu Baba', '1.82', '73', '1996-1-22', 'Meia', '30'),
('326', 'Mohammed Kudus', '1.77', '70', '2000-8-2', 'Meia', '30'),
('327', 'Thomas Parttey', '1.85', '77', '1993-6-13', 'Meia', '30'),
('328', 'Andre Ayew', '1.76', '72', '1089-12-17', 'Atacante', '30'),
('329', 'Jordan Ayew', '1.82', '80', '1991-9-11', 'Atacante', '30'),
('330', 'Kamaldeen Sulemana', '1.75', '70', '2002-2-15', 'Atacante', '30'),

('331', 'Fernando Muslera', '1.90', '74', '1986-6-16', 'Goleiro', '31'),
('332', 'Ronald Araujo', '1.88', '79', '1999-3-7', 'Zagueiro', '31'),
('333', 'Jose Maria Gimenez', '1.85', '80', '1995-1-20', 'Zagueiro', '31'),
('334', 'Diego Godin', '1.87', '79', '1986-2-16', 'Zagueiro', '31'),
('335', 'Mathias Olivera', '1.85', '78', '1997-10-31', 'Zagueiro', '31'),
('336', 'Rodrigo Bentancur', '1.87', '77', '1997-6-25', 'Meia', '31'),
('337', 'Giorgian De Arrascaeta', '1.72', '70', '1994-6-1', 'Meia', '31'),
('338', 'Nicolas De La Cruz', '1.67', '65', '1997-6-1', 'Meia', '31'),
('339', 'Federico Valverde', '1.82', '78', '1998-7-22', 'Meia', '31'),
('340', 'Edinson Cavani', '1.84', '71', '1987-2-14', 'Atacante', '31'),
('341', 'Luis Suarez', '1.82', '86', '1987-1-24', 'Atacante', '31'),

('342', 'Seung-Gyu Kim', '1.87', '84', '1990-9-30', 'Goleiro', '32'),
('343', 'Min-Jae Kim', '1.90', '88', '1996-11-15', 'Zagueiro', '32'),
('344', 'Young-Gwon Kim', '1.86', '83', '1990-2-27', 'Zagueiro', '32'),
('345', 'Jin-Sun Kim', '1.77', '68', '1992-6-13', 'Zagueiro', '32'),
('346', 'Young Lee', '1.80', '74', '1986-12-24', 'Zagueiro', '32'),
('347', 'In-Beom Hwang', '1.77', '70', '1996-9-2', 'Meia', '32'),
('348', 'Woo-Young Jung', '1.86', '78', '1989-12-14', 'Meia', '32'),
('349', 'Jae-Sung Lee', '1.80', '70', '1992-8-10', 'Meia', '32'),
('350', 'Hee-Chan Hwang', '1.77', '77', '1996-1-26', 'Atacante', '32'),
('351', 'Ui-Jo Hwang', '1.83', '73', '1992-8-28', 'Atacante', '32'),
('352', 'Heung-Min Son', '1.83', '78', '1992-7-8', 'Atacante', '32');