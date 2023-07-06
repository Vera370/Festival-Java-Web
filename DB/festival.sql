-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: F
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festival` (
  `num` bigint NOT NULL,
  `mouth` bigint DEFAULT NULL,
  `name` text,
  `date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `intro` text,
  `origin` text,
  `custom` text,
  `diet` text,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,1,'春节','农历正月初一','据说每年的送神日（旧历十二月廿四日，有些地区是廿三日），灶君、太岁与民间诸神要回天庭向玉皇大帝述职，报告人间善恶，俗称送神日。旧历十二月廿五日，玉帝会派遣代天巡狩之神或其他天神下凡，监护人世，称为“天神下降”。\n\n到了正月初四日的下午，天神回天，而原本民间供奉的灶君、新的值年太岁与诸位神明，将回到凡间，继续保佑百姓，基于人情味的关系，希望让神明在天庭多享受一会儿，所以中国、越南、朝鲜半岛、琉球地区（汉字文化圈）的民众会在正月初四日午时以后才祭祀神明，迎接神明回返人间。俗谓：“送神早，接神晚”，因此接神的祭典大多是在下午才举行。一般会准备新年的年糕、发糕、桂圆、米果、麻粩、寸枣、生仁糖、冬瓜糖等应景食品祭拜，茶水则多使用甜茶。\n\n最重要的是纸钱，除了一般金纸之外，必焚烧“云马”或“甲马”，这是一种绘有马匹与随从武士的纸钱，可提供神祇作为交通工具，有些佛教徒也会焚烧纸莲花给佛、菩萨、祖师。\n一般家庭会在正月初四日接神。而公司行号、店家则在初四或初五等为迎接财神。','春节是指汉字文化圈传统上的农历新年，传统名称为新年、大年、新岁，但口头上又称度岁、庆新岁、过年。古时春节曾专指节气中的立春，也被视为一年的开始，后来改为农历正月初一开始为新年，一般认为至少要到正月十五（上元节）新年才结束。春节和新年的概念，最初的含意来自农业，古时人们把谷的生长周期称为“年”，《说文。禾部》：“年，谷熟也”。春节（夏历新年）源自何时很难考究，不过一般认为起源于中国殷商时期的年头岁末祭神、祭祖活动（腊祭）。\n\n夏商时代产生的夏历以月亮圆缺的周期（现称朔望月，即后所述“阴月”）为月，一年划分为十二个月，以不见月亮的那天（朔日）为月首，同时以冬至点回归运动的周期（现称回归年或太阳年，即后所述“阳年”）为年，并设闰月调整阴月阳年。以正月朔日的子时（夜半）为岁首，即一年的开始，岁末年初要进行旧一年丰收的庆祝和新一年好收成的祈祷，于是产生一系列祭神、祭祖、庆祝、祈祷等活动。\n\n“年”的名称是从周朝开始的。至于岁首（一年开始）时间的确定（换言之，月序的排列）还与天文历法有关（如前所述），传说夏在寅月（今农历正月），商在丑月（今农历十二月），周在子月（今农历十一月，即冬至所在月），秦在亥月（今农历十月），到西汉才又恢复夏正，定寅月（今农历正月）为岁首，一直沿用至今。\n\n但古时的正月初一被称为元旦、元日、新正等，直到中国近代辛亥革命胜利后，南京临时政府为了顺应农时和便于统计（其实指导农时的是夏历的阳历部分-二十四节气），规定在民间使用夏历（农历），在政府机关、厂矿、学校和团体中实行公历（纪年不用公元纪年法而用民国纪年法）。到新中国成立前夕，1949年9月27日，中国人民政治协商会议上才正式把夏历（农历）新年定为“春节”，因而至今仍有许多人将过春节叫过年。\n\n实际上古代的“春节”，是指农历二十四节气中的“立春”。','[{\"买年货\": \"中国的年俗文化源远流长，全国各地衍生出纷繁多样的过年习俗，南北迥异，各具特色。虽然各地习俗不尽相同，但是备年货、送年礼却是几乎全国上下的“过年必备”。置办年货，包括吃的、穿的、戴的、用的、贴的（年红）、送的（拜年）礼物等等，统名曰之“年货”，而把采购年货的过程称之为“办年货”。办年货是中国人过春节的一项重要活动。\\n民间谚语称“腊月二十六 ，割年肉”，说的是这一天主要筹备过年的肉食。将“割年肉”放入年谣，是因为农耕社会经济不发达，人们只有在一年一度的年节中才能吃到肉，故此称为“年肉”。\"}, {\"祭灶\": \"民间祭灶，源于古人拜火习俗。如《释名》中说：“灶。造也，创食物也。”灶神的职责就是执掌灶火，管理饮食，后来扩大为考察人间善恶，以降福祸。祭灶在中国民间有几千年历史了，灶神信仰是中国百姓对“衣食有余”梦想追求的反映.\"}, {\"扫尘\": \"在民间，新年前夕有“腊月二十四，扫尘（亦称扫屋）的习俗。民谚称“二十四，扫房子”。民间称做“扫尘日”。扫尘就是年终大扫除，家家户户都要打扫环境，清洗各种器具，拆洗被褥窗帘，洒扫六闾庭院，掸拂尘垢蛛网，疏浚明渠暗沟。到处洋溢着欢欢喜喜搞卫生、干干净净迎新春的欢乐气氛。按民间的说法：因“尘”与“陈”谐音，年前扫尘有“除陈布新”的涵义。扫尘用意是要把一切穷运、晦气统统扫出门，以祈来年清吉。\"}, {\"贴年红（挥春）\": \"年廿八、廿九或三十日家家户户“贴年红”（年红是春联、门神、年画、福字、横批、窗花等的统称，因这些是过年时贴的红色喜庆元素，所以统称为“年红”）。贴年红是中华传统过年习俗，它反映了人民大众的风俗和信仰，增添喜庆的节日气氛，并寄予着人们对新年新生活的美好期盼。\\n ⑴贴春联：根据《玉烛宝典》、《燕京岁时记》等文学作品记载，春联的原始形式就是人们所说的“桃符”。春联的另一来源是春贴，古人在立春日多贴“宜春”二字，后渐渐发展为春联。贴春联也叫贴门对、春贴、对联、对子、桃符等，它以工整、对偶、简洁、精巧的文字描绘时代背景，抒发美好愿望，是中国特有的文学形式。每逢春节，无论城市还是农村，家家户户都要精选一幅大红春联贴于门上，为节日增加喜庆气氛。\\n⑵贴年画：春节挂贴年画在城乡也很普遍，浓墨重彩的年画给千家万户平添了许多兴旺欢乐的喜庆气氛。年画是中国的一种古老的民间艺术，反映了人民朴素的风俗和信仰，寄托着他们对未来的希望。随着木板印刷术的兴起，年画的内容已不仅限于门神之类单调的主题，变得丰富多彩。\\n⑶窗花与“福”字：在民间人们还喜欢在窗户上贴上各种剪纸——窗花。窗花不仅烘托了喜庆的节日气氛，也集装饰性、欣赏性和实用性于一体。同时，一些人家要在屋门上、墙壁上、门楣上贴上大大小小的“福”字。民间还有将“福”字精描细做成各种图案的，图案有寿星、寿桃、鲤鱼跳龙门、五谷丰登、龙凤呈祥等。\"}, {\"年夜饭\": \"年夜饭，又称年晚饭、团年饭等，特指岁末除夕的阖家聚餐。年夜饭源于古代的年终祭祀仪，拜祭神灵与祖先后团圆聚餐。年夜饭是年前的重头戏，不但丰富多彩，而且很讲究意头。吃团年饭前先拜神祭祖，待拜祭仪式完毕后才开饭。席上一般有鸡（寓意有计）、鱼（寓意年年有余）、蚝豉（寓意好市）、发菜（寓意发财）、腐竹（寓意富足）、莲藕（寓意聪明）、生菜（寓意生财）、腊肠（寓意长久）等以求吉利。中国人的年夜饭是家人的团圆聚餐，这顿是年尾最丰盛、最重要的一顿晚餐。\\n年夜饭的名堂很多，南北各地不同，而且各有讲究。北方人过年习惯吃饺子，这是古时候流传下来的习惯。由于地理气候方面原因，春节期间北方还处于万物闭藏的寒冬，冬天的北方地区白茫茫一片，冰天雪地，基本上没办法种植作物，资源匮乏，可选用的食材不多。而南方地区，尤其是沿海一些地方，基本上四季绿意盎然，南方冬季在蔬果等食材上占有极大的优势，所以在饮食的选择上具有更多的选择性；在地利方面，又得益于水资源充沛分布广所以各类渔获充足食材多样；所以在一些重要的节日上，南方的饮食会丰富多样一些。\"}, {\"守岁\": \"除夕守岁是年俗活动之一，守岁之俗由来已久。守岁的民俗主要表现为所有房子都点燃岁火，合家欢聚，并守“岁火”不让熄灭，等着辞旧迎新的时刻，迎接新岁到来。除夕夜灯火通宵不灭，曰“燃灯照岁”或“点岁火”，所有房子都点上灯烛，还要专门在床底点灯烛，遍燃灯烛，谓之“照虚耗”，据说如此照过之后，就会使来年家中财富充实。\"}, {\"压岁钱\": \"压岁钱，年俗之一，年晚饭后长辈要将事先准备好的压岁钱派发给晚辈，据说压岁钱可以压住邪祟，晚辈得到压岁钱就可以平平安安度过一岁。压岁钱在民俗文化中寓意辟邪驱鬼，保佑平安。压岁钱最初的用意是镇恶驱邪。因为人们认为小孩容易受鬼祟的侵害，所以用压岁钱压祟驱邪。\\n在历史上，压岁钱是分多种的，一般在新年倒计时时由长辈派发给晚辈，表示压祟，包含着长辈对晚辈的关切之情和真切祝福；另一种就是晚辈给老人的，这个压岁钱的“岁”指的是年岁，意在期盼老人长寿。可追溯的最早压岁钱文字记载在汉代，又叫压胜钱，并不在市面上流通，而是铸成钱币形式的玩赏物，有避邪的功能。\"}, {\"游神\": \"游神，是传统贺岁习俗之一。游神，又称圣驾巡游、游老爷、营老爷、游菩萨、游神赛会、年例、迎神、迎年、游春、行香、菩萨行乡、抬神像、神像出巡等等，是指人们在新年期间或其它喜庆节日里，又或诸神圣诞的这一天，到神庙里将行身神像请进神轿里，然后抬出庙宇游境，接受民众的香火膜拜，寓意神明降落民间，巡视乡里，保佑合境平安。主旨是酬神、消灾、祈福等。游神沿途伴随有锣鼓、唢呐、神偶、舞狮、舞龙、飘色、标旗、游灯、八音、杂技及乐队演奏等丰富多彩艺阵表演。是集拜神、祈祷、欢庆、宴客为一体的传统民俗活动。\\n游神在潮汕地区又称为“游神赛会”、“营老爷”，是潮汕地区的传统民间民俗活动；每年春节期间，按时间顺序，各村镇轮流举行民间游神活动，场面热闹非凡。在粤西地区又称为“游老爷”、“游菩萨”，或称“年例”；所谓年例，即“溯古例今、年年有例”。在北流一带亦是称为“年例”。在珠三角地区又称为“菩萨行乡”，众人抬神像巡游，绕村一周，接受祈福。在福州又称为“迎神”，农历的正月初三至十五，便是游神的时间，成为乡村“做年”的重要活动之一；游神常以村为单位，有时数村联合，在锣鼓和鞭炮声中结队巡游村境，百姓夹道观看、迎接，场面热烈。\"}, {\"拜岁\": \"拜岁，年俗活动之一。在岁首早上迎新岁，拜祭“岁神”。“岁”又名为“摄提”、“太岁”，上古纪元星名。太岁也是民间信仰的神灵。岁以六十甲子的干支纪年法为运转周期，共六十位，每年有一位岁神当值，在当年当值的太岁谓之“值年太岁”，是一岁之主宰，掌管当年人间的吉凶祸福。如《三命通会》中所讲：“夫太岁者，乃一岁之主宰，诸神之领袖”。拜岁是历史最悠久的过年传统风俗，这古俗如今在广东，尤其在吴川一带仍盛行。在新年初一辞旧迎新之际，迎新岁、拜祭岁神、接福。\"}, {\"庙会\": \"逛庙会是春节期间的民俗活动之一。广府庙会与北京地坛庙会并称中国两大庙会。涵盖木偶荟萃、中华绝活、武林大会、元宵灯会等主题活动，包含了祈福文化、民俗文化、美食文化、商贸休闲文化等丰富的内容。\"}, {\"拜年\": \"春节期间走访拜年是年节传统习俗之一，是人们辞旧迎新、相互表达美好祝愿的一种方式。初二、三就开始走亲戚看朋友，相互拜年，道贺祝福，说些恭贺新喜、恭喜发财、恭喜、新年好等话。拜年的意义所在是亲朋好友之间走访联络感情、互贺新年，表达对亲朋间的情怀以及对新一年生活的美好祝福。随着时代的发展，拜年的习俗亦不断增添新的内容和形式。\"}, {\"烧炮竹\": \"中国民间有“开门炮仗”一说。即在新的一年到来之际，家家户户开门的第一件事就是烧炮竹，以哔哔叭叭的爆竹声除旧迎新。炮竹是中国特产，亦称“爆仗”、“爆竹”、“炮仗”、“鞭炮”。其起源很早，关于爆竹的演变过程，《通俗编排优》记载道：“古时爆竹。皆以真竹着火爆之，故唐人诗亦称爆竿。后人卷纸为之。称曰“爆竹”。\\n炮竹的原始目的是迎神与驱邪。后来以其强烈的喜庆色彩发展为辞旧迎新的象征符号。烧炮竹可以创造出喜庆热闹的气氛，是节日的一种娱乐活动，可以给人们带来欢愉和吉利。\"}, {\"生旺火\": \"新年正月十五元宵，在院子里点燃火把，火堆，民间称为“生旺火”、或“点发宝柴”。现代民间生旺火常常是点燃禾杆堆或炮纸堆，火势越旺越好，象征燎去旧灾晦，迎来新气象。\"}]','[{\"年糕\":\"年糕属于农历新年的应时食品，有红、黄、白三色，象征金银。一种用黏性大的糯米或米粉蒸成的糕，在南方有过年吃年糕的习惯，甜甜的粘粘的年糕，象征新一年生活甜蜜蜜，步步高。\\n春节吃年糕，“义取年胜年，籍以祈岁稔。”寓意万事如意年年高。年糕的种类有：北方有白糕饦、黄米糕；江南有水磨年糕；西南有糯粑粑；台湾有红龟糕。北方年糕有蒸、炸二种，南方年糕除蒸、炸外，尚有片炒、汤煮诸法。\"},{\"饺子\":\"饺子，是中国北方民间的主食和地方小吃，也是年节食品，过节吃饺子的习俗主要存在于北方地区。三十晚上北方人不吃饺子，会觉得没有过年的气氛。北方一些山区还有初一到初五每天早上吃饺子的习俗。\\n 吃饺子是表达人们辞旧迎新之际祈福求吉愿望的特有方式。晚上11时到第二天凌晨1时为子时，因“饺子”与“交子”同音，所以取“更岁交子”之意，吃饺子就意味着更岁交子，过春节吃饺子被认为是大吉大利。\\n饺子饺子，是中国北方民间的主食和地方小吃，也是年节食品，过节吃饺子的习俗主要存在于北方地区。三十晚上北方人不吃饺子，会觉得没有过年的气氛。北方一些山区还有初一到初五每天早上吃饺子的习俗。\\n 吃饺子是表达人们辞旧迎新之际祈福求吉愿望的特有方式。晚上11时到第二天凌晨1时为子时，因“饺子”与“交子”同音，所以取“更岁交子”之意，吃饺子就意味着更岁交子，过春节吃饺子被认为是大吉大利。\"},{\"春卷\":\"春卷也叫春饼，立春吃春饼是中国一种古老风俗。晋代已有“五芋盘”即“春盘”，是将春饼与菜同置一盘之内。\\n唐宋时立春吃春饼之风渐盛，皇帝并以之赐近臣百官，当时的春盘极为讲究：“翠缕红丝，金鸡玉燕，备极精巧，每盘直万钱”。民间也用以互相馈赠。\\n春饼发展至今，形制随地而异，食用时间也因地而别。有烙制、也有蒸制；或大如团扇，或小如荷甲。\"}]'),(2,1,'接神日','农历正月初四','据说每年的送神日（旧历十二月廿四日，有些地区是廿三日），灶君、太岁与民间诸神要回天庭向玉皇大帝述职，报告人间善恶，俗称送神日。旧历十二月廿五日，玉帝会派遣代天巡狩之神或其他天神下凡，监护人世，称为“天神下降”。\n\n到了正月初四日的下午，天神回天，而原本民间供奉的灶君、新的值年太岁与诸位神明，将回到凡间，继续保佑百姓，基于人情味的关系，希望让神明在天庭多享受一会儿，所以中国、越南、朝鲜半岛、琉球地区（汉字文化圈）的民众会在正月初四日午时以后才祭祀神明，迎接神明回返人间。俗谓：“送神早，接神晚”，因此接神的祭典大多是在下午才举行。一般会准备新年的年糕、发糕、桂圆、米果、麻粩、寸枣、生仁糖、冬瓜糖等应景食品祭拜，茶水则多使用甜茶。\n\n最重要的是纸钱，除了一般金纸之外，必焚烧“云马”或“甲马”，这是一种绘有马匹与随从武士的纸钱，可提供神祇作为交通工具，有些佛教徒也会焚烧纸莲花给佛、菩萨、祖师。\n一般家庭会在正月初四日接神。而公司行号、店家则在初四或初五等为迎接财神。',NULL,NULL,NULL),(3,1,'破五日','农历正月初五','破五节，中华传统节日之一，指每年农历正月初五，根据东亚传统习俗，当日为新春假期结束，开始工作的日子。因为正月初一至正月初四的诸多禁忌，在此日全破，故北方称「破五节」，另外因为隔开了春节假期，神桌上的糕点撤供，新春的禁忌取消，又称为隔开。',NULL,'[{\"解除禁忌\": \"正月初一至初四不许扫地、倒垃圾，认为这样会减少福份。故今日必须大扫除、倒垃圾（又称“送穷”，财神下凡，自然送走“穷困”了）。\\n所谓“穷”，暗喻正月初一以来所积存的垃圾，各地称谓不一，诸如“送五穷”、“送穷土”、“送穷灰”、“赶五穷”、“送穷娘娘”、“送穷媳妇出门”等。\"}, {\"各地特有习俗\": \"北方人会在此日吃饺子（象征元宝）。还有些地方的人会吃发菜并且放鞭炮[1]。江浙及上海一带多称这一天为小年，家族团聚。\"}]',NULL),(4,1,'人日','农历正月初七','人日指每年农历正月初七，出自于东方朔的占候之术，以当日之阴晴，断定所主之物衰旺，后来初七人日变为庆祝人的日子，于“正旦画鸡于门，七日帖人于帐”。人日亦称为“七元节”、“人胜节”、“人庆节”、“人口日”及“人七日”，越南称为开贺节。',NULL,'[\"据说汉代已有人日习俗，至魏晋后更开始受重视。古人会于人日当天戴上“人胜”（一种头饰），从晋朝开始有剪彩为花、剪彩为人，或镂金箔为人来贴屏风，也戴在头发上。此外还有登高赋诗的习俗。唐代后，皇帝会赐彩缕、人胜及登高大宴群臣。若人日天气晴朗，则主当年人口平安、出入顺利。\\n宋朝人过人日，会在窗户上面雕画小人、去道观里烧高香、吃酸馅。\\n人日当天亦有放花炮、烟花等习俗。\\n亦有习俗，禁止宰杀当天占候所主之物；人日当天亦不会对囚犯用刑。\\n有些地区在过年期间到人日才可以洗头和做针线活（其他日子则不允许）等，朝鲜传统把人日视为开市日。\"]',NULL),(5,1,'元宵节','农历正月十五','元宵节是中国一个重要的传统节日。正月十五日是一年中第一个月圆之夜，也是一元复始，大地回春的夜晚，人们对此加以庆祝，也是庆贺新春的延续 ，因此又称“上元节”，即农历正月十五日。在古书中，这一天称为“上元”，其夜称“元夜”、“元夕”或“元宵”。而元宵这一名称一直沿用至今。','元宵节是中国的传统节日，元宵节习俗的形成有一个较长的过程，根源于民间开灯祈福古俗。开灯祈福通常在正月十四夜便开始“试灯”，十五日夜为“正灯”，民间要点灯盏，又称“送灯盏”，以进行祭神祈福活动。\n东汉佛教文化的传入，对于形成元宵节习俗也有着重要的推动意义，汉明帝永平年间，汉明帝为了弘扬佛法，下令正月十五夜在宫中和寺院“燃灯表佛”。因此正月十五夜燃灯的习俗随着佛教文化影响的扩大及后来道教文化的加入逐渐在中国扩展开来。\n南北朝时，元宵张灯渐成风气。梁武帝笃信佛教，其宫中正月十五大张灯火。唐朝时，中外文化交流更为密切，佛教大兴，仕官百姓普遍在正月十五这一天“燃灯供佛”，于是佛家灯火遍布民间。从唐代起，元宵张灯即成为法定之事。\n农历正月十五是元宵节，又称上元节、元夜、灯节。正月是农历的元月，古人称夜为“宵”，所以称正月十五为“元宵节”。\n随着社会和时代的变迁，元宵节的风俗习惯早已有了较大的变化，但仍是中国民间传统节日。元宵在早期节庆形成过程之时，只称正月十五、正月半或月望，隋以后称元夕或元夜。唐初受了道教的影响，又称上元，唐末才偶称元宵。但自宋以后也称灯夕。到了清朝，就另称灯节。\n在国外，元宵也以The Lantern Festival而为人所知。正月十五这一天晚上，中国人素有赏花灯、吃汤圆、吃元宵、猜灯谜、放烟花等一系列传统民俗活动。','[{\"吃元宵\": \"正月十五吃元宵，“元宵”作为食品，在中国也由来已久。宋代，民间即流行一种元宵节吃 的新奇食品。这种食品，最早叫“ 浮元子”后称“元宵” ，生意人还美其名曰“元宝”。元宵即汤圆以白糖、玫瑰、芝麻、豆沙、黄桂、核桃仁、果仁、枣泥等为馅，用糯米粉包成圆形，可荤可素，风味各异。可汤煮、油炸、蒸食，有团圆美满之意。陕西的汤圆不是包的，而是在糯米粉中滚成的，或煮食或油炸，热热火火，团团圆圆。\\n古时“元宵”价格比较贵，有一首诗说：“贵客钩帘看御街，市中珍品一时来。帘前花架无路行，不得金钱不得回。”北方“滚”元宵，南方“包”汤圆，这是两种做法和口感都不同的食品。\"}, {\"闹花灯\": \"农历正月十五是“元宵节”，此节日民间有挂灯、打灯、观灯等习俗，故也称灯节。\\n闹花灯是元宵节传统节日习俗，始于西汉，兴盛于隋唐。隋唐以后，历代灯火之风盛行，并沿袭传于后世。而正月十五，又是一年一度的闹花灯放烟火的高潮。所以也把元宵节称为“灯节”在山西的县城一级城廓甚至乡，镇中，这些居民集中地，繁华热闹区，在正月十五到来之前，满街挂满灯笼，到处花团锦簇，灯光摇曳，到正月十五晚上达到高潮。正月十五的“观灯”已经成为山西民间群众自发的活动，在正月十五晚上，街头巷尾，红灯高挂，有宫灯、兽头灯、走马灯、花卉灯、鸟禽灯等等，吸引着观灯的群众。太原一带，太谷县的灯是很有名气的。太谷的灯，以品种繁多、制作精巧、外观引人出名。\"}, {\"猜灯谜\": \"猜灯谜又称打灯谜，是中国独有的富有民族风格的一种传统民俗文娱活动形式，是从古代就开始流传的元宵节特色活动。每逢农历正月十五，传统民间都要挂起彩灯，燃放焰火，后来有好事者把谜语写在纸条上，贴在五光十色的彩灯上供人猜。因为谜语能启迪智慧又迎合节日气氛，所以响应的人众多，而后猜谜逐渐成为元宵节不可缺少的节目。灯谜增添节日气氛，展现了古代劳动人民的聪明才智和对美好生活的向往。\"}, {\"舞龙灯\": \"耍龙灯，也称舞龙灯或龙舞。见于文字记载的龙舞，是汉代张衡的《西京赋》，作者在百戏的铺叙中对龙舞作了生动的描绘。而据《隋书·音乐志》记载，隋炀帝时类似百戏中龙舞表演的《黄龙变》也非常精彩，龙舞流行于中国很多地方。华夏崇尚龙，把龙作为吉祥的象征。\"}, {\"元宵节踩高跷\": \"踩高跷，是民间盛行的一种群众性技艺表演。高跷本属中国古代百戏之一种，早在春秋时已经出现。中国最早介绍高跷的是《列子·说符》篇：“宋有兰子者，以技干宋元。宋元召而使见其技。\"}, {\"舞狮子\": \"舞狮子是中国优秀的民间艺术，每逢元宵佳节或集会庆典，民间都以狮舞前来助兴。这一习俗起源于三国时期，南北朝时开始流行，已有一千多年的历史。 据传说，它最早是从西域传入的，狮子是文殊菩萨的坐骑，随着佛教传入中国，舞狮子的活动也输入中国。\\n有记载的舞狮最早出现在魏晋南北朝时期。《洛阳伽蓝记》记载了法会行列中的舞狮，可见最初是随佛教进入中国，作为佛教仪式的一部分存在。\\n“舞狮子”始于魏晋，盛于唐，又称“狮子舞”、“太平乐”，一般由三人完成，二人装扮成狮子，一人充当狮头，一人充当狮身和后脚，另一人当引狮人，舞法上又有文武之分，文舞表现狮子的温驯，有抖毛、打滚等动作，武狮表现狮子的凶猛，有腾跃、蹬高、滚彩球等动作。\"}, {\"元宵节划旱船\": \"划旱船，也称跑旱船，就是在陆地上模仿船行动作，表演跑旱船的大多是姑娘。旱船不是真船，多用两片薄板，锯成船形，以竹木扎成，再蒙以彩布，套系在姑娘的腰间，如同坐于船中一样，手里拿着桨，做划行的姿势，一面跑，一面唱些地方小调，边歌边舞，这就是划旱船了。有时还另有一男子扮成坐船的船客，搭档着表演，则多半扮成丑角，以各种滑稽的动作来逗观众欢乐。划旱船流行于中国很多地区。\"}, {\"走百病\": \"“走百病”，也叫游百病，散百病，烤百病，走桥等，是一种消灾祈健康的活动。元宵节夜妇女相约出游，结伴而行，见桥必过，认为这样能祛病延年。走百病是明清以来北方的风俗，有的在十五，但多在十六日进行。这天妇女们穿着节日盛装，成群结队走出家门，走桥渡危，登城，摸钉求子，直到夜半，始归。\"}]','[\"唐朝的元宵节食是面蚕。王仁裕（八八○─九五六）的《开元天宝遗事》记载：“每岁上元，都人造面蚕的习俗到宋代仍有遗留，但不同的应节食品则较唐朝更为丰”。吕原明的《岁时杂记》就提到：“京人以绿豆粉为科斗羹，煮糯为丸，糖为臛，谓之圆子盐豉。捻头杂肉煮汤，谓之盐豉汤，又如人日造蚕，皆上元节食也”。\\n宋朝郑望之的《膳夫录》才记载了：“汴中节食，上元油锤”。油锤的制法，据《太平广记》引《卢氏杂说》中一则“尚食令”的记载，类似后代的炸元宵。也有人美其名为“油画明珠”。\\n到南宋时，就有所谓“乳糖圆子”的出现，这应该就是汤圆的前身了。\\n清朝康熙年间，御膳房特制的“八宝元宵”，是名闻朝野的美味。马思远则是当时北京城内制元宵的高手。他制作的滴粉元宵远近驰名。符曾（生于一六八八）的《上元竹枝词》云：“桂花香馅襄胡桃，江米如珠井水淘。见说马家滴粉好，试灯风里卖元宵”。诗中所咏的，就是鼎鼎大名的马家元宵。\\n近千年来，元宵的制作日见精致。光就面皮而言，就有江米面、粘高粱面、黄米面和苞榖面。馅料的内容更是甜咸荤素、应有尽有。甜的有所谓桂花白糖、山楂白糖、什锦、豆沙、芝麻、花生等。咸的有猪油肉馅，可以作油炸炒元宵。素的有芥、蒜、韭、姜组成的五辛元宵，有表示勤劳、长久、向上的意思。\\n制作的方法也南北各异。北方的元宵多用箩滚手摇的方法，南方的汤圆则多用手心揉团。元宵可以大似核桃、也有小似黄豆，煮食的方法有带汤、炒吃、油氽、蒸食等。不论有无馅料，都同样的美味可口。元宵已成了一种四时皆备的点心小吃，随时都可以来一碗解解馋。\"]'),(6,1,'天穿节','农历正月二十','天穿日，又称天穿节或补天节，各地区传说不同，由正月初七至正月廿五日都有，大致上以正月二十日最通行，天穿日源于古代女娲补天传说，为华人感念女娲补天，救助人类的特殊节庆，但在华人各族群逐渐式微，今日以客家民系特别重视此节日，只许祭神、游乐，不许工作，有保持环境生生不息、资源永续发展的环保意义。','女娲炼石补天之日称为天穿日，众说纷纭，华人各地区正月初七、初九、初十、十九、二十、廿一、廿三、廿五日不定。宋代以后，几乎都在正月二十日。有些客家人认为是正月初九天公生之后十日，即正月十九。\n\n明代杨慎《词品》云：“宋以前，正月二十三日为天穿日，言女娲氏以是日补天，俗以煎饼置屋上，名曰补天穿，今其俗废久。”但各地也有以正月二十为天穿日的，也有人说女娲补天，由正月二十日到正月廿三日，补了三日才补成。卢仝称：“引日月之针，五星之缕把天补。补了三日不肯归婿家。”\n\n最早记载天穿节的资料是东晋王嘉所撰《拾遗记》，类书《渊鉴类函》卷一三〈岁时部〉记载：“补天穿。《拾遗记》云：‘江东俗称正月二十日为天穿日，以红缕系煎饼置屋上，曰补天穿。’相传女娲氏以是日补天故也。”宋代李觏《正月二十日俗号天穿日以煎饼置屋上谓之补天感而为诗》说：“娲皇没有几多年，夏伏冬愆任自然。只有人间闲妇女，一枚煎饼补天穿。”\n\n客家人、漳州闽南人称补天之日为正月二十日。每逢“天穿日”，客家人便会放下工作，“郎不许耕田、妹不许织布”，共唱山歌。一方面给辛苦工作的自己忙里偷闲，也让大地休养生息；从现代环保概念来看，适度给予大自然修补恢复的时间，中华民国客家委员会在广征客家人士意见后，宣布将把具客家独特性的“天穿日”（农历正月二十），订为中华民国“全国客家日”[3]。\n\n泉州三邑闽南人，如泉安、惠安、南安，与台湾的鹿港、安平都有在五月初五日吃“煎堆”，也是纪念女娲补天之意。',NULL,NULL),(7,2,'中和节','农历二月初一','中和节是一个源于中国的传统节日。相传为太阳真君的诞辰。于每年农历的二月初一。后来因为此日和二月初二的春社和龙抬头接近，有些习俗已经合并在春社和龙抬头中。\n\n中和节是唐代唐德宗下诏定下的。这一天人们会做些好吃的点心，买些时令的果子，称之为“迎富贵果子”，一家人高兴的享用。中和节庆典往往延续至翌日。宋朝时，宫廷二月初二的时候，会将新鲜时令的蔬菜和水果，命人挑入宫中供贵人尝鲜。宋人周密在《武林旧事》中记述南宋时，二月初二这一天宫中有“挑菜”娱乐活动。宴会上，在一些小斛中放着新鲜菜蔬，把它们的名称写在丝帛上，压放在斛下，让大家猜。根据猜的结果，有赏有罚。这一活动因有很多的娱乐性，所以当时“王宫贵邸亦多效之”。',NULL,NULL,NULL),(8,2,'龙抬头','农历二月初二','二月二龙抬头（二月二）又被称为“春耕节”、“农事节”、“春龙节”，是汉族民间传统节日。龙抬头是每年农历二月初二，俗称青龙节，传说是龙抬头的日子，它是中国城乡的一个传统节日。人们庆祝“龙头节”，以示敬龙祈雨，让老天佑保丰收。','龙抬头 农历二月初二 ，俗称青龙节，传说是龙抬头的日子，它是中国农村的一个传统节日，名曰“龙头节”。俗话说：“二月二，龙抬头，大家小户使耕牛。”此时，阳气回升，大地解冻，春耕将始，正是运粪备耕之际。传说此节起源于三皇之首伏羲氏时期。伏羲氏“重农桑，务耕田”，每年二月二这天，“皇娘送饭，御驾亲耕”，自理一亩三分地。后来黄帝、唐尧、虞舜、夏禹纷纷效法先王。到周武王，不仅沿袭了这一传统作法，而且还当作一项重要的国策来实行。于二月初二，举行重大仪式，让文武百官都亲耕一亩三分地，这便是龙头节的历史传说。又一说为武则天废唐立周称帝，惹得玉帝大怒，命令龙王三年不下雨。龙王不忍生灵涂炭，偷偷降了一场大雨。玉帝得知便将龙王打出天宫，压于大山之下，黎民百姓感龙王降雨深恩，天天向天祈祷，最后感动了玉皇大帝，于二月初二将龙王释放，于是便有了“二月二，龙抬头”之说。实际上是过去农村水利条件差，农民非常重视春雨，庆祝“龙头节”，以示敬龙祈雨，让老天保佑丰收，从其愿望来说是好的，故“龙头节”流传至今！  ','[{\"祭社神\":\"二月二既是龙抬头节也是土地公的诞辰，“土地诞”也称“社日节”。社日分为春社日和秋社日，古时春社是立春后第五个戊日，秋社是立秋后第五个戊日（戊，五行属土）。古人认为土生万物，土地神是广为敬奉的神灵之一。人们认为土地公管理着五谷的生长和地方的平安，很多地方的百姓都在社日奉祀土地神。土地公又称福德正神，在中国南方地区，为给土地公公“暖寿”，有的地方有举办“土地会”的习俗：家家凑钱为土地神祝贺生日，到土地庙烧香祭祀，敲锣鼓，放鞭炮。在传统农业社会，人们认为农作物丰收是各方神灵共同作用的结果。因此便有了祭祀土地和稻谷之神的传统。土地之神为社，稻谷之神为稷，土地和稻谷是人民赖以生存的根本。《孝经·援神契》收录：“社者，五土之总神。土地广博，不可遍敬，而封土为社而祀之，以报功也。”“社”是被百姓尊崇的众多土地之神的“代表”，来接受人们的祭祀。早先的土地神只是神灵，后来逐渐人格化，叫社公，俗称土地公，而且有配偶神（社母，俗称土地婆）。祭祀土地神的日子叫社日，春秋各有一个，即春社和秋社，分别在立春后和立秋后的第五个戊日，大体在春分或秋分前后。春社与秋社祀神的功能有所不同，春社主要是祈求土地神保佑农业丰收，秋社则以收获报答感谢土地神，即所谓的“春祈秋报”。二月初二龙抬头古代把土地神和祭祀土地神的地方都叫“社”，按照民间的习俗，每到播种或收获的季节，农民们都要立社祭祀，祈求或酬报土地神。土地神在人的日常生活中处于重要地位，不但家族大，而且分布广。在居家中有居家土地神，村屯有村屯的土地神，城市有城市的土地神，有的将土地供奉在家中，有的供奉在门口，有的则供在村落的社庙中。总之土地神的职责就是保佑着一方土地之内的人物康泰，人口清洁，出入平安了。\"},\r\n{\"吃龙食\":\"二月二这天在饮食上也有一定的讲究，北方百姓在这天饮食多以龙为名。吃春饼名曰“吃龙鳞”，吃面条名曰“吃龙须”，吃馄饨为“吃龙眼”，吃饺子则叫“吃龙耳”，面条、馄饨一块煮叫做“龙拿珠”，吃葱饼叫做“撕龙皮”。有些地方还有吃“龙眼”、“龙须”、“龙舌”、“龙耳”、“龙皮”、“龙子”、“龙蛋”以及吃春饼、吃猪头肉的习俗。一切均取与龙有关的象征与寓意。这些都寄托了人们祈龙赐福的强烈愿望。二月二这天大多数农家都吃“鼓撅”（手搓面条），俗称“顶门棍”。为什么吃“鼓撅”？有人说，吃了“顶门棍”，把门顶住，邪祟不入，一年太平。有人说，过春节大家都吃闷了、玩昏了，吃一顿“鼓撅”顶灵性，就开始干活过日子了。也有在二月二这天吃搅团的，说是给龙糊鳞整甲，使龙抖擞精神升天降雨。有几句讽刺懒婆娘的民谣说：“过了正月二十三，懒婆娘愁得没处钻。又想上了天，没鞋穿；又想钻了地，没铧尖；又想上了吊，丢不下二月二那顿油搅团。”当地还有在这天炒豆子的习俗，民谣曰：“二月二，龙抬头，家家锅里嘣豆豆，惊醒龙王早升腾，行云降雨保丰收。”有人还在附近的药王庙里烧香叩头，祈保平安。\"},\r\n{\"剃龙头\":\"恭祭华胥氏过“龙头节”，充满了崇拜龙的思想观念，以为龙治水行雨，决定庄稼丰歉 ，万万得罪不可得罪。旧时这天早晨，人们要敬奉碾子，传说碾子是青龙的化身。有的还把磙子支起来，表示“龙抬头”。大人小孩多在这天剃头理发，意思是剃“龙头”，以显尊贵、图吉利。妇女忌做针线怕“扎瞎了龙眼”；不磨面，不碾米，不行大车，怕“砸断了龙腰、龙尾。”\"},\r\n{\"舞龙\":\r\n\"舞龙源自古人对龙的崇拜，每逢喜庆节日，人们都会舞龙，从春节开始舞龙，然后二月“龙抬头”、端午节时也舞龙。舞龙时，龙跟着绣球做各种动作，穿插，不断地展示扭、挥、仰、跪、跳、摇等多种姿势。所以以舞龙的方式来祈求平安和丰收就成为全国各地汉族的一种民俗文化。\"},\r\n{\"围粮囤\":\r\n\"中国北方广泛的流传着“二月二，龙抬头；大仓满，小仓流”的民谚。农历二月初二清晨，北方很多地区的村民早早起床，家庭主妇从自家锅灶底下掏一筐烧柴禾余下的草木灰，拿一把小铁铲子铲些草木灰，人走手摇，在地上画出一个个圆来。围仓的圆圈，大套小，少则三圈，多则五圈，围单不围双。围好仓后，把家中的粮食虔诚地放在仓的中间，还有意撒在仓的外围，象征当年的大丰收。\"},\r\n{\"熏虫\":\r\n\"古代将自然界中的生物分成毛虫、羽虫、介虫、鳞虫、人类五大类。毛虫指披毛兽类，羽虫指鸟类，介虫指带甲壳类，鳞虫指有鳞之鱼和带翅昆虫类。龙是鳞虫之长，龙出则百虫伏藏。二月初二正是惊蛰前后，百虫萌动，疾病易生，虫害也是庄稼的天敌，因此人们引龙伏虫，希望借龙威镇伏百虫，保佑人畜平安，五谷丰登。进入农历二月，天气渐暖，各种昆虫开始活动，有些昆虫对人的健康是有害的，所以二月二这一天，人们纷纷摊烙煎饼、燃烧熏香，希望凭借烟气驱走毒虫。二月二龙抬头传统节日，时在农历二月初二龙抬头。明人刘侗的《帝京景物略》中说：“二月二日曰，龙抬头、煎元旦祭余饼，熏床炕，曰，熏虫儿；谓引龙，虫不出也。”俗话说“龙不抬头天不下雨”，龙是祥瑞之物，和风化雨的主宰。“春雨贵如油”，人们祈望龙抬头兴云作雨，滋润万物。同时，二月二正是惊蛰前后，百虫蠢动，疫病易生，人们还祈望龙抬头出来镇住毒虫。清潘龙陛《帝京岁时记胜》：“二日为龙抬头日，乡民用灰自门外蜿蜒布入宅厨，旋绕水缸呼为引龙回。都人用枣糕、麦米等油煎为食，曰薰虫。”《掌故大词典》。\"}]',NULL),(9,2,'花朝节','农历二月初二或十二、十五','花朝节具体的形成年份不明、其起源亦有泛灵论产生的植物崇拜思想、踏春游赏风俗等多种说法，但“花朝”一词在南北朝时代的文学作品中即有出现，原意为百花盛开的早晨，用以代指美好的时光与事物。',NULL,NULL,NULL),(10,2,'春社','农历二月初二或立春后第五个戊日','春社是最为古老的汉族传统民俗节日之一。 [1] 在商、西周时期，是男女幽会的狂欢节日，而后来则主要用于祭祀土地神。春社的时间一般为立春之后的第五个戊日，约在春分前后，但在汉族民间也有二月初二、二月初八、二月十二、二月十五之说。','是最为古老的汉族传统民俗节日之一。 在商、西周时期，是男女幽会的狂欢节日，而后来则主要用于祭祀土地神。春社的时间一般为立春之后的第五个戊日，约在春分前后，但在汉族民间也有二月初二、二月初八、二月十二、二月十五之说。',NULL,NULL),(11,4,'寒食节','清明节前一天','寒食节，亦称禁火节、禁烟节、冷节、百五节，通常是冬至后第105日，与清明节日期相近，在清明节前一或二日。清初汤若望《时宪历》订定后，清明与冬至之间的间隔缩短，为了维持寒食节在清明节前一、两日的风俗，民间将寒食节定在清明节一日之前。现代24节气的定法沿袭汤氏，因此清明节就在寒食节次日。','春秋时已出亡多年的晋国公子重耳回国即位[即晋文公]，封赏随其逃亡的臣子，唯独漏掉了介子推。介子推于是携老母隐居绵山[今山西省介休市东南]。晋文公得知后欲加封赏，寻至绵山，找不到他，便想烧山逼他出来。但介子推不愿当官，坚持不出，结果母子二人俱被烧死。为了纪念介子推，晋文公将绵山改为“介山”，立祠祭祀介子推，并把烧山的这一天定为寒食节，全国禁动烟火，只吃冷食。后来便形成了在这天寒食、扫墓的风俗。',NULL,NULL),(12,4,'清明节','节气清明当日','清明节是中国最重要的祭祀节日，是最适合祭祖和扫墓的日子。扫墓俗称上坟，祭祀死者的一种活动。汉族和一些少数民族大多都是在清明节扫墓。',NULL,'[{\"扫墓\":\"活动之一是中祭祀祖先的墓地。它们在那里烧纸祭祀他们已故的祖先。通常情况下，使用货币、汽车和衣服的纸制品，但也可以看到各种纸质人物。\"},\r\n{\"踏青\":\"另一项中国传统节日活动是去绵山，那里是清明节的摇篮。它位于山西省中部的介休市，在太原以南137公里和临汾以北125公里处。旧时曾以清明节称“踏青节”。清初潘荣陛撰写的《帝京岁时纪胜·岁时杂戏》也详细介绍了清明节期间扫墓和游玩的场景：“清明扫墓，倾城男女，纷出四郊，提酌挈盆，轮毂相望。各携纸鸢线轴，祭扫毕，即于坟前施放较胜”。\"},\r\n{\"放风筝\":\"清明节期间，放风筝也是一项受欢迎的活动。在清明节期间，人们不仅在白天放，而且在晚上也放。到了晚上，在风筝下或风筝绳上挂著一串串像闪烁的星星一样的彩色灯笼，被称为“神灯”。过去，有些人把风筝放上蓝天，然后剪断线，让微风把它们带到天涯海角，据说这样可以消除疾病，带来好运。\"}]',NULL),(13,3,'上巳节','农历三月初三','上巳节，俗称三月三，是汉民族传统节日 ，该节日在汉代以前定为三月上旬的巳日，后来固定在夏历三月初三 。上巳节是古代举行“祓除畔浴”活动中最重要的节日，人们结伴去水边沐浴，称为“祓禊”，此后又增加了祭祀宴饮、曲水流觞、郊外游春等内容。 ','上巳节有起源于兰汤辟邪的巫术活动之说，用兰汤以驱除邪气。兰草被用作灵物，有香气袭人的特点，古人在举行重大祭神仪式前，须先进行斋戒，其中包括当时最好的洗浴方式“兰汤沐浴”。古时代上巳节是“祓禊”的日子，有在水滨举行祓除不祥的祭礼习俗。上巳节由来久远，有历史，乏记载。“上巳”一词最早收录在汉代的文学作品里。魏晋以后，上巳节改为三月三，逐渐成为水边饮宴、郊外游春的节日。','[{\"祓禊\":\r\n\"祓禊（指去灾病，上古女巫给去晦，唐宋时流行泡温泉，以前是在水边河边沐浴，用兰草洗身，用柳枝沾花瓣水点头身的仪式，为去灾祝福之意）因为此时正当季节交换，阴气尚未退尽，人容易患病，所以应到水边洗涤一番。所谓“禊”，即“洁”，故“祓禊”就是通过自洁而消弥致病因素的仪式。为什么要选在巳日呢？应劭解释说，“巳者，祉也”，既除掉致病因素，又祈求福祉降临（《风俗通义·祀典·禊》）。这种看法为许多学者赞同，如现代学者乌丙安认为该节日的原初意义是“古人春季驱邪祛瘟的卫生保健古俗”。在上古时期，节日的作用就是驱邪避灾，实际原因是由于冬天河水太冷，3月初的水温恰好，人们急着去洗越冬后第一次澡。\"},\r\n{\"祭祀高禖\":\r\n\"在上巳节活动中，最主要的活动是祭祀高禖，即管理婚姻和生育之神。高禖，又称郊禖，因供于郊外而得名。人们通过这种巫教活动，除灾避邪，祈求生育。因此，上巳节又是一个求偶节、求育节。\"},\r\n{\"畔浴\":\r\n\"畔浴（沐浴，上古人们去河边水边，唐宋时流行泡温泉尤其露天温泉池）以春水洗涤污垢，认为这样作可以除去整个冬天所积存的病害，在新的一年里清洁免疫，吉祥如意。当时人们认为妇女不育是鬼神作祟，就利用上巳节的沐浴治疗不育症。这样久而久之，相沿成习，把沐浴变成上巳节的重要内容。\"},\r\n{\"修禊\":\r\n\"上巳节还有祓禊、修禊或沐浴活动。沐浴是为了去灾。史前人类认为生育是图腾入居妇女体内的结果。进入父权制时代之后，人们才明白了夫妻交媾是生育的原因。但是无论是图腾感生的观念，还是夫妻交媾导致生育的认识，都承认妇女是生育的体现者，子女是由母亲孕育的。然而，并不是每个妇女都能正常生育的，由于疾病原因，往往使某些妇女不孕育。当时人们认为妇女不育是鬼神作祟，就利用上巳节的沐浴治疗不育症。这样久而久之，相沿成习，把沐浴变成上巳节的重要内容。\"},\r\n{\"羽觞\":\r\n\"羽觞是中国古代的一种双耳酒杯，因其形状似鸟得名；还有一说称因觞身可插羽毛，遂被命名为“羽觞”。它的材质多种多样，有木质、玉质、陶质等。木质羽觞较为轻盈，其他材质的则需置于荷叶上，方能平稳地在水面“行走”。\"},\r\n{\"曲水流觞\":\r\n\"曲水流觞，也叫临水浮卵（临水浮卵最为古老，它是将煮熟的鸡蛋放在河水中，任其浮移，谁拾到谁食之。）（曲水流觞称之为“流杯曲水之饮”。所谓“流杯”，也称“流觞”，就是投杯于水的上游，听其随波而下，止于某处，则其人取而饮之。水一般则要弯曲才行）《荆楚岁时记》“士民并出江渚池沼间，为流杯曲水之饮。”众人坐于环曲的水边，把盛着酒的觞置于流水之上，任其顺流漂下，停在谁面前，谁就要将杯中酒一饮而下，并赋诗一首，否则罚酒三杯。魏明帝曾专门建了一个流杯亭。\"}]',NULL),(14,5,'端午节','农历五月初五','农历五月初五日为“端午节”，是中国一个古老的传统节日。“端午”本名“端五”，端是初的意思。因为人们认为“五月”是恶月，“初五”是恶日，因而避讳“五”，改为“端午”。端午节早在西周初期即有记载，并非为纪念屈原而设立的节日，但是端午节之后的一些习俗受到屈原的影响。','农历五月初五日为“端午节”，是中国一个古老的传统节日。“端午”本名“端五”，端是初的意思。因为人们认为“五月”是恶月，“初五”是恶日，因而避讳“五”，改为“端午”。端午节早在西周初期即有记载，并非为纪念屈原而设立的节日，但是端午节之后的一些习俗受到屈原的影响。','[{\"赛龙舟\":\"当时楚国人因舍不得贤臣屈原死去，于是有许多人划船追赶拯救。他们争先恐后，追至洞庭湖时不见踪迹，是为龙舟竞渡之起源，后每年五月五日划龙舟以纪念之。借划龙舟驱散江中之鱼，以免鱼吃掉屈原的尸体。竞渡之习，盛行于吴、越、楚。清乾隆二十九年台湾开始有龙舟竞渡，当时台湾知府蒋元君曾在台南市法华寺半月池主持友谊赛。现代台湾每年五月五日都举行龙舟竞赛。香港有竞渡，英国人也有仿效中国人作法，组织鬼佬队，进行竞赛活动。\"},\n{\"吃粽子\":\"荆楚之人，在五月五日煮糯米饭或蒸粽糕投入江中，以祭祀屈原，唯恐鱼吃掉，故用竹筒盛装糯米饭掷下，以后渐用粽叶包米代替竹筒。饮雄黄酒：此种习俗，在长江流域地区的人家很盛行。\"},\n{\"游百病\":\"此种习俗，盛行于贵州地区的端午习俗。佩香囊：端午节小孩佩香囊，不但有避邪驱瘟之意，而且有襟头点缀之风。香囊内有朱砂、雄黄、香药，外包以丝布，清香四溢:再以五色丝线弦扣成索，作各种不同形状，结成一串，形形色色，玲珑夺目。\"}]',NULL),(15,7,'头伏日','夏至后第三个庚日','三伏为中国古人在长期对自然的观察中，认为是一年中最炎热的时期，也就是俗话所谓“热在三伏”，现在民间一般亦普遍接受此看法。是农历中夏季长达30天或40天的一个时段，是初伏、中伏、末伏的统称。三伏开始日大约在公历的7月10至20日之间，结束日大约在8月8至18日之间（7月中旬到8月中旬），是北半球每年炎热天气中的一段。一年中初伏、末伏各10天，中伏在不同的年份为10或20天。“伏”表示阴气受阳气所迫藏伏地下。','三伏为中国古人在长期对自然的观察中，认为是一年中最炎热的时期，也就是俗话所谓“热在三伏”，现在民间一般亦普遍接受此看法。是农历中夏季长达30天或40天的一个时段，是初伏、中伏、末伏的统称。三伏开始日大约在公历的7月10至20日之间，结束日大约在8月8至18日之间（7月中旬到8月中旬），是北半球每年炎热天气中的一段。一年中初伏、末伏各10天，中伏在不同的年份为10或20天。“伏”表示阴气受阳气所迫藏伏地下。',NULL,NULL),(16,6,'天贶节','农历六月初六','天贶节，为华人传统文化节日之一，指的是农历六月六日，相传这天玉皇大帝会这天开天门到人间出巡。部份地区也有将书籍、衣服等拿出来曝晒的习俗，这个习俗又被称为“晒霉”',NULL,'',NULL),(17,8,'二伏日','夏至后第四个庚日','三伏为中国古人在长期对自然的观察中，认为是一年中最炎热的时期，也就是俗话所谓“热在三伏”，现在民间一般亦普遍接受此看法。是农历中夏季长达30天或40天的一个时段，是初伏、中伏、末伏的统称。三伏开始日大约在公历的7月10至20日之间，结束日大约在8月8至18日之间（7月中旬到8月中旬），是北半球每年炎热天气中的一段。一年中初伏、末伏各10天，中伏在不同的年份为10或20天。“伏”表示阴气受阳气所迫藏伏地下。','三伏为中国古人在长期对自然的观察中，认为是一年中最炎热的时期，也就是俗话所谓“热在三伏”，现在民间一般亦普遍接受此看法。是农历中夏季长达30天或40天的一个时段，是初伏、中伏、末伏的统称。三伏开始日大约在公历的7月10至20日之间，结束日大约在8月8至18日之间（7月中旬到8月中旬），是北半球每年炎热天气中的一段。一年中初伏、末伏各10天，中伏在不同的年份为10或20天。“伏”表示阴气受阳气所迫藏伏地下。',NULL,NULL),(18,8,'终伏日','立秋后第一个庚日','三伏为中国古人在长期对自然的观察中，认为是一年中最炎热的时期，也就是俗话所谓“热在三伏”，现在民间一般亦普遍接受此看法。是农历中夏季长达30天或40天的一个时段，是初伏、中伏、末伏的统称。三伏开始日大约在公历的7月10至20日之间，结束日大约在8月8至18日之间（7月中旬到8月中旬），是北半球每年炎热天气中的一段。一年中初伏、末伏各10天，中伏在不同的年份为10或20天。“伏”表示阴气受阳气所迫藏伏地下。','三伏为中国古人在长期对自然的观察中，认为是一年中最炎热的时期，也就是俗话所谓“热在三伏”，现在民间一般亦普遍接受此看法。是农历中夏季长达30天或40天的一个时段，是初伏、中伏、末伏的统称。三伏开始日大约在公历的7月10至20日之间，结束日大约在8月8至18日之间（7月中旬到8月中旬），是北半球每年炎热天气中的一段。一年中初伏、末伏各10天，中伏在不同的年份为10或20天。“伏”表示阴气受阳气所迫藏伏地下。',NULL,NULL),(19,7,'七夕','农历七月初七','七夕节，又称七巧节、七姐节、女儿节、乞巧节、七娘会、七夕祭 [53-54]、牛公牛婆日、巧夕等，是中国民间的传统节日。七夕节由星宿崇拜演化而来，为传统意义上的七姐诞，因拜祭“七姐”活动在七月七晩上举行，故名“七夕”。拜七姐，祈福许愿、乞求巧艺、坐看牵牛织女星、祈祷姻缘、储七夕水等，是七夕的传统习俗。经历史发展，七夕被赋予了“牛郎织女”的美丽爱情传说，使其成为了象征爱情的节日，从而被认为是中国最具浪漫色彩的传统节日，在当代更是产生了“中国情人节”的文化含义。','七夕的“牛郎织女”来源于人们对自然天象的崇拜，上古时代人们将天文星区与地理区域相互对应，这个对应关系就天文来说，称作“分星”，就地理来说，称作“分野”。相传每年七月初七，牛郎织女会于天上的鹊桥相会。 \n七夕节起始于上古，普及于西汉，鼎盛于宋代。在七夕的众多民俗当中，有些逐渐消失，但还有相当一部分被人们延续了下来。','[{\"香桥会\":\r\n\"在江苏宜兴，有七夕香桥会习俗。每年七夕，人们都赶来参与，搭制香桥。所谓香桥，是用各种粗长的裹头香（以纸包着的线香）搭成的长四五米、宽约半米的桥梁，装上栏杆，于栏杆上扎上五色线制成的花装饰。入夜，人们祭祀双星、乞求福祥，然后将香桥焚化，象征着双星已走过香桥，欢喜地相会。这香桥是由传说中的鹊桥传说衍化而来的。\"},\r\n{\"接露水\":\r\n\"浙江农村，流行用脸盆接露水的习俗。传说七夕节时的露水是牛郎织女相会时的眼泪，如抹在眼上和手上，可使人眼明手快。\"},\r\n{\"斗巧\":\r\n\"七夕斗巧，判定斗巧者巧拙的“卜巧”方法，主要有“穿针乞巧”、“喜蛛应巧”、“对月穿针”、“输巧”、“兰夜斗巧”和“投针验巧”等几种形式。\"}]',NULL),(20,7,'中元节','农历七月十四或十五','中元节，是道教名称，民间世俗称为七月半，佛教则称为盂兰盆节。节日习俗主要有祭祖、放河灯、祀亡魂、焚纸锭、祭祀土地等。它的诞生可追溯到上古时代的祖灵崇拜以及相关时祭。七月乃吉祥月、孝亲月，七月半是民间初秋庆贺丰收、酬谢大地的节日，有若干农作物成熟，民间按例要祀祖，用新稻米等祭供，向祖先报告秋成。它是追怀先人的一种文化传统节日，其文化核心是敬祖尽孝。','这个节日源于早期的“七月半”农作丰收秋尝祭祖，“七月半”的诞生可以追溯到上古的祖先崇拜与农事丰收时祭。古时人们对于农事的丰收，常寄托于神灵的庇佑。奉祀先祖在春夏秋冬皆有，但初秋的“秋尝”在其中十分重要。秋天是收获的季节，人们举行向祖先亡灵献祭的仪式，把时令佳品先供神享，然后自己品尝这些劳动的果实，并祈祝来年的好收成。','[{\"祭祖\":\n\"民间相信，祖先会在七月半返回家中探望子孙，所以需要祭祖。这种祭祖行为是慎终追远、固本思源的传统伦理的一种体现，是一种感德祖先文化传统。时逢小秋的农作物收获，也正好把丰收的喜悦与祖先分享，祭拜的仪式一般在七月中旬傍晚时分举行。平常日子要对先人祭拜，一般都不动先人的牌位。到“七月半”祭祖时，则要把先人的牌位一位一位请出来，恭恭敬敬地放到专门做祭拜用的供桌上，再在每位先人的牌位前插上香，每日晨、午、昏，供三次茶饭。因各地习俗略有差异，因此过节的方式也不尽相同，过节时间上也会有差别。\"},\n{\"烧纸\":\n\"中元节日中，民间俗信行为中，最为突出的是烧纸。据传说，阳间的纸就是阴间的钱，人们烧纸就是给亡故的先辈亲人送钱。通常上坟烧纸时要留下几张，到十字路口焚烧，目的是给无家可归的野鬼一些施舍，它们就不会再去抢劫送给其祖先的钱了。\"},\n{\"焚香燃炮\":\n\"每到七月十四或十五晚，在门外焚香燃炮，同时“烧包”（也叫“荐包”）。\"}]',NULL),(21,7,'财神节','农历七月廿二日','财神节，中国汉族、土族等民间信仰祭祀财神玄坛真君或者增福真君的节日，一般是农历七月廿二日，传说此日是玄坛真君成道日，另说则是增福真君成道日，两真君皆为财神：故本日也是中国传统节日之一',NULL,NULL,NULL),(22,8,'秋社','农历八月中旬以后左右','汉朝以前只有春社，汉朝以后始有秋社。自宋代起，以立春后的第五个戊日为春社日，以立秋后的第五个戊日为秋社日。秋社日大致上在农历八月中旬以后左右。\n\n古代农民通过此一节日表达他们对自然灾害之减少、获得丰收的祝愿，同时也借此开展对他们来说，难得的娱乐活动。在社日到来之时，民众集会竞技，进行各种类型的作社表演，集体欢宴。',NULL,NULL,NULL),(23,8,'中秋节','农历八月十五日','农历八月十五日，这一天正当秋季的正中，故称“中秋”。到了晚上，月圆桂香，旧俗人们把它看作大团圆的象征，要备上各种瓜果和熟食品，是赏月的佳节。中秋节还要吃月饼。据传说，元朝末年，广大人民为了推翻残暴的元朝统治，把发起暴动的日期写在纸条上，放在月饼馅子里，以便互相秘密传递，号召大家在八月十五日起义。终于在这一天爆发了全国规模的农民大起义，推翻了腐朽透顶的元朝统治。此后，中秋吃月饼的风俗就更加广泛地流传开来。','中秋节，又称祭月节、月光诞、月夕、秋节、仲秋节、拜月节、月娘节、月亮节、团圆节等，是中国民间传统节日。中秋节源自对天象的崇拜，由上古时代秋夕祭月演变而来。中秋节自古便有祭月、赏月、吃月饼、看花灯、赏桂花、饮桂花酒等民俗，流传至今，经久不息。','[{\"祭月（拜月）\":\n\"祭月，在中国是一种十分古老的习俗，实际上是古人对“月神”的一种崇拜活动。在古代有“秋暮夕月”的习俗。夕月，即拜祭月神。自古以来，在广东部分地区，人们都有在中秋晚上拜祭月神（拜月娘、拜月光）的习俗。拜月，设大香案，摆上月饼、西瓜、苹果、红枣、李子、葡萄等祭品。在月下，将“月神”牌位放在月亮的那个方向，红烛高燃，全家人依次拜祭月亮，祈求福佑。祭月赏月，托月追思，表达了人们的美好祝愿。祭月作为中秋节重要的祭礼之一，从古代延续至今，逐渐演化为民间的赏月、颂月活动，同时也成为现代人渴望团聚、寄托对生活美好愿望的主要形态。 \"},\n{\"赏月\":\n\"赏月的风俗来源于祭月，严肃的祭祀变成了轻松的欢娱。据说此夜月球距地球最近，月亮最大最圆最亮，所以从古至今都有饮宴赏月的习俗。古时候南北风俗各异，各地风俗不一，中秋赏月活动的文字记载出现在魏晋时期，但未成习。到了唐代，中秋赏月、玩月颇为盛行，许多诗人的名篇中都有咏月的诗句。 \"},\n{\"猜谜\":\n\"中秋月圆夜在公共场所挂着许多灯笼，人们都聚集在一起，猜灯笼身上写的谜语，因为是大多数年轻男女喜爱的活动，同时在这些活动上也传出爱情佳话，因此中秋猜灯谜也被衍生了一种男女相恋的形式。\"},\n{\"吃月饼\":\n\"月饼月饼，又叫月团、丰收饼、宫饼、团圆饼等，是古代中秋祭拜月神的贡品。月饼最初是用来祭奉月神的供品，后来人们逐渐把中秋赏月与品尝月饼，作为家人团圆的一大象征。月饼象征着大团圆，人们把它当作节日食品，用它祭月、赠送亲友。发展至今，吃月饼已经是中国南北各地过中秋节的必备习俗，中秋节这天人们都要吃月饼以示“团圆”。\"}]',NULL),(24,9,'重阳节','农历九月九日','重阳节农历九月九日，为传统的重阳节，又称“老人节”。因为《易经》中把“六”定为阴数，把“九”定为阳数，九月九日，日月并阳，两九相重，故而叫重阳，也叫重九。重阳节早在战国时期就已经形成，到了唐代，重阳被正式定为民间的节日，此后历朝历代沿袭至今。重阳又称“踏秋”与三月三日“踏春”皆是家族倾室而出，重阳这天所有亲人都要一起登高“避灾”，插茱萸、赏菊花。自魏晋重阳气氛日渐浓郁，为历代文人墨客吟咏最多的几个传统节日之一。','重阳节农历九月九日，为传统的重阳节，又称“老人节”。因为《易经》中把“六”定为阴数，把“九”定为阳数，九月九日，日月并阳，两九相重，故而叫重阳，也叫重九。重阳节早在战国时期就已经形成，到了唐代，重阳被正式定为民间的节日，此后历朝历代沿袭至今。重阳又称“踏秋”与三月三日“踏春”皆是家族倾室而出，重阳这天所有亲人都要一起登高“避灾”，插茱萸、赏菊花。自魏晋重阳气氛日渐浓郁，为历代文人墨客吟咏最多的几个传统节日之一。','[{\"登高\":\n\"重阳节登高重阳节登高的风俗历史悠久。古代民间在重阳节有登高的风俗，故重阳节又叫“登高节”。登高“辞青”也是源于大自然中的节气，重阳节登山“辞青”与古人在阳春三月春游“踏青”相对应。登高的地点，没有统一的规定，登高所到之处大抵分为登高山、登高楼、抑或是登高台。登高风俗其由来大致有三：其一是源于古人的山岳崇拜；其二是源于“清气上扬、浊气下沉”的气候；其三是登往高处乘清气升天。\"},\n{\"祭祖\":\n\"重阳节是中国传统四大祭祖节日之一，古代民间素有祭祖祈福的传统。重阳祭祖的传统习俗在岭南一带至今仍盛行，人们在每年的重阳节举行祭祖活动。无论是祭祖活动还是登高远望，其最根本的作用是增强人们文化认同感，加强家族和社会的凝聚力。在传统习俗中，清明为“春祭”，重阳为“秋祭”。重阳登高祭祖的传统风俗延绵至今。\"},\n{\"赏菊\":\n\"重阳日，历来就有赏菊花的风俗，所以古来又称菊花节。赏菊习俗源于菊文化。菊本是天然花卉，因其花色五彩缤纷且傲霜怒放而形成赏菊赞菊的菊文化。从三国魏晋以来，重阳聚会饮酒、赏菊赋诗已成时尚。在中国古俗中，菊花象征长寿。菊是长寿之花，又为文人们赞美作凌霜不屈的象征。\"}]',NULL),(25,10,'寒衣节','农历十月初一','寒衣节，是中国传统节日，流行于华北，为每年的农历十月初一，是民间祭祖的日子，相传祖灵会在本日回返人世，领取御寒衣物准备过冬，故人间除了祭祀之外，要烧化纸做的衣服，或者印有衣服图样的纸钱。也有地方只烧纸钱（冥纸袋、纸包袱），不烧衣服。 ',NULL,NULL,NULL),(26,10,'下元节','农历在十月十五','\n祭拜下元水官大帝\n\n下元节举行祈安清醮所束的灯篙\n下元节为中国节日之一，时间在农历十月十五，是“水官大帝”的生日，相传当天该神会下凡人间为民解厄之日，这天人们会准备香烛祭品拜祀水官大帝，以求平安。因此又称“消灾日”、“谢平安日”、“下元水官节”。\n\n此时，正值农村收获季节，武进一带几乎家家户户用新谷磨糯米粉做小团子，包素菜馅心，蒸熟后在大门外“斋天”。又，旧时俗谚曰：“十月半，牵砻团子斋三官”。原来道教谓是日是“三官”生日，道教徒家门外均竖天杆，杆上挂黄旗，旗上写著“天地水府”、“风调雨顺”、“国泰民安”、“消灾降福”等字样；晚上，杆顶挂三盏天灯，做团子需三官。民国以后，此俗渐废，惟民间将祭亡、烧库等仪式提前在农历七月十五“中元节”时举行。','下元节的来历与道教有关。道门有三官大帝，天官大帝、地官大帝、水官大帝、谓天官赐福，地官赦罪，水官解厄。三官的诞生日分别为农历的正月十五日、七月十五日、十月十五日，这三天被称为“上元节”、“中元节”、“下元节”。下元节，就是“下元三品解厄水官洞阴大帝”的诞生日，亦是为解厄之辰，俗谓是日，水官根据考察，录奏天廷，为人解厄。《中华风俗志》也有记载：“十月望为下元节，俗传水宫解厄之辰，亦有持斋诵经者。”这一天，道观做道场，民间则祭祀亡灵，并祈求下元水官排忧解难，号称谢平安。古代又有朝廷是日禁屠及延缓死刑执行日期的规定。此外，在民间，下元节这一日，还有民间工匠祭炉神的习俗，民间奉祀的炉神通常是太上老君，大概源于道教用炉炼仙丹，而太上老君被视为仙丹之祖。一说水官为太上老君，老君化炁为下元水官之神，主宰水域，故加以奉祀。',NULL,NULL),(27,12,'冬至','阳历十二月二十一日或二十二日','冬至，又称日南至、冬节、亚岁等，兼具自然与人文两大内涵，既是二十四节气中一个重要的节气，也是中国民间的传统祭祖节日。冬至是四时八节之一，被视为冬季的大节日，在古代民间有“冬至大如年”的讲法。冬至习俗因地域不同而又存在着习俗内容或细节上的差异。在中国南方地区，有冬至祭祖、宴饮的习俗。在中国北方地区，每年冬至日有吃饺子的习俗。','中国的星象文化源远流长、博大精深，廿四节气最初是依据斗转星移制定，在不同的季节不同的时间，北斗七星会指向不同的方位，即所谓“斗柄指东，天下皆春；斗柄指南，天下皆夏；斗柄指西，天下皆秋；斗柄指北，天下皆冬”。“二十四节气”是上古农耕文明的产物，它与干支时间以及八卦等是联系在一起的，有着久远的历史源头。西汉武帝时期，将“二十四节气”吸收入《太初历》作为指导北方中原地区农事的历法补充，采用土圭测日影法在黄河流域测定“二十四节气”。现行的“二十四节气”是根据太阳在回归黄道上的位置来定的，即在一个为360度圆周的“黄道”（一年当中太阳在天球上的视路径）上，以春分点为0度起点，太阳在黄道上每运行15度为一个“节气”。在传承发展中，二十四节气被列入农历中，成为农历一个重要部分。','[{\"冬至大如年\":\n\"冬至，兼具自然与人文两大内涵，既是二十四节气中一个重要的节气，也是中国民间的传统节日，素有“冬至大如年”之说。冬至，冬至是太阳回返的始点，自冬至起太阳高度回升、白昼逐日增长，冬至标示着太阳新生、太阳往返运动进入新的循环，所以古人把冬至看作“大吉之日”，在时年八节当中，冬至的重要程度不亚于立春岁节。在中国南方地区，有冬至祭祖、宴饮的习俗。在中国北方地区，每年冬至日有吃饺子的习俗。\"},\n{\"酿米酒\":\n\"传统的姑苏人家，会在冬至夜喝冬酿酒，冬酿酒用糯米或者黄米，加入桂花酿造。 \"},\n{\"吃汤圆\":\n\"“冬至圆”吃汤圆是冬至的传统习俗，在江南尤为盛行。“汤圆”是冬至必备的食品，“圆”意味着“团圆”“圆满”，冬至吃汤圆又叫“冬至圆”。民间有“吃了汤圆大一岁之说”。\"},\n{\"吃饺子\":\n\"在中国北方许多地区，每年冬至日，有吃饺子的习俗。中国北方地区在这天要吃饺子因为饺子有“消寒”之意，至今民间还流传着“冬至不端饺子碗，冻掉耳朵没人管”的民谚。\"}]',NULL),(28,12,'腊八节','农历十二月初八','腊八节，即每年农历十二月初八，又称为“法宝节”“佛成道节”“成道会”等。本为佛教纪念释迦牟尼佛成道之节日，后逐渐也成为民间节日。','腊八节，节期在每年农历十二月初八，主要习俗是“喝腊八粥”。腊八节是佛教盛大的节日之一。按佛教记载，释迦牟尼成道之前曾修苦行多年，形销骨立，遂发现苦行不是究竟解脱之道，决定放弃苦行。此时遇见一牧女呈献乳糜，食后体力恢复，端坐菩提树下沉思，于十二月八日“成道”。为纪念此事，佛教徒于此日举行法会，以米和果物煮粥供佛。南宋吴自牧《梦梁录》载：“此月八日，寺院谓之腊八。大刹等寺，俱设五味粥，名曰腊八粥。”自从佛教传入中国，各寺院都用香谷和果实做成粥来赠送给门徒和善男信女们。腊八这天，各寺院举行法会，效法佛陀成道前牧女献乳糜的典故，用香谷和果实等煮粥供佛，名为腊八粥。传说喝了这种粥以后，就可以得到佛祖的保佑，因此，腊八粥也叫“福寿粥”、“福德粥”、和“佛粥”。“腊八”本为佛教节日，后经历代演变，逐渐成为家喻户晓的民间节日。',NULL,'[{\"腊八粥\":\r\n\"腊八节腊八粥，又称“七宝五味粥”、“佛粥”、“大家饭”等，是一种由多样食材熬制而成的粥。腊八这一天喝腊八粥这一习俗的来历，是和佛陀成佛的故事有关的。因此清代苏州文人李福曾有诗云：“腊月八日粥，传自梵王国，七宝美调和，五味香糁入。”腊八节喝腊八粥的习俗来源于佛教。十二月初八这天是佛祖释迦牟尼成道之日，古印度人为了不忘佛祖成道以前所受的苦难，也为了纪念佛祖在十二月初八悟道成佛，便在这天以吃杂拌粥作为纪念。自从佛教从古印度传入中国，各寺院都用香谷和果实做成粥来赠送给门徒和善男信女们。这天，各寺院举行法会，效法佛陀成道前牧女献乳糜的典故，用香谷和果实等煮粥供佛，名为腊八粥。也有的寺院于腊月初八以前由僧人持钵，沿街化缘，将收集的米、栗、枣、果仁等煮成腊八粥散发给穷人。大家认为吃了可以得佛陀保佑， 所以贫穷人家称它“佛粥”。一般，寺院的佛粥既美味且量多，以满足来寺院参加纪念法会的善男信女需要。有些信众专门奔“粥”而来，认为腊八供养佛陀的粥吉祥，不仅自己食用，还带回家供家人享用。年复一年，寺院做腊八粥的传统便广泛传播到民间，由此在我国北方地区逐渐形成了过“腊八节”喝腊八粥的风俗。\"},\r\n{\"腊八醋\":\r\n\"腊八醋，传统腊八节习俗。在腊八这天用醋泡大蒜的习俗，名“腊八醋”。腊八醋，要泡到大年初一，初一吃饺子，要吃素饺子，取一年素素净净之意，蘸腊八醋吃，别有一番滋味是。“腊八醋”不仅味道醇正，而且久放不坏。\"},\r\n{\"腊八蒜\":\r\n\"腊八蒜一到腊月初八，过年的气氛一天赛过一天，华北大部分地区在腊月初八这天有用醋泡蒜的习俗，叫腊八蒜。 [13]  腊八蒜就是在阴历腊月初八的这天来泡制蒜，是华北地区的一个习俗。其材料就是醋和大蒜瓣儿。\\n泡腊八蒜是一道主要流行于华北地区的传统小吃，是腊八节的节日食俗。腊八蒜材料其实非常简单，就是醋和大蒜瓣儿。做法也是极其简单，将剥了皮的蒜瓣儿放到一个可以密封的罐子，瓶子之类的容器里面，然后倒入醋，封上口放到一个冷的地方。慢慢地，泡在醋中的蒜就会变绿，最后会变得通体碧绿的，如同翡翠碧玉。\"}]'),(29,12,'除夕','农历十二月二十九或三十日','除夕，为岁末的最后一天夜晚。岁末的最后一天称为“岁除”，意为旧岁至此而除，另换新岁。除，即去除之意；夕，指夜晚。“除夕”是岁除之夜的意思，又称大年夜、除夕夜、除夜等，时值年尾的最后一个晚上。除夕是除旧布新、阖家团圆、祭祀祖先的日子，与清明节、七月半、重阳节同是中国民间传统的祭祖大节。除夕，在国人心中是具有特殊意义的，这个年尾最重要的日子，漂泊再远的游子也是要赶着回家去和家人团聚，在除夕，辞旧岁，迎新春。','岁除，是岁末除旧布新的日子。除夕，即岁除之夜，它与岁首（新年）首尾相连。旧岁至此夕而除，第二天就换新岁了，故俗以为除夕。除夕作为年尾的节日，源自上古时代岁末除旧布新、祭祀祖先风俗，岁除之日是传统的祭祖节。古籍中有讲到：“天地者，生之本也；先祖者，类之本也。”意思就是说天地是生命的根本，祖先是我们人类的根本，祭祖就是一种传承孝道的习俗。','[{\"年夜饭\":\r\n\"年夜饭除夕这一天对华人来说是极为重要的。这一天人们准备辞旧迎新，吃团圆饭。家庭是华人社会的基石，一年一度的团圆饭充分表现出中华民族家庭成员的互敬互爱，这种互敬互爱使一家人之间的关系更为紧密。家人的团聚往往令一家之主在精神上得到安慰与满足，老人家眼看儿孙满堂，一家大小共叙天伦，过去的关怀与抚养子女所付出的心血总算没有白费，这是何等的幸福。而年轻一辈，也正可以借此机会向父母的养育之恩表达感激之情。\"},\r\n{\"贴年红\":\r\n\"贴春联年红，是春联、门神、窗花、年画、福字等过年时所贴的红色喜庆元素统称。过年贴年红（挥春），是中国民间由来已久的风俗，寄托了人们对幸福生活的向往，对美好未来的祝愿。\"},\r\n{\"守岁\":\r\n\"除夕守岁是年俗活动之一，守岁之俗由来已久。守岁的民俗主要表现为所有房子都点燃岁火，合家欢聚，并守着“岁火”不让熄灭，等着辞旧迎新的时刻，迎接新年到来。除夕夜灯火通宵不灭，曰“燃灯照岁”或“点岁火”，所有房子都点上灯烛，还要专门在床底点灯烛，遍燃灯烛，谓之“照虚耗”，据说如此照过之后，就会使来年家中财富充实。古时南北风俗各异，古时北方守岁习俗主要为“熬年夜”（通宵守夜），如晋朝周处所著的《风土记》中说：除夕之夜大家各相与赠送，称“馈岁”；长幼聚欢，祝颂完备，称“分岁”；终岁不眠，以待天明，称“守岁”。有的地方在除夕之夜，全家团聚在一起，吃过年夜饭，点起蜡烛或油灯，围坐炉旁闲聊，通宵守夜，象征着把一切邪瘟病疫照跑驱走，期待着新的一年吉祥如意。 \"},\r\n{\"压岁钱\":\r\n\"压岁钱，是过年习俗之一，年晚饭后长辈要将事先准备好的压岁钱分给晚辈，据说压岁钱可以压住邪祟，晚辈得到压岁钱就可以平平安安度过一岁。压岁钱在民俗文化中寓意辟邪驱鬼，保佑平安。压岁钱最初的用意是镇恶驱邪。因为人们认为小孩容易受鬼祟的侵害，所以用压岁钱压祟驱邪。在历史上，压岁钱是分多种的，一般在新年倒计时时由长辈分给晚辈，表示压祟，包含着长辈对晚辈的关切之情和真切祝福；另一种就是晚辈给老人的，这个压岁钱的“岁”指的是年岁，意在期盼老人长寿。可追溯的最早压岁钱在汉代，又叫压胜钱，并不在市面上流通，而是铸成钱币形式的玩赏物，有避邪的功能。\"},\r\n{\"挂灯笼\":\r\n\"挂灯笼过年挂灯笼是中国的古老习俗，红色代表喜庆，圆形灯笼则寓意团圆美满，红灯笼象征着平安祥和、红红火火。中国的灯笼又统称为灯彩，据说起源于1800多年前的西汉时期。每年的除夕节前后，人们都挂起象征团圆意义的红灯笼，来营造一种喜庆的氛围。除夕之夜守岁，门口挂着红灯笼，堂屋燃着熊熊的红火，点着蜡烛或油灯，一家人围桌而谈。\"}]',NULL);
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03  2:15:10
