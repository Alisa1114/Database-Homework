-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 05 月 15 日 17:14
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `AlisaChen`
--

-- --------------------------------------------------------

--
-- 資料表結構 `作者`
--

CREATE TABLE `作者` (
  `筆名` varchar(10) NOT NULL DEFAULT 'ZUN',
  `性別` char(1) DEFAULT NULL,
  `生日` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `作者`
--

INSERT INTO `作者` (`筆名`, `性別`, `生日`) VALUES
('alphes', NULL, NULL),
('TOKIAME', '男', NULL),
('ZUN', '男', '1977-03-18'),
('あずまあや', '女', '1990-06-10'),
('唖采弦二', NULL, '1974-07-27'),
('春河萌', '女', NULL),
('比良坂真琴', '男', NULL),
('水炊き', '男', NULL),
('秋★枝', '女', NULL),
('銀木犀', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `參與創作`
--

CREATE TABLE `參與創作` (
  `作品名` varchar(10) NOT NULL DEFAULT '東方香霖堂',
  `作者名` varchar(10) NOT NULL DEFAULT 'ZUN',
  `負責的工作` varchar(5) NOT NULL DEFAULT '劇本'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `參與創作`
--

INSERT INTO `參與創作` (`作品名`, `作者名`, `負責的工作`) VALUES
('東方三月精', 'ZUN', '劇本'),
('東方三月精', '比良坂真琴', '漫畫'),
('東方儚月抄', 'ZUN', '劇本'),
('東方儚月抄', '秋★枝', '漫畫'),
('東方文花帖', 'ZUN', '設定'),
('東方智靈奇傳', 'ZUN', '劇本'),
('東方求聞口授', 'ZUN', '設定'),
('東方求聞史紀', 'TOKIAME', '插畫'),
('東方求聞史紀', 'ZUN', '設定'),
('東方茨歌仙', 'ZUN', '劇本'),
('東方茨歌仙', 'あずまあや', '漫畫'),
('東方醉蝶華', 'ZUN', '劇本'),
('東方醉蝶華', '水炊き', '漫畫'),
('東方鈴奈庵', '春河萌', '漫畫'),
('東方香霖堂', 'ZUN', '劇本'),
('東方香霖堂', '唖采弦二', '插圖');

-- --------------------------------------------------------

--
-- 資料表結構 `歌曲`
--

CREATE TABLE `歌曲` (
  `曲名` varchar(20) NOT NULL DEFAULT '永遠的巫女',
  `編曲者` varchar(10) NOT NULL DEFAULT 'ZUN',
  `出現的遊戲` varchar(10) NOT NULL DEFAULT '東方紅魔鄉'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `歌曲`
--

INSERT INTO `歌曲` (`曲名`, `編曲者`, `出現的遊戲`) VALUES
('ハルトマンの妖怪少女', 'ZUN', '東方地靈殿'),
('ハルトマンの妖怪少女', '岸田', '東方憑依華'),
('亡き王女の為のセプテット', 'ZUN', '東方紅魔鄉'),
('信仰は儚き人間の為に', 'ZUN', '東方風神錄'),
('少女が見た日本の原風景', 'ZUN', '東方風神錄'),
('幽雅に咲かせ、墨染の桜', 'ZUN', '東方妖妖夢'),
('故郷の星が映る海', 'ZUN', '東方紺珠傳'),
('明治十七年の上海アリス', 'ZUN', '東方紅魔鄉'),
('狂気の瞳', 'ZUN', '東方永夜抄'),
('竹取飛翔', 'ZUN', '東方永夜抄');

-- --------------------------------------------------------

--
-- 資料表結構 `玩家操縱`
--

CREATE TABLE `玩家操縱` (
  `角色名` varchar(10) NOT NULL DEFAULT '博麗靈夢',
  `遊戲名` varchar(10) NOT NULL DEFAULT '東方紅魔鄉'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `玩家操縱`
--

INSERT INTO `玩家操縱` (`角色名`, `遊戲名`) VALUES
('八雲紫', '東方永夜抄'),
('十六夜咲夜', '東方妖妖夢'),
('十六夜咲夜', '東方永夜抄'),
('博麗靈夢', '東方地靈殿'),
('博麗靈夢', '東方妖妖夢'),
('博麗靈夢', '東方永夜抄'),
('博麗靈夢', '東方紅魔鄉'),
('博麗靈夢', '東方風神錄'),
('古明地戀', '東方深秘錄'),
('射命丸文', '東方文花帖'),
('愛麗絲瑪格特羅伊德', '東方永夜抄'),
('愛麗絲瑪格特羅伊德', '東方緋想天'),
('東風谷早苗', '東方虹龍洞'),
('茨木華扇/茨華仙', '東方憑依華'),
('蕾米莉亞斯卡蕾特', '東方永夜抄'),
('西行寺幽幽子', '東方永夜抄'),
('西行寺幽幽子', '東方萃夢想'),
('霧雨魔理沙', '東方永夜抄'),
('霧雨魔理沙', '東方紅魔鄉'),
('魂魄妖夢', '東方永夜抄');

-- --------------------------------------------------------

--
-- 資料表結構 `相關作品`
--

CREATE TABLE `相關作品` (
  `作品名稱` varchar(10) NOT NULL DEFAULT '東方xxx',
  `連載日` date DEFAULT NULL,
  `完結日` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `相關作品`
--

INSERT INTO `相關作品` (`作品名稱`, `連載日`, `完結日`) VALUES
('東方三月精', '2005-03-01', '2019-09-01'),
('東方儚月抄', '2007-06-01', '2009-04-01'),
('東方文花帖', NULL, NULL),
('東方智靈奇傳', '2019-10-01', '2021-02-01'),
('東方求聞口授', NULL, NULL),
('東方求聞史紀', NULL, NULL),
('東方茨歌仙', '2010-07-01', '2019-06-01'),
('東方醉蝶華', '2019-11-01', NULL),
('東方鈴奈庵', '2012-10-01', '2017-07-01'),
('東方香霖堂', '2004-01-01', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `製作團隊`
--

CREATE TABLE `製作團隊` (
  `遊戲編號` float NOT NULL DEFAULT 1,
  `團隊名` varchar(10) COLLATE utf8_croatian_ci NOT NULL DEFAULT '上海愛麗絲幻樂團'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- 傾印資料表的資料 `製作團隊`
--

INSERT INTO `製作團隊` (`遊戲編號`, `團隊名`) VALUES
(7, '上海愛麗絲幻樂團'),
(7.5, '上海愛麗絲幻樂團'),
(7.5, '黃昏邊境'),
(10, '上海愛麗絲幻樂團'),
(10.5, '上海愛麗絲幻樂團'),
(10.5, '黃昏邊境'),
(11, '上海愛麗絲幻樂團'),
(14.5, '上海愛麗絲幻樂團'),
(15, '上海愛麗絲幻樂團'),
(18, '上海愛麗絲幻樂團');

-- --------------------------------------------------------

--
-- 資料表結構 `角色`
--

CREATE TABLE `角色` (
  `姓名` varchar(10) NOT NULL DEFAULT 'ZUN子',
  `種族` varchar(5) NOT NULL DEFAULT '妖怪',
  `性別` char(1) NOT NULL DEFAULT '女',
  `能力` varchar(10) DEFAULT NULL,
  `主人` varchar(10) DEFAULT NULL,
  `初次登場的遊戲` varchar(10) DEFAULT NULL,
  `初次登場的相關作品` varchar(10) DEFAULT NULL,
  `初次登場的稱號` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `角色`
--

INSERT INTO `角色` (`姓名`, `種族`, `性別`, `能力`, `主人`, `初次登場的遊戲`, `初次登場的相關作品`, `初次登場的稱號`) VALUES
('八坂神奈子', '神明', '女', '創造乾程度的能力', NULL, '東方風神錄', '東方求聞口授', '山坂與湖水的化身'),
('八雲紫', '妖怪', '女', '操縱境界程度的能力', NULL, '東方妖妖夢', '東方香霖堂', '神隱的主犯'),
('十六夜咲夜', '人類', '女', '控制時間程度的能力', '蕾米莉亞斯卡蕾特', '東方紅魔鄉', '東方求聞史紀', '紅魔館的女僕'),
('博麗靈夢', '人類', '女', '在空中飛行程度的能力', NULL, '東方紅魔鄉', '東方求聞史紀', '博麗神社的巫女小姐'),
('古明地戀', '覺', '女', '操控無意識程度的能力', NULL, '東方地靈殿', '東方求聞口授', '緊閉的戀之瞳'),
('奥野田美宵', '座敷童子', '女', NULL, NULL, NULL, '東方醉蝶華', '梦幻酒家鲵吞亭的店花'),
('射命丸文', '鴉天狗', '女', '操縱風程度的能力', NULL, '東方風神錄', '東方文花帖', '傳統的幻想記者'),
('愛麗絲瑪格特羅伊德', '妖怪', '女', '使用魔法程度的能力', NULL, '東方妖妖夢', '東方文花帖', '七色的人偶師'),
('東風谷早苗', '人類', '女', '引發奇蹟程度的能力', '八坂神奈子', '東方風神錄', '東方求聞口授', '祭祀風的人類'),
('茨木華扇/茨華仙', '仙人/鬼', '女', '引導動物程度的能力', NULL, '東方深秘錄', '東方茨歌仙', '獨臂有角的仙人'),
('蕾米莉亞斯卡蕾特', '吸血鬼', '女', '操縱命運程度的能力', NULL, '東方紅魔鄉', '東方求聞史紀', '永遠的鮮紅幼月'),
('西行寺幽幽子', '亡靈', '女', '操縱死亡的能力', NULL, '東方妖妖夢', '東方求聞史紀', '幽冥閣樓的亡靈少女'),
('霧雨魔理沙', '人類', '女', '使用魔法程度的能力', NULL, '東方紅魔鄉', '東方求聞史紀', '東洋的西洋魔術師'),
('魂魄妖夢', '半人半靈', '女', '使用劍術程度的能力', '西行寺幽幽子', '東方妖妖夢', '東方求聞史紀', '幽冥庭師');

-- --------------------------------------------------------

--
-- 資料表結構 `載體`
--

CREATE TABLE `載體` (
  `作品名` varchar(10) NOT NULL DEFAULT '東方香霖堂',
  `載體類型` varchar(5) NOT NULL DEFAULT '小說'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `載體`
--

INSERT INTO `載體` (`作品名`, `載體類型`) VALUES
('東方三月精', '漫畫'),
('東方儚月抄', '小說'),
('東方儚月抄', '漫畫'),
('東方文花帖', '設定集'),
('東方智靈奇傳', '漫畫'),
('東方求聞史紀', '設定集'),
('東方茨歌仙', '漫畫'),
('東方醉蝶華', '漫畫'),
('東方鈴奈庵', '漫畫'),
('東方香霖堂', '小說');

-- --------------------------------------------------------

--
-- 資料表結構 `遊戲`
--

CREATE TABLE `遊戲` (
  `遊戲名稱` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '東方ooo',
  `編號` float NOT NULL DEFAULT 0,
  `類型` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT 'STG',
  `發售日期` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `遊戲`
--

INSERT INTO `遊戲` (`遊戲名稱`, `編號`, `類型`, `發售日期`) VALUES
('東方地靈殿', 11, 'STG', '2008-08-15'),
('東方妖妖夢', 7, 'STG', '2003-08-11'),
('東方憑依華', 15.5, 'FSTG', '2017-12-29'),
('東方文花帖', 9.5, '彈幕攝影', '2005-12-30'),
('東方永夜抄', 8, 'STG', '2004-08-15'),
('東方深秘錄', 14.5, 'FSTG', '2015-05-10'),
('東方紅魔鄉', 6, 'STG', '2002-08-11'),
('東方紺珠傳', 15, 'STG', '2015-08-14'),
('東方緋想天', 10.5, 'FSTG', '2008-05-25'),
('東方萃夢想', 7.5, 'FSTG', '2004-12-30'),
('東方虹龍洞', 18, 'STG', '2021-05-04'),
('東方風神錄', 10, 'STG', '2007-08-17');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `作者`
--
ALTER TABLE `作者`
  ADD PRIMARY KEY (`筆名`);

--
-- 資料表索引 `參與創作`
--
ALTER TABLE `參與創作`
  ADD PRIMARY KEY (`作品名`,`作者名`),
  ADD KEY `作者名` (`作者名`),
  ADD KEY `作品名` (`作品名`),
  ADD KEY `作品名_2` (`作品名`,`作者名`),
  ADD KEY `作品名_3` (`作品名`,`作者名`);

--
-- 資料表索引 `歌曲`
--
ALTER TABLE `歌曲`
  ADD PRIMARY KEY (`曲名`,`出現的遊戲`),
  ADD KEY `出現的遊戲` (`出現的遊戲`);

--
-- 資料表索引 `玩家操縱`
--
ALTER TABLE `玩家操縱`
  ADD PRIMARY KEY (`角色名`,`遊戲名`),
  ADD KEY `遊戲名` (`遊戲名`),
  ADD KEY `角色名` (`角色名`);

--
-- 資料表索引 `相關作品`
--
ALTER TABLE `相關作品`
  ADD PRIMARY KEY (`作品名稱`);

--
-- 資料表索引 `製作團隊`
--
ALTER TABLE `製作團隊`
  ADD PRIMARY KEY (`遊戲編號`,`團隊名`),
  ADD KEY `遊戲編號` (`遊戲編號`);

--
-- 資料表索引 `角色`
--
ALTER TABLE `角色`
  ADD PRIMARY KEY (`姓名`),
  ADD KEY `主人` (`主人`),
  ADD KEY `初次登場的相關作品` (`初次登場的相關作品`),
  ADD KEY `初次登場的遊戲` (`初次登場的遊戲`);

--
-- 資料表索引 `載體`
--
ALTER TABLE `載體`
  ADD PRIMARY KEY (`作品名`,`載體類型`),
  ADD KEY `作品名` (`作品名`);

--
-- 資料表索引 `遊戲`
--
ALTER TABLE `遊戲`
  ADD PRIMARY KEY (`遊戲名稱`),
  ADD UNIQUE KEY `編號` (`編號`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `參與創作`
--
ALTER TABLE `參與創作`
  ADD CONSTRAINT `參與創作_ibfk_1` FOREIGN KEY (`作品名`) REFERENCES `相關作品` (`作品名稱`),
  ADD CONSTRAINT `參與創作_ibfk_2` FOREIGN KEY (`作者名`) REFERENCES `作者` (`筆名`);

--
-- 資料表的限制式 `歌曲`
--
ALTER TABLE `歌曲`
  ADD CONSTRAINT `歌曲_ibfk_1` FOREIGN KEY (`出現的遊戲`) REFERENCES `遊戲` (`遊戲名稱`);

--
-- 資料表的限制式 `玩家操縱`
--
ALTER TABLE `玩家操縱`
  ADD CONSTRAINT `玩家操縱_ibfk_1` FOREIGN KEY (`角色名`) REFERENCES `角色` (`姓名`),
  ADD CONSTRAINT `玩家操縱_ibfk_2` FOREIGN KEY (`遊戲名`) REFERENCES `遊戲` (`遊戲名稱`);

--
-- 資料表的限制式 `製作團隊`
--
ALTER TABLE `製作團隊`
  ADD CONSTRAINT `製作團隊_ibfk_1` FOREIGN KEY (`遊戲編號`) REFERENCES `遊戲` (`編號`);

--
-- 資料表的限制式 `角色`
--
ALTER TABLE `角色`
  ADD CONSTRAINT `角色_ibfk_1` FOREIGN KEY (`主人`) REFERENCES `角色` (`姓名`),
  ADD CONSTRAINT `角色_ibfk_2` FOREIGN KEY (`初次登場的相關作品`) REFERENCES `相關作品` (`作品名稱`),
  ADD CONSTRAINT `角色_ibfk_3` FOREIGN KEY (`初次登場的遊戲`) REFERENCES `遊戲` (`遊戲名稱`);

--
-- 資料表的限制式 `載體`
--
ALTER TABLE `載體`
  ADD CONSTRAINT `載體_ibfk_1` FOREIGN KEY (`作品名`) REFERENCES `相關作品` (`作品名稱`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
