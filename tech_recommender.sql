-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2025 at 01:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_recommender`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `type` enum('single','multiple','scale') NOT NULL DEFAULT 'single',
  `tech_field_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`, `type`, `tech_field_id`, `created_at`, `updated_at`) VALUES
(1, 'I enjoy designing systems that can make decisions on their own.', 'scale', 1, '2025-07-18 14:08:14', '2025-07-18 14:08:14'),
(2, 'Which AI application excites you most?', 'single', 1, '2025-07-18 14:08:14', '2025-07-18 14:08:14'),
(3, 'I enjoy designing systems that can make decisions on their own.', 'scale', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(4, 'Which AI application excites you most?', 'single', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(5, 'You have raw sensor data from a factory. What’s your first step?', 'single', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(6, 'Rate your comfort with linear algebra and probability.', 'scale', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(7, 'Do you enjoy exploring philosophical questions about machine intelligence and ethics?', 'single', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(8, 'In five years, would you rather be researching new AI algorithms or building AI products in industry?', 'single', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(9, 'I like experimenting with different models to improve prediction accuracy.', 'scale', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(10, 'Which dataset challenge appeals to you?', 'single', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(11, 'Your model is overfitting. You would:', 'single', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(12, 'How confident are you writing preprocessing pipelines (scaling, encoding, feature selection)?', 'scale', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(13, 'How much do you enjoy hyperparameter tuning and model benchmarking?', 'scale', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(14, 'Would you prefer to be a data scientist prototyping models or a machine learning engineer productionizing models?', 'single', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(15, 'Protecting systems from attack excites me more than building new features.', 'scale', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(16, 'Which security domain interests you most?', 'single', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(17, 'You discover unusual traffic in your network. You would:', 'single', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(18, 'Have you ever taken part in a Capture The Flag (CTF) hacking competition?', 'single', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(19, 'Rate your familiarity with Linux internals and command-line tools.', 'scale', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(20, 'Do you see yourself as a red-team ethical hacker or a blue-team security analyst?', 'single', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(21, 'I enjoy architecting and writing modular, reusable code.', 'scale', 4, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(22, 'What part of building an app do you find most satisfying?', 'single', 4, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(23, 'Your build fails in production. You would:', 'single', 4, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(24, 'How comfortable are you debugging complex, multi-layered systems?', 'scale', 4, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(25, 'Have you ever contributed to an open-source project?', 'single', 4, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(26, 'Would you rather build client-facing features in a startup or design backend services at an enterprise?', 'single', 4, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(27, 'I find joy in uncovering patterns hidden within raw data.', 'scale', 5, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(28, 'Which analytics task would you pick?', 'single', 5, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(29, 'Your dataset has missing values. You would:', 'single', 5, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(30, 'Rate your proficiency with SQL and database querying.', 'scale', 5, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(31, 'Have you built a visualization using libraries like Matplotlib, D3, or Tableau?', 'single', 5, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(32, 'Would you prefer to work as a data analyst translating insights or a data scientist building predictive models?', 'single', 5, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(33, 'I enjoy creating user journeys that feel intuitive and engaging.', 'scale', 6, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(34, 'Which design activity do you find most appealing?', 'single', 6, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(35, 'Users report confusion on your page. You would:', 'single', 6, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(36, 'How comfortable are you using design tools like Figma or Sketch?', 'scale', 6, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(37, 'Have you created a clickable prototype for user testing?', 'single', 6, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(38, 'Would you rather lead UX research or head visual design?', 'single', 6, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(39, 'I enjoy architecting and managing scalable, distributed systems in the cloud.', 'scale', 7, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(40, 'Which cloud service model appeals to you most?', 'single', 7, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(41, 'Your application performance is degrading under load. You would:', 'single', 7, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(42, 'How comfortable are you writing Infrastructure as Code (e.g., Terraform, CloudFormation)?', 'scale', 7, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(43, 'Have you deployed a containerized application using Docker or Kubernetes?', 'single', 7, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(44, 'Would you rather focus on cloud architecture or DevOps CI/CD?', 'single', 7, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(45, 'I find satisfaction in creating interactive, real-time user experiences.', 'scale', 8, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(46, 'Which aspect of game creation excites you most?', 'single', 8, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(47, 'Your character movement feels “slippery.” You would:', 'single', 8, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(48, 'How confident are you with a game engine (e.g., Unity, Unreal) editor?', 'scale', 8, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(49, 'Have you ever published a playable demo or prototype of a game?', 'single', 8, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(50, 'In your ideal role, would you be a gameplay programmer or a technical artist?', 'single', 8, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(51, 'I enjoy building systems that connect physical devices to the internet.', 'scale', 9, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(52, 'Which IoT domain interests you most?', 'single', 9, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(53, 'A remote sensor loses connectivity. You would:', 'single', 9, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(54, 'How comfortable are you programming embedded microcontrollers (e.g., Arduino, ESP32)?', 'scale', 9, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(55, 'Have you ever worked with MQTT or another IoT messaging protocol?', 'single', 9, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(56, 'Would you prefer designing low-power embedded hardware or developing cloud-based analytics for IoT data?', 'single', 9, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(57, 'I enjoy designing mechanical systems that can operate autonomously.', 'scale', 10, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(58, 'Which robotics domain appeals to you most?', 'single', 10, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(59, 'Your robot’s arm misses its target repeatedly. You would:', 'single', 10, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(60, 'How comfortable are you programming real-time control loops?', 'scale', 10, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(61, 'Have you ever built or prototyped an embedded robotics project?', 'single', 10, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(62, 'In your next role, would you rather develop control software for autonomous machines or design and test robotic hardware?', 'single', 10, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(63, 'I’m fascinated by decentralized systems and peer-to-peer protocols.', 'scale', 11, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(64, 'Which blockchain use-case excites you most?', 'single', 11, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(65, 'You discover a vulnerability in a smart contract. You would:', 'single', 11, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(66, 'How proficient are you with cryptographic concepts like hashing and digital signatures?', 'scale', 11, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(67, 'Have you ever written or audited Solidity (or similar) smart-contract code?', 'single', 11, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(68, 'Would you prefer architecting scalable blockchain networks or developing end-user decentralized applications?', 'single', 11, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(69, 'qweqwe', 'scale', NULL, '2025-07-18 20:23:18', '2025-07-18 20:23:18'),
(70, 'Example', 'scale', 5, '2025-07-18 20:24:40', '2025-07-18 20:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `question_flows`
--

CREATE TABLE `question_flows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` smallint(5) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `next_question_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` smallint(5) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `text`, `value`, `created_at`, `updated_at`) VALUES
(1, 4, 'Autonomous vehicles', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(2, 4, 'Natural language chatbots', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(3, 4, 'Image recognition for healthcare', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(4, 4, 'Intelligent game NPCs', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(5, 5, 'Write rules to flag anomalies', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(6, 5, 'Cluster the data to find patterns', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(7, 5, 'Train a model to predict failures', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(8, 5, 'Visualize trends for human review', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(9, 7, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(10, 7, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(11, 8, 'Researching new AI algorithms', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(12, 8, 'Building AI products in industry', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(13, 10, 'Extremely large-scale data (Big Data pipelines)', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(14, 10, 'Noisy, real-world data cleaning', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(15, 10, 'Time-series forecasting', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(16, 10, 'Imbalanced classification problems', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(17, 11, 'Collect more training data', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(18, 11, 'Simplify the model (fewer features)', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(19, 11, 'Add regularization', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(20, 11, 'Use an ensemble method', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(21, 14, 'Data scientist prototyping models', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(22, 14, 'Machine learning engineer productionizing models', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(23, 16, 'Network penetration testing', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(24, 16, 'Secure software development (DevSecOps)', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(25, 16, 'Forensics and incident response', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(26, 16, 'Cryptography and encryption', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(27, 17, 'Block the source IP immediately', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(28, 17, 'Capture traffic and analyze patterns', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(29, 17, 'Patch vulnerable services first', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(30, 17, 'Notify stakeholders and isolate the segment', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(31, 18, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(32, 18, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(33, 20, 'Red-team ethical hacker', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(34, 20, 'Blue-team security analyst', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(35, 22, 'Designing the data models and APIs', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(36, 22, 'Crafting intuitive user interactions', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(37, 22, 'Optimizing performance and resource use', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(38, 22, 'Integrating third-party services', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(39, 23, 'Write a failing test case and fix the code', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(40, 23, 'Roll back and analyze logs', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(41, 23, 'Automate deployment scripts to prevent recurrence', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(42, 23, 'Notify stakeholders and patch urgently', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(43, 25, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(44, 25, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(45, 26, 'Client-facing features at a startup', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(46, 26, 'Backend services at an enterprise', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(47, 28, 'Exploratory data analysis and visualization', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(48, 28, 'Statistical hypothesis testing', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(49, 28, 'Building dashboards for stakeholders', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(50, 28, 'Developing ETL pipelines', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(51, 29, 'Impute with mean/median', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(52, 29, 'Drop the incomplete rows', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(53, 29, 'Use a model-based imputation', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(54, 29, 'Treat “missing” as its own category', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(55, 31, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(56, 31, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(57, 32, 'Data analyst translating insights', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(58, 32, 'Data scientist building predictive models', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(59, 34, 'Wireframing user flows', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(60, 34, 'Crafting high-fidelity visual mockups', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(61, 34, 'Conducting usability testing', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(62, 34, 'Defining interaction animations', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(63, 35, 'Run A/B tests on alternate layouts', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(64, 35, 'Interview users for direct feedback', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(65, 35, 'Simplify navigation labels and icons', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(66, 35, 'Add inline help tooltips', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(67, 37, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(68, 37, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(69, 38, 'Lead UX research', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(70, 38, 'Head visual design', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(71, 40, 'IaaS', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(72, 40, 'PaaS', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(73, 40, 'SaaS', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(74, 40, 'Serverless Functions', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(75, 41, 'Auto-scale additional instances dynamically', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(76, 41, 'Implement CDN caching for static assets', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(77, 41, 'Optimize database queries and connections', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(78, 41, 'Introduce message queues to smooth traffic spikes', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(79, 43, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(80, 43, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(81, 44, 'Cloud architecture', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(82, 44, 'DevOps CI/CD', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(83, 46, 'Designing game mechanics and rules', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(84, 46, 'Implementing 2D/3D graphics and shaders', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(85, 46, 'Writing physics and collision systems', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(86, 46, 'Integrating audio and sound effects', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(87, 47, 'Tweak physics parameters for friction and mass', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(88, 47, 'Smooth input handling with interpolation', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(89, 47, 'Rewrite the control script for more rigid constraints', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(90, 47, 'Add inverse kinematics for natural motion', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(91, 49, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(92, 49, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(93, 50, 'Gameplay programmer', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(94, 50, 'Technical artist', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(95, 52, 'Smart home automation', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(96, 52, 'Industrial sensor networks', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(97, 52, 'Wearable health monitors', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(98, 52, 'Connected vehicles', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(99, 53, 'Buffer readings locally and retry periodically', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(100, 53, 'Switch to a backup communication protocol', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(101, 53, 'Send an alert to a monitoring dashboard', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(102, 53, 'Reboot the device remotely', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(103, 55, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(104, 55, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(105, 56, 'Designing hardware', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(106, 56, 'Developing cloud analytics', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(107, 58, 'Industrial assembly line robots', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(108, 58, 'Autonomous drones and UAVs', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(109, 58, 'Service robots (e.g., health, hospitality)', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(110, 58, 'Humanoid/social robots', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(111, 59, 'Calibrate the joint servos and recalibrate encoders', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(112, 59, 'Refine the motion-planning algorithm', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(113, 59, 'Add sensors for better feedback (e.g., vision)', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(114, 59, 'Simplify the mechanical linkage design', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(115, 61, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(116, 61, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(117, 62, 'Develop control software', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(118, 62, 'Design and test hardware', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(119, 64, 'Cryptocurrency and digital payments', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(120, 64, 'Smart contracts for decentralized applications', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(121, 64, 'Supply-chain provenance tracking', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(122, 64, 'Decentralized identity and authentication', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(123, 65, 'Write and deploy a patch immediately', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(124, 65, 'Alert the community and freeze the contract', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(125, 65, 'Audit all related contracts for similar issues', 2, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(126, 65, 'Roll back to a previous safe version', 3, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(127, 67, 'Yes', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(128, 67, 'No', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(129, 68, 'Architect scalable networks', 0, '2025-07-18 14:11:49', '2025-07-18 14:11:49'),
(130, 68, 'Develop decentralized applications', 1, '2025-07-18 14:11:49', '2025-07-18 14:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tech_field_id` tinyint(3) UNSIGNED NOT NULL,
  `score` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`id`, `user_id`, `tech_field_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 4, 8, 0.7, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(2, 4, 10, 0.95, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(3, 4, 6, 0.89, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(4, 5, 10, 0.83, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(5, 5, 9, 0.79, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(6, 5, 3, 0.82, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(7, 6, 5, 0.61, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(8, 6, 1, 0.75, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(9, 6, 6, 0.7, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(10, 7, 6, 0.75, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(11, 7, 9, 0.86, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(12, 7, 11, 0.64, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(13, 8, 11, 0.9, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(14, 8, 9, 0.64, '2025-07-19 04:49:03', '2025-07-19 04:49:03'),
(15, 8, 4, 0.96, '2025-07-19 04:49:03', '2025-07-19 04:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` smallint(5) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `user_id`, `question_id`, `option_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 4, 49, 92, NULL, '2025-07-18 23:11:01', '2025-07-18 23:11:01'),
(2, 4, 35, 65, NULL, '2025-07-18 23:11:02', '2025-07-18 23:15:57'),
(3, 4, 20, 34, NULL, '2025-07-18 23:15:18', '2025-07-18 23:20:19'),
(4, 4, 10, 15, NULL, '2025-07-18 23:15:20', '2025-07-18 23:15:20'),
(5, 4, 43, 80, NULL, '2025-07-18 23:15:23', '2025-07-18 23:15:23'),
(6, 4, 38, 70, NULL, '2025-07-18 23:15:26', '2025-07-18 23:15:26'),
(7, 4, 64, 120, NULL, '2025-07-18 23:15:29', '2025-07-18 23:20:13'),
(8, 4, 11, 18, NULL, '2025-07-18 23:15:33', '2025-07-18 23:15:33'),
(9, 4, 47, 87, NULL, '2025-07-18 23:15:36', '2025-07-18 23:15:36'),
(10, 4, 12, NULL, '1', '2025-07-18 23:15:39', '2025-07-18 23:20:35'),
(11, 4, 55, 104, NULL, '2025-07-18 23:15:43', '2025-07-18 23:15:43'),
(12, 4, 30, NULL, '3', '2025-07-18 23:15:48', '2025-07-18 23:15:48'),
(13, 4, 46, 84, NULL, '2025-07-18 23:15:51', '2025-07-18 23:15:51'),
(14, 4, 28, 47, NULL, '2025-07-18 23:15:53', '2025-07-18 23:15:53'),
(15, 4, 23, 41, NULL, '2025-07-18 23:16:00', '2025-07-18 23:16:00'),
(16, 4, 39, NULL, '2', '2025-07-18 23:16:04', '2025-07-18 23:16:04'),
(17, 4, 8, 11, NULL, '2025-07-18 23:16:06', '2025-07-18 23:16:06'),
(18, 4, 32, 57, NULL, '2025-07-18 23:16:08', '2025-07-18 23:20:24'),
(19, 4, 1, NULL, '2', '2025-07-18 23:16:12', '2025-07-18 23:16:12'),
(20, 4, 6, NULL, '2', '2025-07-18 23:16:15', '2025-07-18 23:16:15'),
(21, 4, 31, 56, NULL, '2025-07-18 23:16:17', '2025-07-18 23:16:17'),
(22, 4, 3, NULL, '4', '2025-07-18 23:16:19', '2025-07-18 23:20:45'),
(23, 4, 57, NULL, '4', '2025-07-18 23:16:23', '2025-07-18 23:16:23'),
(24, 4, 29, 54, NULL, '2025-07-18 23:16:25', '2025-07-18 23:20:20'),
(25, 4, 14, 22, NULL, '2025-07-18 23:16:26', '2025-07-18 23:16:26'),
(26, 4, 34, 59, NULL, '2025-07-18 23:16:28', '2025-07-18 23:20:16'),
(27, 4, 53, 101, NULL, '2025-07-18 23:16:29', '2025-07-18 23:16:29'),
(28, 4, 25, 44, NULL, '2025-07-18 23:20:14', '2025-07-18 23:20:14'),
(29, 4, 16, 24, NULL, '2025-07-18 23:20:15', '2025-07-18 23:20:15'),
(30, 4, 45, NULL, '1', '2025-07-18 23:20:18', '2025-07-18 23:20:18'),
(31, 4, 17, 28, NULL, '2025-07-18 23:20:21', '2025-07-18 23:20:21'),
(32, 4, 13, NULL, '1', '2025-07-18 23:20:23', '2025-07-18 23:20:23'),
(33, 4, 48, NULL, '1', '2025-07-18 23:20:25', '2025-07-18 23:20:25'),
(34, 4, 67, 128, NULL, '2025-07-18 23:20:26', '2025-07-18 23:20:26'),
(35, 4, 52, 95, NULL, '2025-07-18 23:20:27', '2025-07-18 23:20:27'),
(36, 4, 70, NULL, '2', '2025-07-18 23:20:31', '2025-07-18 23:20:31'),
(37, 4, 33, NULL, '1', '2025-07-18 23:20:33', '2025-07-18 23:20:33'),
(38, 4, 54, NULL, '5', '2025-07-18 23:20:40', '2025-07-18 23:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(2, 'student', '2025-07-16 10:19:37', '2025-07-16 10:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `senior_high_grade` decimal(5,2) DEFAULT NULL COMMENT 'Senior High School final grade (0–100)',
  `interests` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`interests`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `user_id`, `full_name`, `date_of_birth`, `gender`, `gpa`, `senior_high_grade`, `interests`, `created_at`, `updated_at`) VALUES
(1, 4, 'Van Rodolf Suliva', '2025-07-01', 'male', 2.00, 90.00, '[\"Programming\",\"Web Development\",\"Mobile Apps\",\"Data Science\",\"Cybersecurity\",\"Networking\"]', '2025-07-21 00:28:33', '2025-07-21 00:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `tech_fields`
--

CREATE TABLE `tech_fields` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_fields`
--

