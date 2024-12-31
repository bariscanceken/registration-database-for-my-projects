CREATE DATABASE userdatas;
USE userdatas;

CREATE TABLE `users` (
    `user_id` INT AUTO_INCREMENT NOT NULL,
    `birth_date` DATE NOT NULL,
    `first_name` VARCHAR(16) NOT NULL,
    `last_name` VARCHAR(16) NOT NULL,
    `gender` ENUM('M', 'F') NOT NULL,
    `register_date` DATE NOT NULL,
    PRIMARY KEY (`user_id`)
);
  
  CREATE TABLE `notes` (
    `note_id` INT NOT NULL,
    `user_id` INT NOT NULL,
    `note` VARCHAR(1024) NOT NULL,
    `level_importance` ENUM('1', '2', '3', '4') NOT NULL,
    PRIMARY KEY (`user_id` , `note_id`),
    FOREIGN KEY (`user_id`)
        REFERENCES `users` (`user_id`)
        ON DELETE CASCADE
);
  
CREATE TABLE `contact_details` (
    `user_id` INT NOT NULL,
    `contact_id` INT NOT NULL,
    `email` VARCHAR(30) NOT NULL,
    `phone` VARCHAR(11) NOT NULL,
    UNIQUE KEY `email` (`email`),
    UNIQUE KEY `phone` (`phone`),
    PRIMARY KEY (`user_id` , `contact_id`),
    FOREIGN KEY (`user_id`)
        REFERENCES `users` (`user_id`)
        ON DELETE CASCADE
);
