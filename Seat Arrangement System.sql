CREATE TABLE `Exams` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `date` date
);

CREATE TABLE `Students` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `roll_number` varchar(255)
);

CREATE TABLE `Rooms` (
  `id` int PRIMARY KEY,
  `room_number` varchar(255),
  `capacity` int
);

CREATE TABLE `SeatAssignments` (
  `id` int PRIMARY KEY,
  `exam_id` int,
  `room_id` int,
  `student_id` int,
  `seat_number` int
);

ALTER TABLE `SeatAssignments` ADD FOREIGN KEY (`exam_id`) REFERENCES `Exams` (`id`);

ALTER TABLE `SeatAssignments` ADD FOREIGN KEY (`room_id`) REFERENCES `Rooms` (`id`);

ALTER TABLE `SeatAssignments` ADD FOREIGN KEY (`student_id`) REFERENCES `Students` (`id`);