INSERT INTO `tech_fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence & ML', 'AI, machine learning and neural networks', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(2, 'Web Development', 'Frontend & backend web technologies', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(3, 'Mobile Development', 'iOS, Android and cross-platform apps', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(4, 'Data Science', 'Data analysis, statistics, and visualization', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(5, 'Cybersecurity', 'Security, penetration testing, cryptography', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(6, 'Cloud Computing', 'AWS, Azure, GCP and distributed systems', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(7, 'Internet of Things', 'Embedded systems and sensor networks', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(8, 'Game Development', '2D/3D game engines and design', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(9, 'DevOps', 'CI/CD, automation, and infrastructure as code', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(10, 'Blockchain', 'Distributed ledgers and smart contracts', '2025-07-16 10:19:37', '2025-07-16 10:19:37'),
(11, 'UI/UX Design', 'User experience and interface design', '2025-07-16 10:19:37', '2025-07-16 10:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@example.com', NULL, '$2y$10$UBkANj/50SxF7I/k4C9wR.5oI9Xe.3ybWFgAbjvvAlIPtUP9Hfqle', NULL, '2025-07-18 16:48:12', '2025-07-18 16:48:12'),
(4, 'Student 1', 'student1@example.com', NULL, '$2y$10$ukX.f5YXlDYxlx1ptV.UxuVdHFvCvsoKDCxaejFQFG9kse0G94N/i', 'vagK7oFlRLd0stPD9GC1T0LW9zQ8N06H0viLNZrf7XTMwuynMTSRZXNitRrC', '2025-07-18 16:49:52', '2025-07-18 16:49:52'),
(5, 'Student 2', 'student2@example.com', NULL, '$2y$10$xP2wZcZiq1O9cyvM/koQ5uc9gYIbNLa3MQ594LNdoR97AJsgqcfm2', NULL, '2025-07-18 16:49:52', '2025-07-18 16:49:52'),
(6, 'Student 3', 'student3@example.com', NULL, '$2y$10$eb8UpFEXbkwtvVc6RAQcd.tZphK7SY.acRiqqr.kw5gDLy4PbgeU.', NULL, '2025-07-18 16:49:52', '2025-07-18 16:49:52'),
(7, 'Student 4', 'student4@example.com', NULL, '$2y$10$wGX6OR3Jyr.aiAgdxskW/.VEZw3qDuElUc3ouoTa3cn7SscpUC.9G', NULL, '2025-07-18 16:49:52', '2025-07-18 16:49:52'),
(8, 'Student 5', 'student5@example.com', NULL, '$2y$10$0sQyqsgUoKQHcAQc8jblreDo2TfeWuoOPBXKE1HacnOI3Y9TmFqo6', NULL, '2025-07-18 16:49:52', '2025-07-18 16:49:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_q_tf` (`tech_field_id`);

--
-- Indexes for table `question_flows`
--
ALTER TABLE `question_flows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_question_flows_question_id` (`question_id`),
  ADD KEY `fk_question_flows_option_id` (`option_id`),
  ADD KEY `fk_question_flows_next_question_id` (`next_question_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`);

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_techfield` (`user_id`,`tech_field_id`),
  ADD KEY `recommendations_tech_field_id_foreign` (`tech_field_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `fk_ru_role` (`role_id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `tech_fields`
--
ALTER TABLE `tech_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `question_flows`
--
ALTER TABLE `question_flows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tech_fields`
--
ALTER TABLE `tech_fields`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_q_tf` FOREIGN KEY (`tech_field_id`) REFERENCES `tech_fields` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `question_flows`
--
ALTER TABLE `question_flows`
  ADD CONSTRAINT `fk_question_flows_next_question_id` FOREIGN KEY (`next_question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_question_flows_option_id` FOREIGN KEY (`option_id`) REFERENCES `question_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_question_flows_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD CONSTRAINT `recommendations_tech_field_id_foreign` FOREIGN KEY (`tech_field_id`) REFERENCES `tech_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recommendations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `question_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `responses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_ru_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ru_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
