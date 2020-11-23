use school_schema;

CREATE TABLE IF NOT EXISTS `school_schema`.`student` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school_schema`.`professor` (
  `professor_id` INT NOT NULL AUTO_INCREMENT,
  `professor_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE INDEX `professor_id_UNIQUE` (`professor_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school_schema`.`course` (
  `course_id` INT NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`course_id` ASC) VISIBLE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school_schema`.`grade` (
  `grade` INT NOT NULL,
  `student_student_id` INT NOT NULL,
  `course_course_id` INT NOT NULL,
  `professor_professor_id` INT NOT NULL,
  INDEX `fk_grade_course1_idx` (`course_course_id` ASC) VISIBLE,
  INDEX `fk_grade_professor1_idx` (`professor_professor_id` ASC) VISIBLE,
  INDEX `student_student_id_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `student_student_id`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `school_schema`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `course_course_id`
    FOREIGN KEY (`course_course_id`)
    REFERENCES `school_schema`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `professor_professor_id`
    FOREIGN KEY (`professor_professor_id`)
    REFERENCES `school_schema`.`professor` (`professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;