INSERT INTO user(`name`, `email`, `phone`, `password`, `created`) VALUES('user1', 'user1@test.com', '+7913', 'password1', NOW());
INSERT INTO user(`name`, `email`, `phone`, `password`, `created`) VALUES('user2', 'user2@test.com', '+7913', 'password2', NOW());
INSERT INTO user(`name`, `email`, `phone`, `password`, `created`) VALUES('user3', 'user3@test.com', '+7913', SHA2(CONCAT("salt","password3"), 512), NOW());
