-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 03:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'sahil', '749877485', 'hi', '2023-10-23 00:08:17', 'sahil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Tank', 'The Battle Tanks', 'battle-tanks', 'A tank is an armoured fighting vehicle intended as a primary offensive weapon in front-line ground combat. Tank designs are a balance of heavy firepower, strong armour, and good battlefield mobility provided by tracks and a powerful engine; usually their main armament is mounted in a turret. They are a mainstay of modern 20th and 21st century ground forces and a key part of combined arms combat.\r\n\r\nA British Sherman tank in Italy during World War Two\r\nAn M4 Sherman tank in Italy in 1943 during WWII\r\nA Leopard 2A7 tank at a public display in Germany in 2015\r\nA Leopard 2A7 tank in Germany\r\nModern tanks are versatile mobile land weapons platforms whose main armament is a large-caliber tank gun mounted in a rotating gun turret, supplemented by machine guns or other ranged weapons such as anti-tank guided missiles or rocket launchers. They have heavy vehicle armour which provides protection for the crew, the vehicle\'s munition storage, fuel tank and propulsion systems. The use of tracks rather than wheels provides improved operational mobility which allows the tank to overcome rugged terrain and adverse conditions such as mud and ice/snow better than wheeled vehicles, and thus be more flexibly positioned at advantageous locations on the battlefield. These features enable the tank to perform well in a variety of intense combat situations, simultaneously both offensively (with direct fire from their powerful main gun) and defensively (as fire support and defilade for friendly troops due to the near invulnerability to common infantry small arms and good resistance against heavier weapons, although anti-tank weapons used in 2022, some of them man-portable, have demonstrated the ability to destroy older generations of tanks with single shots[1]),[disputed – discuss] all while maintaining the mobility needed to exploit changing tactical situations.[2] Fully integrating tanks into modern military forces spawned a new era of combat: armoured warfare.\r\n\r\nUntil the arrival of the main battle tank, tanks were typically categorized either by weight class (light, medium, heavy or superheavy tanks) or doctrinal purpose (breakthrough-, cavalry-, infantry-, cruiser-, or reconnaissance tanks). Some are larger and very heavily armoured and with large guns, while others are smaller, lightly armoured, and equipped with a smaller caliber and lighter gun. These smaller tanks move over terrain with speed and agility and can perform a reconnaissance role in addition to engaging enemy targets. The smaller, faster tank would not normally engage in battle with a larger, heavily armoured tank, except during a surprise flanking manoeuvre.', 'Leopard.jpg', '2023-10-23 00:15:39'),
(2, 'Missile', 'Missile System', 'missile', 'In military terminology, a missile is a guided airborne ranged weapon capable of self-propelled flight usually by a jet engine or rocket motor.[1] Missiles are thus also called guided missiles or guided rockets (when a previously unguided rocket is made guided). Missiles have five system components: targeting, guidance system, flight system, engine, and warhead. Missiles come in types adapted for different purposes: surface-to-surface and air-to-surface missiles (ballistic, cruise, anti-ship, anti-submarine, anti-tank, etc.), surface-to-air missiles (and anti-ballistic), air-to-air missiles, and anti-satellite weapons.\r\n\r\nAirborne explosive devices without propulsion are referred to as shells if fired by an artillery piece and bombs if dropped by an aircraft. Unguided jet- or rocket-propelled weapons are usually described as rocket artillery.', 'missile.jpg', '2023-10-23 00:19:15'),
(6, 'Battleship', 'A battleship is a large armored warship with a main battery consisting of large caliber guns.', 'battleship', 'A battleship is a large armored warship with a main battery consisting of large caliber guns. It dominated naval warfare in the late 19th and early 20th centuries.\r\n\r\nThe term battleship came into use in the late 1880s to describe a type of ironclad warship,[1] now referred to by historians as pre-dreadnought battleships. In 1906, the commissioning of HMS Dreadnought into the United Kingdom\'s Royal Navy heralded a revolution in the field of battleship design. Subsequent battleship designs, influenced by HMS Dreadnought, were referred to as \"dreadnoughts\", though the term eventually became obsolete as dreadnoughts became the only type of battleship in common use.\r\n\r\nBattleships were a symbol of naval dominance and national might, and for decades the battleship was a major factor in both diplomacy and military strategy.[2] A global arms race in battleship construction began in Europe in the 1890s and culminated at the decisive Battle of Tsushima in 1905,[3][4][5][6] the outcome of which significantly influenced the design of HMS Dreadnought.[7][8][9] The launch of Dreadnought in 1906 commenced a new naval arms race. Three major fleet actions between steel battleships took place: the long-range gunnery duel at the Battle of the Yellow Sea[10] in 1904, the decisive Battle of Tsushima in 1905 (both during the Russo-Japanese War) and the inconclusive Battle of Jutland in 1916, during the First World War. Jutland was the largest naval battle and the only full-scale clash of dreadnoughts of the war, and it was the last major battle in naval history fought primarily by battleships.[11]\r\n\r\nThe Naval Treaties of the 1920s and 1930s limited the number of battleships, though technical innovation in battleship design continued. Both the Allied and Axis powers built battleships during World War II, though the increasing importance of the aircraft carrier meant that the battleship played a less important role than had been expected in that conflict.\r\n\r\nThe value of the battleship has been questioned, even during their heyday.[12] There were few of the decisive fleet battles that battleship proponents expected and used to justify the vast resources spent on building battlefleets. Even in spite of their huge firepower and protection, battleships were increasingly vulnerable to much smaller and relatively inexpensive weapons: initially the torpedo and the naval mine, and later aircraft and the guided missile.[13] The growing range of naval engagements led to the aircraft carrier replacing the battleship as the leading capital ship during World War II, with the last battleship to be launched being HMS Vanguard in 1944. Four battleships were retained by the United States Navy until the end of the Cold War for fire support purposes and were last used in combat during the Gulf War in 1991, and then struck from the U.S. Naval Vessel Register in the 2000s. Many World War II-era battleships remain today as museum ships.', 'warship.jpg', '2023-10-23 15:47:08'),
(8, 'Helicopter', 'A helicopter is a type of rotorcraft in which lift and thrust are supplied by horizontally spinning rotors.', 'helicopter ', 'A helicopter is a type of rotorcraft in which lift and thrust are supplied by horizontally spinning rotors. This allows the helicopter to take off and land vertically, to hover, and to fly forward, backward and laterally. These attributes allow helicopters to be used in congested or isolated areas where fixed-wing aircraft and many forms of short take-off and landing (STOL) or short take-off and vertical landing (STOVL) aircraft cannot perform without a runway.\r\n\r\nIn 1942, the Sikorsky R-4 became the first helicopter to reach full-scale production.[1][2]\r\n\r\nAlthough most earlier designs used more than one main rotor, the configuration of a single main rotor accompanied by a vertical anti-torque tail rotor (i.e. unicopter, not to be confused with the single-blade monocopter) has become the most common helicopter configuration. However, twin-main rotor helicopters (bicopters), in either tandem or transverse rotors configurations, are sometimes in use due to their greater payload capacity than the monorotor design, and coaxial-rotor, tiltrotor, and compound helicopters are also all flying today. Quadrotor helicopters (quadcopters) were pioneered as early as 1907 in France, and along with other types of multicopters, have been developed mainly for specialized applications such as drones.', 'helicopter.jpg', '2023-10-23 16:09:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
