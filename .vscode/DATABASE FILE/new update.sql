create database vehiclebookings;
use vehiclebookings;
CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'admin@mail.com', 'codeastro.com');

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(1, 'Elliot Gape', 'This is a demo feedback text. This is a demo feedback text. This is a demo feedback text.', 'Published'),
(2, 'Mark L. Anderson', 'Sample Feedback Text for testing! Sample Feedback Text for testing! Sample Feedback Text for testing!', 'Published'),
(3, 'Liam Moore ', 'test number 3', '');

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(2, 'admin@mail.com');

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_car_type` varchar(200) NOT NULL,
  `u_car_regno` varchar(200) NOT NULL,
  `u_car_bookdate` varchar(200) NOT NULL,
  `u_car_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`) VALUES
(3, 'Demo', 'User', '070678909', '90100 Machakos ', 'Driver', 'demouser@tms.com', 'demo123', 'SUV', 'CA1001', '2022-09-01', 'Approved'),
(4, 'John', 'Settles', '7145698540', '45 Clearview Drive', 'Driver', 'johns@mail.com', 'password', '', '', '', ''),
(5, 'Joseph', 'Yung', '7896587777', '72 Doe Meadow Drive', 'Driver', 'joseph@mail.com', 'password', '', '', '', ''),
(6, 'Vincent', 'Pelletier', '4580001456', '58 Farland Avenue', 'Driver', 'vincentp@mail.com', 'password', '', '', '', ''),
(7, 'Jesse', 'Robinson', '1458887855', '73 Fleming Way', 'Driver', 'jesser@mail.com', 'password', '', '', '', ''),
(8, 'Nelson', 'Ford', '7458965874', '58 West Side Avenue', 'User', 'nelford@mail.com', 'password', 'Sedan', 'CA1690', '2022-09-13', 'Approved'),
(9, 'Paul', 'Mills', '7412563258', '12 Red Maple Drive', 'User', 'paul@mail.com', 'password', 'Sedan', 'CA2077', '2022-09-14', 'Pending'),
(10, 'Liam', 'Moore', '7410001212', '114 Bleck Street', 'User', 'liamoore@mail.com', 'password', 'Sedan', 'CA1690', '2022-09-14', 'Approved'),
(11, 'Jeff', 'Lewis', '7854545454', '114 Test Adr', 'User', 'jeff@mail.com', 'password', 'Sedan', 'CA7700', '2022-09-14', 'Pending'),
(12, 'Kenya', 'Norman', '7896547855', '114 Test Addr', 'User', 'normank@mail.com', 'password', 'Bus', 'CA7766', '2022-09-15', 'Pending');

CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_status`) VALUES
(3, 'Euro Bond', 'CA7766', '50', 'Vincent Pelletier', 'Bus', 'buscch.jpg', 'Available'),
(4, 'Honda Accord', 'CA2077', '5', 'Joseph Yung', 'Sedan', '2019_honda_accord_angularfront.jpg', 'Available'),
(5, 'Volkswagen Passat', 'CA1690', '5', 'Jesse Robinson', 'Sedan', 'volkswagen-passat-500.jpg', 'Available'),
(6, 'Nissan Rogue', 'CA1001', '7', 'Demo User', 'SUV', 'Nissan_Rogue_SV_2021.jpg', 'Available'),
(7, 'Subaru Legacy', 'CA7700', '5', 'John Settles', 'Sedan', 'Subaru_Legacy_Premium_2022_2.jpg', 'Available');

ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);
  
  ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);
  
  ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);
  
  ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);
  
  ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);
  
  ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);
  
  ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;  
  
  ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
  
  ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
  
  select * from tms_admin;
  select * from tms_user;
   select * from tms_syslogs;