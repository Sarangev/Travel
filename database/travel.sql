-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 14, 2021 at 03:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phoneno` int(15) NOT NULL,
  `desti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `firstname`, `lastname`, `emailid`, `city`, `phone`, `desti`) VALUES
(1, 'Sreeram', 'Nair', 'sreeramnair2001@gmail.com', 'Allapuzha', 2147483647, 'ATHIRAPALLY WATERFALLS'),
(2, 'kiran', 'S', 'kirans1@gmail.com', 'Kollam', 845868956, 'FORT KOCHI'),
(7, 'Ganesh', 'M', 'ganesh2002@gmaom', 'Kannur', 2147483647, 'KOVALAM BEACH'),
(8, 'Jithesh', 'H', 'jitesh45@gmail.com', 'Coimbatore', 458696561, 'SASTHAMKOTTA LAKE'),
(9, 'Vipin', 'Das', 'vipindas2001@gmail.com', 'Selam', 2147483647, 'BEKAL FORT'),
(10, 'Archana', 'Nk', 'archanank2001@gmail.com', 'Delhi', 2147483647, 'VEMBANAD LAKE'),
(11, 'Sarang', 'EV', 'sarangev@gmail.com', 'Gujarat', 2147483647, 'SILENT VALLEY'),
(12, 'Asha ', 'wilson', 'ashakwilson2001@gmail.com', 'Kolkata', 2147483647, 'MALAMPUZHA DAM');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(1, 'Sreeram',s123, 'sreeramnair2001@gmail.com', 'Allapuzha', 2147483647),
(2, 'kiran', k123, 'kirans1@gmail.com', 'Kollam', 845868956),
(7, 'Ganesh', g123, 'ganesh2002@gmaom', 'Kannur', 2147483647),
(8, 'Jithesh', j123, 'jitesh45@gmail.com', 'Coimbatore', 458696561),
(9, 'Vipin', v123, 'vipindas2001@gmail.com', 'Selam', 2147483647),
(10, 'Archana', a123, 'archanank2001@gmail.com', 'Delhi', 2147483647),
(11, 'Sarang', e123, 'sarangev@gmail.com', 'Gujarat', 2147483647),
(12, 'Asha ', w123, 'ashakwilson2001@gmail.com', 'Kolkata', 2147483647);


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'Sarang', 'sarangev@gmail.com', 'good website'),
(2, 'Asha', 'ashakwilson@gmail.com', 'nice website'),
(3, 'Vipin', 'vipindas2001@gmail.com', 'your website looks good and nice user interface'),
(4, 'archana', 'archanank2001@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun', 'arjun45@gmal.com', 'good website'),
(6, 'Jitesh', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran', 'kiran35@gmail.com', 'this is a good website');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Hotel PIGEON', '78869565', 'Kozhikode'),
(2, 'Hotel SAGAR', '78869565', 'Benglore');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
('Fort Kochi','A charming seaside area, Fort Kochi is known for its Dutch, Portuguese, and British colonial architecture, and elaborate bamboo fishing nets at Fort Kochi Beach. St. Francis Church was the original burial site of explorer Vasco da Gama. Upscale eateries and chic cafes serve Keralan specialties, and quaint shops sell cotton clothing and handmade souvenirs. Heritage buildings house contemporary art galleries', 'images//destination//Fortkochi.jpg', 'images//destination//Fortkochi2.jpg', 15000),
('Silent Valley', 'Silent Valley is one of the extensively researched National Parks in India. There is a vast amount of information available on the Parks biodiversity and ecology. Research activities are conducted within the National Park in order to fill the gaps in the knowledge and also to help management, 'images//destination//kerala1.jpg', 'images//destination//kerala2.jpg', 'images//destination//kerala3.jpg', 'images//destination//kerala4.jpg', 10000),
('Athirapally Waterfalls','Athirapilly Falls is situated in Athirapilly Panchayat in Chalakudy Taluk of Thrissur District in Kerala, India on the Chalakudy River, which originates from the upper reaches of the Western Ghats at the entrance to the Sholayar ranges. It is the largest waterfall in Kerala, which stands tall at 81.5 feet ', 'images//destination//mysore1.jpg', 'images//destination//mysore2.jpg', 'images//destination//mysore3.jpg', 'images//destination//mysore4.jpg', 9000),
('Kovalam Beach','Kovalam is an internationally renowned beach with three adjacent crescent beaches. It has been a favourite haunt of tourists since the 1930s. A massive rocky promontory on the beach has created a beautiful bay of calm waters ideal for sea bathing.

The leisure options at this beach are plenty and diverse. Sunbathing, swimming, herbal body toning massages, special cultural programmes and catamaran cruising are some of them. The tropical sun acts so fast that one can see the faint blush of coppery tan on the skin in a matter of minutes. Life on the beach begins late in the day and carries on well into the night. The beach complex includes a string of budget cottages, Ayurvedic health resorts, convention facilities, shopping zones, swimming pools, Yoga and Ayurvedic massage centres. ', 20000),
('Sasthamkotta Lake', 'Sasthamcotta Lake or Sasthamkotta Lake, also categorized as a wetland, is the largest fresh water lake in Kerala, a state of India on the south of the West Coast. The lake is named after the ancient Sastha temple (a pilgrimage centre) located on its bank. It meets the drinking water needs of half million people of the Quilon district and also provides fishing resources. The purity of the lake water for drinking use is attributed to the presence of large population of larva called cavaborus that consumes bacteria in the lake water. The lake is a designated wetland of international importance under the Ramsar Convention since November 2002', 'images//destination//tajmahal3.jpg', 'images//destination//tajmahal4.jpg', 19000),
('Nelliampathy', 'Nelliyampathy Hill Station: This fascinating hill station is at a height of 467 to 1,572 m above sea level. This hilly village is the delight of trekkers. Location: 65 Km from Palakkad (Palakkad-Nemmara of Trichur – Vadakkenchery – Nemmara route) 25 Km deviation from Nemmara. Attractions/Sight Seeing Points: Sitharkundu view point, Manpara view point, Kesavanpara view point, Victoria Church Hills, Karappara Dam site. Trekking Options: Hill top(via Lilli)-6Km, Karassuri(Near Anamada)-13Km,Parambikulam 20 Km.(Subject to permission from Forest Division) Tea/Cardamon/Coffee/Plantations-Orange & Vegitable Farm of Agriculture Department/ Pothundy – earth dam and garden en-route to Nelliyampathy', 'images//destination//india_gate4.jpg', 10000),
('Hampi', 'Hampi is one of finest historical sites of ancient age in the world. It was the initial capital city of famous historical Vijayanagara Empire located on the bank of Tungabhadra River about 11 km away from Hospet City. Hampi is a small location covered an area of 25 sq. km. and it is totally bounded by mountains (Anjaneya, Malyavanta and Matanga Hills) by the three sites and rest one site is bordered by Tungabhadra River. It is believed by Hindus that Hampi was a kingdom of Monkeys (according to the Ramayana) before Vijayanagara Empire in pre-ancient age (around 1 CE) when the city was known as Kishkindha.', 'images//destination//hampi1.jpg', 'images//destination//hampi2.jpg', 'images//destination//hampi3.jpg', 'images//destination//hampi4.jpg', 5000),
('Munnar','Munnar, the famed hill station of south India, is a romantic locale where natural beauty is everywhere to visit, explore and to enjoy. Munnar is situated at the confluence of three mountain streams – Muthirapuzha, Nallathanni and Kundala – and the word ‘Munnar’ means three rivers in Malayalam.  Situated about 1600m above sea level, the hill station had been the summer resort of the British Government during the colonial era. Imprints of the colonial past stand tall in the Munnar town in the form of English country cottages. Virgin forests, savannah, rolling hills, scenic valleys, numerous streams, huge splashy waterfalls, sprawling tea plantations and winding walkways are all part of the great holiday experience on offer for a traveler to Munnar. Munnar is also known for Neelakurinji, a rare plant which flowers only once in twelve years. The ‘kurinji season’ in Munnar is a magnificent sight when the hills and valleys get bathed in the blue of the Neelakurinji blooms',25000);
-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('aditi', '784596', '2021-01-20 05:56:33am'),
('anusha', '45789656', '2021-01-20 06:06:24am'),
('adil', '123456', '2021-01-20 08:15:18am'),
('gayatri', '12356', '2021-01-22 10:13:22am'),
('gaja', '123456', '2021-01-24 06:40:56am'),
('nisha', 'nishi123', '2021-01-24 07:09:22am'),
('mahesh', '12345mn', '2021-01-24 07:10:00am'),
('admin', 'ad123', '2021-01-24 07:10:24am'),
('admin', 'ad123', '2021-01-25 05:54:18am'),
('admin', 'ad123', '2021-01-25 06:07:10am'),
('admin', 'ad123', '2021-01-25 06:09:19am'),
('admin', 'ad123', '2021-01-27 01:30:47pm'),
('admin', 'ad123', '2021-01-29 09:23:58am'),
('Gauri', 'GAju700', '2021-01-30 06:13:16pm'),
('Ganesh', 'Gane1234', '2021-01-30 06:24:15pm'),
('admin', 'ad123', '2021-06-08 04:11:53pm'),
('admin', 'ad123', '2021-09-19 03:24:26pm'),
('admin', 'ad123', '2021-09-19 04:41:06pm');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Sasthamkotta', 'Kollam'),
(2, 'Malambuzha', 'Palakkad'),
(3, 'Wild Life centuary', 'Wayanad'),
(4, 'Aleppy Beach', 'Alappuzha'),
(5, 'Thalassery fort', 'Kannur'),
(6, 'Kappad Beach', 'Kozhikode');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'amal', 'amalraj123@gmail.com', 85749646, 'Palakksd'),
(2, 'akhila', 'akhila23@gmai.com', 45968678, 'Kozhikode'),
(3, 'karthik', 'karthi34@gmail.com', 78969665, 'Alappuzha');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
