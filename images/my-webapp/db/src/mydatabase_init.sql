CREATE database mydatabase; 
CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'myuser'@'%';
FLUSH PRIVILEGES;
USE mydatabase; 
CREATE TABLE events (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50), speaker VARCHAR(50), date DATE);
INSERT INTO events (id, name, speaker, date) VALUES (NULL, 'Docker Introduction', 'Merijntje Tak', '2020-07-07');
INSERT INTO events (id, name, speaker, date) VALUES (NULL, 'Christmas', 'Santa', '2020-12-25');
