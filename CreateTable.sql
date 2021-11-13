CREATE TABLE IF NOT EXISTS Category (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));



CREATE TABLE IF NOT EXISTS User (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));



CREATE TABLE IF NOT EXISTS Author (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `User_id` INT NOT NULL,
  PRIMARY KEY (`id`, `User_id`));



CREATE TABLE IF NOT EXISTS Cours (
  `id` INT NULL,
  `title` VARCHAR(80) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `date` DATE NOT NULL,
  `Category_id` INT NOT NULL,
  `Author_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Category_id`, `Author_id`));



CREATE TABLE IF NOT EXISTS Img (
  `id` INT NOT NULL,
  `path` VARCHAR(45) NOT NULL,
  `Cours_id` INT NOT NULL,
  PRIMARY KEY (`id`));



CREATE TABLE IF NOT EXISTS Video (
  `id` INT NOT NULL,
  `path` VARCHAR(45) NOT NULL,
  `Cours_id` INT NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE IF NOT EXISTS Tag (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `Cours_id` INT NOT NULL,
  `Cours_Category_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Cours_id`, `Cours_Category_id`));


CREATE TABLE IF NOT EXISTS Cours_User(
  `Cours_id` INT NOT NULL,
  `User_id` INT NOT NULL,
  PRIMARY KEY (`Cours_id`, `User_id`));
