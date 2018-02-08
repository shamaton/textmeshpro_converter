# 文字列を変換
def thorikawa2intarr(src)
    arr = []
    splits = src.split(",")

    splits.each{|var|
        tmp = var.split("-")
        if tmp.length > 1
            arr = arr + Range.new(tmp[0].to_i, tmp[1].to_i).to_a
        else
            arr.push(tmp[0].to_i)
        end
    }
    return arr
end

# 漢字の羅列をint配列に変換
def kanji2intarr(src)
    return src.chars.map(&:ord)
end

# sources
# ref : https://gist.github.com/thorikawa/2856a7cf912349c0b6b7
src1 = "32-128,12288-12543,12448-12543,65280-65519,19968,19971,19977,19978,19979,20013,20061,20108,20116,20154,20241,20808,20837,20843,20845,20870,20986,21147,21313,21315,21475,21491,21517,22235,22303,22805,22823,22825,22899,23376,23383,23398,23567,23665,24029,24038,24180,25163,25991,26085,26089,26376,26408,26412,26449,26519,26657,26862,27491,27671,27700,28779,29356,29577,29579,29983,30000,30007,30010,30333,30334,30446,30707,31354,31435,31481,31992,32819,33457,33609,34411,35211,35997,36196,36275,36554,37329,38632,38738,38899,19975,20024,20132,20140,20170,20250,20307,20309,20316,20803,20804,20809,20844,20869,20908,20992,20998,20999,21069,21271,21320,21322,21335,21407,21451,21476,21488,21512,21516,22238,22259,22269,22290,22320,22580,22768,22770,22799,22806,22810,22812,22826,22969,22985,23460,23478,23546,23569,23721,24037,24066,24112,24195,24215,24339,24341,24351,24369,24375,24403,24418,24460,24515,24605,25144,25165,25945,25968,26032,26041,26126,26143,26149,26172,26178,26228,26332,26360,26397,26469,26481,27005,27468,27490,27497,27597,27598,27611,27744,27773,27963,28023,28857,29238,29275,29702,29992,30011,30058,30452,30690,30693,31038,31179,31185,31572,31639,31859,32025,32048,32068,32117,32218,32701,32771,32862,32905,33258,33337,33394,33590,34892,35199,35242,35282,35328,35336,35352,35441,35486,35501,35895,36023,36208,36817,36890,36913,36947,36960,37324,37326,38263,38272,38291,38634,38642,38651,38957,38996,39080,39135,39318,39340,39640,39770,40165,40180,40614,40644,40658,19969,19990,20001,20027,20055,20104,20107,20181,20182,20195,20303,20351,20418,20493,20840,20855,20889,21015,21161,21193,21205,21213,21270,21306,21307,21435,21453,21462,21463,21495,21521,21531,21619,21629,21644,21697,21729,21830,21839,22338,22830,22987,22996,23432,23433,23450,23455,23458,23470,23487,23506,23550,23616,23627,23736,23798,24030,24115,24179,24184,24230,24235,24237,24335,24441,24453,24613,24687,24746,24754,24819,24847,24863,25152,25171,25237,25342,25345,25351,25918,25972,26053,26063,26132,26157,26257,26263,26354,26377,26381,26399,26495,26609,26681,26893,26989,27096,27178,27211,27425,27503,27515,27703,27770,27833,27874,27880,27891,27915,27969,28040,28145,28201,28207,28246,28271,28450,28845,29289,29699,30001,30003,30028,30033,30149,30330,30331,30382,30399,30456,30476,30495,30528,30701,30740,31036,31070,31085,31119,31186,31350,31456,31461,31515,31532,31558,31561,31665,32026,32066,32209,32244,32650,32654,32722,32773,32946,33510,33655,33853,33865,34220,34880,34920,35433,35519,35527,35910,36000,36215,36335,36523,36578,36605,36786,36820,36861,36865,36895,36914,36938,36939,37096,37117,37197,37202,37325,37444,37504,38283,38498,38525,38542,38598,38754,38988,39154,39208,39365,40763,19981,20105,20184,20196,20197,20210,20253,20301,20302,20363,20415,20449,20489,20505,20511,20572,20581,20596,20685,20740,20806,20816,20849,20853,20856,20919,21021,21029,21033,21047,21103,21151,21152,21162,21172,21191,21253,21330,21332,21336,21338,21360,21442,21490,21496,21508,21578,21608,21809,21916,22120,22258,22266,22411,22530,22633,22763,22793,22827,22833,22909,23395,23403,23436,23448,23475,23519,24035,24046,24076,24109,24111,24213,24220,24247,24314,24452,24466,24471,24517,24565,24859,25104,25126,25240,25369,25913,25937,25943,25955,26009,26071,26152,26223,26368,26395,26410,26411,26413,26448,26463,26494,26524,26628,26696,26757,26800,26997,27161,27231,27424,27508,27531,27578,27602,27663,27665,27714,27835,27861,27875,27973,28020,28165,28288,28417,28783,28961,28982,28988,29031,29105,29287,29305,29987,30340,30465,31069,31080,31278,31309,31478,31505,31649,31680,31881,32000,32004,32080,32102,32154,32622,32769,32963,33032,33144,33251,33322,33391,33464,33469,33521,33756,34903,34915,35201,35226,35251,35347,35430,35500,35506,35696,35937,36008,36015,36027,36062,36557,36650,36766,36794,36899,36948,36984,37089,37327,37682,37857,38306,38520,38538,38745,38918,39000,39006,39131,39151,39178,39443,20037,20175,20206,20214,20219,20284,20313,20385,20445,20462,20469,20491,20633,20687,20877,21002,21028,21046,21048,21063,21177,21209,21218,21402,21477,21487,21942,22240,22243,22311,22312,22343,22522,22577,22659,22675,22679,22818,22971,23142,23481,23492,23500,23566,23621,23646,24067,24107,24120,24185,24207,24321,24373,24448,24489,24499,24535,24540,24555,24615,24681,24773,24907,24931,25215,25216,25307,25480,25505,25509,25552,25613,25903,25919,25925,25973,26029,26087,26131,26292,26465,26525,26619,26684,26716,26908,27083,27494,27604,27704,27827,28082,28151,28187,28204,28310,28436,28500,28797,29123,29256,29359,29366,29420,29575,29694,30041,30053,30410,30524,30772,30906,31034,31062,31105,31227,31243,31246,31689,31934,32032,32076,32113,32118,32191,32207,32232,32318,32340,32618,32676,32681,32789,32887,32933,33021,33288,33292,33294,34899,34907,35069,35079,35215,35299,35373,35377,35388,35413,35611,35613,35672,35703,35914,36001,36007,36012,36024,36031,36032,36039,36059,36074,36664,36848,36855,36864,36870,36896,36942,36969,37240,37489,37509,37549,38450,38480,38522,38555,38609,38750,38928,38936,38989,39164,20006,20081,20083,20129,20161,20379,20467,20516,20663,20778,20826,20874,20966,21051,21106,21109,21127,21220,21361,21365,21427,21454,21518,21542,21560,21628,21892,22256,22402,22478,22495,22863,22894,23039,23384,23389,23429,23431,23447,23449,23453,23459,23494,23544,23554,23556,23558,23562,23601,23610,23626,23637,23652,24049,24059,24149,24178,24188,24193,24231,24310,24459,24467,24536,24544,25010,25105,25209,25285,25309,25313,25448,25506,25512,25582,25805,25964,26144,26217,26262,26286,26391,26426,26522,26579,26666,26834,27169,27177,27193,27442,27573,27839,27849,27927,27966,28168,28304,28526,28608,28784,29087,29255,29677,30064,30097,30171,30343,30427,30431,30475,30722,30913,31169,31192,31296,31348,31379,31563,31574,31777,31958,31995,32005,32013,32020,32121,32294,32302,32626,32716,32854,32954,32972,33016,33075,33145,33235,33256,33267,33509,33879,33976,34101,34453,34886,35009,35013,35023,35036,35222,35239,35342,35370,35379,35422,35468,35469,35477,35488,35492,35542,35576,35686,36020,36035,36986,37109,37111,37341,37628,38281,38307,38477,38491,38500,38556,38627,38761,38914,39592,19976,19982,19988,19992,19993,20025,20047,20057,20094,20102,20114,20117,20124,20139,20141,20171,20185,20208,20225,20239,20240,20271,20276,20280,20282,20294,20304,20339,20341,20365,20381,20398,20399,20405,20419,20426,20439,20472,20498,20515,20523,20537,20553,20559,20597,20598,20605,20621,20625,20632,20652,20661,20670,20693,20698,20711,20736,20754,20767,20805,20811,20813,20860,20882,20887,20896,20934,20941,20957,20961,20982,20984,20985,20995,21000,21009,21040,21050,21066,21078,21083,21091,21092,21104,21155,21169,21182,21189,21208,21215,21223,21234,21242,21249,21280,21305,21311,21319,21329,21331,21344,21363,21364,21368,21380,21400,21448,21450,21452,21460,21465,21483,21484,21513,21519,21520,21535,21547,21561,21576,21577,21682,21696,21746,21766,21767,21776,21807,21843,21914,21917,21930,21931,21987,22022,22065,22132,22151,22234,22287,22346,22353,22378,22435,22475,22519,22521,22528,22533,22549,22564,22570,22592,22593,22602,22609,22612,22615,22618,22654,22684,22696,22707,22718,22721,22727,22730,22732,22766,22769,22855,22857,22865,22868,22885,22888,22890,22900,22914,22915,22916,22922,22937,22949,22952,22995,23019,23035,23041,23064,23072,23087,23110,23130,23167,23186,23233,23244,23265,23330,23380,23396,23452,23472,23476,23477,23490,23515,23517,23521,23527,23529,23534,23551,23553,23561,23563,23578,23612,23613,23614,23615,23624,23653,23663,23696,23724,23731,23776,23777,23792,23815,23822,23849,24033,24039,24040,24070,24093,24101,24125,24133,24163,24187,24189,24190,24202,24246,24248,24259,24265,24266,24311,24330,24336,24340,24358,24359,24382,24425,24427,24432,24433,24444,24449,24464,24481,24490,24494,24500,24505,24524,24525,24537,24594,24598,24608,24618,24651,24656,24658,24677,24680,24685,24693,24724,24735,24736,24739,24742,24745,24764,24785,24796,24808,24816,24833,24841,24858,24904,24908,24910,24917,24930,24936,24942,24944,24950,24962,24974,24996,25001,25014,25022,25031,25040,25074,25080,25106,25135,25147,25151,25159,25161,25173,25201,25206,25220,25226,25233,25239,25244,25246,25259,25265,25269,25273,25276,25277,25293,25296,25298,25299,25304,25305,25312,25324,25335,25361,25375,25391,25407,25429,25436,25454,25475,25484,25490,25496,25499,25511,25514,25522,25551,25562,25563,25569,25588,25594,25644,25645,25658,25662,25666,25688,25705,25731,25764,25774,25778,25793,25830,25836,25915,25935,25954,25975,25993,25998,26007,26012,26020,26021,26045,26059,26082,26088,26092,26118,26119,26159,26222,26230,26241,26247,26278,26283,26311,26356,26361,26367,26389,26417,26420,26429,26441,26479,26512,26528,26530,26543,26550,26564,26576,26580,26611,26643,26680,26685,26691,26705,26719,26820,26827,26842,26847,26874,27004,27010,27133,27396,27431,27450,27454,27475,27507,27529,27530,27542,27572,27579,27583,27713,27735,27738,27743,27784,27798,27809,27810,27832,27836,27841,27850,27852,27873,27877,27888,27934,27941,27946,27972,27996,28006,28010,28014,28024,28057,28079,28092,28113,28129,28155,28167,28169,28171,28179,28193,28198,28286,28287,28317,28342,28357,28363,28369,28381,28382,28404,28418,28422,28431,28448,28459,28460,28472,28508,28511,28516,28548,28609,28611,28651,28655,28716,28809,28810,28814,28858,28872,28966,29017,29033,29038,29128,29157,29190,29237,29298,29344,29378,29417,29421,29467,29471,29483,29486,29494,29503,29508,29539,29554,29572,29645,29664,29748,29872,29885,29942,29976,29978,30002,30036,30044,30045,30067,30094,30123,30130,30142,30151,30168,30178,30196,30274,30290,30294,30342,30406,30423,30435,30436,30450,30462,30496,30522,30561,30563,30636,30683,30703,30741,30770,30813,30827,30828,30849,30865,30952,30977,30990,31048,31049,31077,31109,31117,31168,31199,31209,31216,31258,31282,31292,31295,31298,31311,31339,31361,31363,31378,31406,31407,31452,31471,31526,31570,31623,31684,31716,31807,31821,31883,31890,31895,31896,31899,31911,31975,31998,32011,32027,32033,32034,32043,32047,32051,32057,32058,32094,32097,32153,32173,32177,32178,32202,32210,32224,32233,32239,32257,32260,32283,32299,32321,32330,32341,32365,32368,32566,32624,32631,32645,32705,32763,32764,32784,32791,32884,32908,32918,32925,32930,32937,32938,32943,32966,32974,32990,33012,33026,33029,33050,33073,33081,33104,33109,33136,33178,33180,33192,33261,33268,33303,33310,33311,33324,33334,33351,33382,33419,33437,33459,33495,33538,33550,33618,33624,33738,33740,33747,33775,33900,33988,34180,34214,34218,34219,34281,34299,34384,34394,34396,34398,34442,34503,34509,34542,34701,34909,34913,34928,34935,34955,34987,35010,35029,35064,35088,35090,35167,35186,35206,35207,35302,35330,35351,35359,35380,35386,35408,35412,35424,35440,35442,35443,35463,35465,35475,35480,35531,35565,35566,35582,35584,35585,35588,35609,35617,35641,35676,35698,35930,35946,35998,36002,36009,36011,36036,36042,36051,36060,36064,36066,36070,36092,36104,36198,36212,36229,36234,36259,36317,36321,36339,36341,36362,36367,36493,36556,36562,36575,36600,36611,36617,36637,36649,36676,36763,36785,36796,36805,36814,36843,36845,36867,36879,36880,36883,36884,36893,36910,36920,36930,36933,36935,36941,36949,36963,36973,36974,36981,36983,36991,36996,37030,37034,37048,37066,37070,37101,37196,37204,37218,37226,37228,37237,37239,37276,37304,37320,37347,37389,37428,37467,37474,37507,37521,37528,37613,37619,37656,37664,37676,37679,37723,37782,37806,37912,37969,38289,38309,38322,38360,38459,38468,38499,38501,38506,38512,38515,38517,38518,38533,38534,38543,38548,38560,38563,38583,38587,38596,38597,38599,38604,38626,38640,38646,38647,38656,38663,38666,38684,38695,38706,38772,38907,38911,38917,38929,38930,38971,38972,38997,39015,39138,39165,39166,39187,39321,39364,39366,39376,39438,39442,39472,39514,39620,39658,39740,39746,39749,39764,39854,39912,40335,40599,40635,40665,40723,40802"
# 常用漢字
src2 = "亜哀挨愛曖悪握圧扱宛嵐安案暗以衣位囲医依委威為畏胃尉異移萎偉椅彙意違維慰遺緯域育一壱逸茨芋引印因咽姻員院淫陰飲隠韻右宇羽雨唄鬱畝浦運雲永泳英映栄営詠影鋭衛易疫益液駅悦越謁閲円延沿炎宴怨媛援園煙猿遠鉛塩演縁艶汚王凹央応往押旺欧殴桜翁奥横岡屋億憶臆虞乙俺卸音恩温穏下化火加可仮何花佳価果河苛科架夏家荷華菓貨渦過嫁暇禍靴寡歌箇稼課蚊牙瓦我画芽賀雅餓介回灰会快戒改怪拐悔海界皆械絵開階塊楷解潰壊懐諧貝外劾害崖涯街慨蓋該概骸垣柿各角拡革格核殻郭覚較隔閣確獲嚇穫学岳楽額顎掛潟括活喝渇割葛滑褐轄且株釜鎌刈干刊甘汗缶完肝官冠巻看陥乾勘患貫寒喚堪換敢棺款間閑勧寛幹感漢慣管関歓監緩憾還館環簡観韓艦鑑丸含岸岩玩眼頑顔願企伎危机気岐希忌汽奇祈季紀軌既記起飢鬼帰基寄規亀喜幾揮期棋貴棄毀旗器畿輝機騎技宜偽欺義疑儀戯擬犠議菊吉喫詰却客脚逆虐九久及弓丘旧休吸朽臼求究泣急級糾宮救球給嗅窮牛去巨居拒拠挙虚許距魚御漁凶共叫狂京享供協況峡挟狭恐恭胸脅強教郷境橋矯鏡競響驚仰暁業凝曲局極玉巾斤均近金菌勤琴筋僅禁緊錦謹襟吟銀区句苦駆具惧愚空偶遇隅串屈掘窟熊繰君訓勲薫軍郡群兄刑形系径茎係型契計恵啓掲渓経蛍敬景軽傾携継詣慶憬稽憩警鶏芸迎鯨隙劇撃激桁欠穴血決結傑潔月犬件見券肩建研県倹兼剣拳軒健険圏堅検嫌献絹遣権憲賢謙鍵繭顕験懸元幻玄言弦限原現舷減源厳己戸古呼固孤弧股虎故枯個庫湖雇誇鼓錮顧五互午呉後娯悟碁語誤護口工公勾孔功巧広甲交光向后好江考行坑孝抗攻更効幸拘肯侯厚恒洪皇紅荒郊香候校耕航貢降高康控梗黄喉慌港硬絞項溝鉱構綱酵稿興衡鋼講購乞号合拷剛傲豪克告谷刻国黒穀酷獄骨駒込頃今困昆恨根婚混痕紺魂墾懇左佐沙査砂唆差詐鎖座挫才再災妻采砕宰栽彩採済祭斎細菜最裁債催塞歳載際埼在材剤財罪崎作削昨柵索策酢搾錯咲冊札刷刹拶殺察撮擦雑皿三山参桟蚕惨産傘散算酸賛残斬暫士子支止氏仕史司四市矢旨死糸至伺志私使刺始姉枝祉肢姿思指施師恣紙脂視紫詞歯嗣試詩資飼誌雌摯賜諮示字寺次耳自似児事侍治持時滋慈辞磁餌璽鹿式識軸七叱失室疾執湿嫉漆質実芝写社車舎者射捨赦斜煮遮謝邪蛇尺借酌釈爵若弱寂手主守朱取狩首殊珠酒腫種趣寿受呪授需儒樹収囚州舟秀周宗拾秋臭修袖終羞習週就衆集愁酬醜蹴襲十汁充住柔重従渋銃獣縦叔祝宿淑粛縮塾熟出述術俊春瞬旬巡盾准殉純循順準潤遵処初所書庶暑署緒諸女如助序叙徐除小升少召匠床抄肖尚招承昇松沼昭宵将消症祥称笑唱商渉章紹訟勝掌晶焼焦硝粧詔証象傷奨照詳彰障憧衝賞償礁鐘上丈冗条状乗城浄剰常情場畳蒸縄壌嬢錠譲醸色拭食植殖飾触嘱織職辱尻心申伸臣芯身辛侵信津神唇娠振浸真針深紳進森診寝慎新審震薪親人刃仁尽迅甚陣尋腎須図水吹垂炊帥粋衰推酔遂睡穂随髄枢崇数据杉裾寸瀬是井世正生成西声制姓征性青斉政星牲省凄逝清盛婿晴勢聖誠精製誓静請整醒税夕斥石赤昔析席脊隻惜戚責跡積績籍切折拙窃接設雪摂節説舌絶千川仙占先宣専泉浅洗染扇栓旋船戦煎羨腺詮践箋銭潜線遷選薦繊鮮全前善然禅漸膳繕狙阻祖租素措粗組疎訴塑遡礎双壮早争走奏相荘草送倉捜挿桑巣掃曹曽爽窓創喪痩葬装僧想層総遭槽踪操燥霜騒藻造像増憎蔵贈臓即束足促則息捉速側測俗族属賊続卒率存村孫尊損遜他多汰打妥唾堕惰駄太対体耐待怠胎退帯泰堆袋逮替貸隊滞態戴大代台第題滝宅択沢卓拓託濯諾濁但達脱奪棚誰丹旦担単炭胆探淡短嘆端綻誕鍛団男段断弾暖談壇地池知値恥致遅痴稚置緻竹畜逐蓄築秩窒茶着嫡中仲虫沖宙忠抽注昼柱衷酎鋳駐著貯丁弔庁兆町長挑帳張彫眺釣頂鳥朝貼超腸跳徴嘲潮澄調聴懲直勅捗沈珍朕陳賃鎮追椎墜通痛塚漬坪爪鶴低呈廷弟定底抵邸亭貞帝訂庭逓停偵堤提程艇締諦泥的笛摘滴適敵溺迭哲鉄徹撤天典店点展添転塡田伝殿電斗吐妬徒途都渡塗賭土奴努度怒刀冬灯当投豆東到逃倒凍唐島桃討透党悼盗陶塔搭棟湯痘登答等筒統稲踏糖頭謄藤闘騰同洞胴動堂童道働銅導瞳峠匿特得督徳篤毒独読栃凸突届屯豚頓貪鈍曇丼那奈内梨謎鍋南軟難二尼弐匂肉虹日入乳尿任妊忍認寧熱年念捻粘燃悩納能脳農濃把波派破覇馬婆罵拝杯背肺俳配排敗廃輩売倍梅培陪媒買賠白伯拍泊迫剝舶博薄麦漠縛爆箱箸畑肌八鉢発髪伐抜罰閥反半氾犯帆汎伴判坂阪板版班畔般販斑飯搬煩頒範繁藩晩番蛮盤比皮妃否批彼披肥非卑飛疲秘被悲扉費碑罷避尾眉美備微鼻膝肘匹必泌筆姫百氷表俵票評漂標苗秒病描猫品浜貧賓頻敏瓶不夫父付布扶府怖阜附訃負赴浮婦符富普腐敷膚賦譜侮武部舞封風伏服副幅復福腹複覆払沸仏物粉紛雰噴墳憤奮分文聞丙平兵併並柄陛閉塀幣弊蔽餅米壁璧癖別蔑片辺返変偏遍編弁便勉歩保哺捕補舗母募墓慕暮簿方包芳邦奉宝抱放法泡胞俸倣峰砲崩訪報蜂豊飽褒縫亡乏忙坊妨忘防房肪某冒剖紡望傍帽棒貿貌暴膨謀頰北木朴牧睦僕墨撲没勃堀本奔翻凡盆麻摩磨魔毎妹枚昧埋幕膜枕又末抹万満慢漫未味魅岬密蜜脈妙民眠矛務無夢霧娘名命明迷冥盟銘鳴滅免面綿麺茂模毛妄盲耗猛網目黙門紋問冶夜野弥厄役約訳薬躍闇由油喩愉諭輸癒唯友有勇幽悠郵湧猶裕遊雄誘憂融優与予余誉預幼用羊妖洋要容庸揚揺葉陽溶腰様瘍踊窯養擁謡曜抑沃浴欲翌翼拉裸羅来雷頼絡落酪辣乱卵覧濫藍欄吏利里理痢裏履璃離陸立律慄略柳流留竜粒隆硫侶旅虜慮了両良料涼猟陵量僚領寮療瞭糧力緑林厘倫輪隣臨瑠涙累塁類令礼冷励戻例鈴零霊隷齢麗暦歴列劣烈裂恋連廉練錬呂炉賂路露老労弄郎朗浪廊楼漏籠六録麓論和話賄脇惑枠湾腕"
# 含めたい文字など
src3 = "※";

# int配列への変換
dst1 = thorikawa2intarr(src1)
dst2 = kanji2intarr(src2)
dst3 = kanji2intarr(src3)

dst = (dst1 + dst2 + dst3).uniq.sort

# 結果を文字列にする
output = "";
dst.each{|var|
    output = output + var.chr(Encoding::UTF_8)
}

# 保存
File.open("./result.txt", "w") do |f|
  f.puts(output)
end
