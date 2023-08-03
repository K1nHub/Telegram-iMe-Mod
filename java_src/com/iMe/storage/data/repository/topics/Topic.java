package com.iMe.storage.data.repository.topics;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum ANIMALS uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: Topic.kt */
/* loaded from: classes3.dex */
public final class Topic {
    private static final /* synthetic */ Topic[] $VALUES;
    public static final Topic ADULTHOOD;
    public static final Topic ANIMALS;
    public static final Topic ART;
    public static final Topic ASTROLOGY;
    public static final Topic AUTO;
    public static final Topic BEARD;
    public static final Topic BLOGS;
    public static final Topic BOOKS;
    public static final Topic BOT;
    public static final Topic BUSINESS;
    public static final Topic CALCULATOR;
    public static final Topic CHEF;
    public static final Topic CHESS;
    public static final Topic CLOCHE;
    public static final Topic COFFEE;
    public static final Topic COLOSSEUM;
    public static final Topic CRYPTO;
    public static final Topic CUBES;
    public static final Companion Companion;
    public static final Topic DARTS;
    public static final Topic DESIGN;
    public static final Topic DEVELOP;
    public static final Topic DUCK;
    public static final Topic ECONOMY;
    public static final Topic EDUCATION;
    public static final Topic FAMILY;
    public static final Topic FASHION;
    public static final Topic FILMS;
    public static final Topic FINANCE;
    public static final Topic FLOWER;
    public static final Topic FOOD;
    public static final Topic FRIENDS;
    public static final Topic FUNDS;
    public static final Topic GAMES;
    public static final Topic GLASSES;
    public static final Topic HOBBIES;
    public static final Topic HOME;
    public static final Topic HUMOR;

    /* renamed from: IT */
    public static final Topic f396IT;
    public static final Topic JOB;
    public static final Topic LAWS;
    public static final Topic LIFEHACK;
    public static final Topic MARKETING;
    public static final Topic MEDAL;
    public static final Topic MEDICINE;
    public static final Topic MELON;
    public static final Topic MISSION;
    public static final Topic MUSIC;
    public static final Topic NEWS;
    public static final Topic OTHER;
    public static final Topic PAGODA;
    public static final Topic PALM;
    public static final Topic PILL;
    public static final Topic PINGPONG;
    public static final Topic PIZZA;
    public static final Topic POLITICS;
    public static final Topic QUOTES;
    public static final Topic RELIGION;
    public static final Topic ROCKET;
    public static final Topic SALES;
    public static final Topic SCIENCE;
    public static final Topic SCISSORS;
    public static final Topic SHOE;
    public static final Topic SPORT;
    public static final Topic SUN;
    public static final Topic TECHNOLOGY;
    public static final Topic TELEGRAM;
    public static final Topic TRAVEL;
    public static final Topic TROPHY;

    /* renamed from: TV */
    public static final Topic f397TV;
    public static final Topic UFO;
    public static final Topic UMBRELLA;
    public static final Topic WAND;
    private final List<Long> presets;

    private static final /* synthetic */ Topic[] $values() {
        return new Topic[]{ANIMALS, ART, ASTROLOGY, AUTO, BLOGS, BOOKS, BUSINESS, CRYPTO, DESIGN, DEVELOP, ECONOMY, EDUCATION, FAMILY, FASHION, FILMS, FINANCE, FOOD, FRIENDS, GAMES, HOBBIES, HOME, HUMOR, f396IT, JOB, LAWS, LIFEHACK, MARKETING, MEDICINE, MUSIC, NEWS, POLITICS, QUOTES, RELIGION, SALES, SCIENCE, SPORT, TECHNOLOGY, TELEGRAM, TRAVEL, f397TV, ADULTHOOD, BOT, CALCULATOR, BEARD, CHEF, CHESS, CLOCHE, COFFEE, COLOSSEUM, CUBES, FLOWER, FUNDS, SHOE, PALM, WAND, MEDAL, MISSION, PAGODA, PILL, PINGPONG, PIZZA, ROCKET, UFO, DUCK, SCISSORS, MELON, SUN, DARTS, TROPHY, UMBRELLA, GLASSES, OTHER};
    }

    public static Topic valueOf(String str) {
        return (Topic) Enum.valueOf(Topic.class, str);
    }

    public static Topic[] values() {
        return (Topic[]) $VALUES.clone();
    }

    private Topic(String str, int i, List list) {
        this.presets = list;
    }

    /* synthetic */ Topic(String str, int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i2 & 1) != 0 ? null : list);
    }

    public final List<Long> getPresets() {
        return this.presets;
    }

    static {
        List listOf;
        List listOf2;
        List listOf3;
        List listOf4;
        List listOf5;
        List listOf6;
        List listOf7;
        List listOf8;
        List emptyList;
        List emptyList2;
        List listOf9;
        List listOf10;
        List emptyList3;
        List listOf11;
        List listOf12;
        List listOf13;
        List listOf14;
        List emptyList4;
        List listOf15;
        List listOf16;
        List emptyList5;
        List listOf17;
        List listOf18;
        List listOf19;
        List listOf20;
        List listOf21;
        List listOf22;
        List listOf23;
        List listOf24;
        List listOf25;
        List listOf26;
        List listOf27;
        List listOf28;
        List listOf29;
        List listOf30;
        List listOf31;
        List listOf32;
        List listOf33;
        List listOf34;
        List emptyList6;
        List listOf35;
        List emptyList7;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1093447851L, 1123864078L, 1146263928L});
        ANIMALS = new Topic("ANIMALS", 0, listOf);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1378533353L, 1366151868L, 1008272893L, 1466646499L, 1204983844L, 1227400022L, 1147863305L, 1003007389L, 1079487733L, 1386864281L, 1115013053L, 1194877324L, 1003861034L, 1343827179L, 1062232438L, 1149492120L, 1099562359L, 1282071292L, 1394056687L, 1110044930L, 1131348490L, 1069216554L, 1174693930L, 1286760571L, 1196066595L, 1099659557L, 1082195763L, 1062504483L, 1118319020L, 1358606666L, 1143688445L});
        ART = new Topic("ART", 1, listOf2);
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1178004202L, 1327873009L});
        ASTROLOGY = new Topic("ASTROLOGY", 2, listOf3);
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1226800148L, 1247270969L, 1075856030L, 1147001390L, 1110405623L, 1111503130L, 1082198169L, 1252414766L, 1126195475L, 1298902879L, 1409252673L, 1398139428L, 1258174281L, 1315704996L});
        AUTO = new Topic("AUTO", 3, listOf4);
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1315735637L, 1226942629L, 1174896107L, 1141171940L, 1479163323L, 1353143666L, 1162651325L, 1157450539L, 1167943071L, 1372679108L, 1226941849L, 1006503122L, 1282537139L, 1192846408L, 1344057008L, 1031397600L, 1146759177L, 1380497659L, 1315078272L, 1459513255L, 1005684212L, 1336388298L, 1461135983L, 1423913094L, 1410844170L, 1066998375L, 1351029634L, 1190890964L, 1301979628L, 1114685706L, 1175869885L, 1028991360L});
        BLOGS = new Topic("BLOGS", 4, listOf5);
        listOf6 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1303324777L, 1400586821L, 1187426392L, 1347242465L, 1303383068L, 1101725342L, 1259202520L, 1301994595L, 1123958740L, 1054391026L, 1136684634L, 1369337945L, 1203993686L, 1361020253L, 1327292632L, 1000154882L, 1245379068L, 1006273516L, 1080843008L, 1133634536L, 1185473797L, 1109161468L, 1269915072L, 1134204981L, 1158879250L, 1183024227L});
        BOOKS = new Topic("BOOKS", 5, listOf6);
        listOf7 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1115480925L, 1443217114L, 1347505509L, 1190798227L, 1139560203L, 1111954983L, 1246497893L, 1146456164L, 1170185108L, 1146609293L, 1313108756L, 1125784600L, 1205271514L, 1144449357L, 1487421019L, 1141227588L, 1324388557L, 1096667016L, 1189180633L, 1375330920L, 1117910114L, 1185974627L, 1171460647L, 1443550841L, 1392903897L, 1141850248L, 1428374904L, 1143711705L, 1461741273L, 1112977535L, 1114645416L, 1129342189L, 1184018674L, 1094797566L, 1343304998L, 1389824031L, 1494164155L, 1468272467L, 1167188175L, 1209696245L, 1114616412L, 1300461024L, 1120395988L, 1344086554L});
        BUSINESS = new Topic("BUSINESS", 6, listOf7);
        listOf8 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1171052347L, 1132611527L, 1348004614L, 1177889000L, 1350751489L, 1487889236L, 1012435573L, 1149639023L, 1246209471L, 1328344927L, 1239304207L, 1263892563L, 1229486285L, 1428040806L, 1333240433L, 1325905169L, 1130582561L, 1245480336L, 1437466982L, 1262500414L, 1122201059L, 1497606625L, 1150750640L, 1375670269L, 1252732067L, 1072723547L, 1110096867L, 1175934497L, 1352830355L, 1361425599L, 1200260745L, 1270071909L, 1182413922L, 1181513542L, 1348881342L, 1298258379L, 1154478670L, 1238938468L, 1393294059L, 1147571806L, 1301684263L, 1148754562L, 1241950114L, 1337835603L, 1217126068L, 1442441936L, 1399965233L, 1263002007L, 1265774573L, 1354979464L});
        CRYPTO = new Topic("CRYPTO", 7, listOf8);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        DESIGN = new Topic("DESIGN", 8, emptyList);
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        DEVELOP = new Topic("DEVELOP", 9, emptyList2);
        listOf9 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1343028414L, 1007375479L, 1123046963L, 1102900186L, 1068050608L, 1332554752L, 1495779526L, 1472524301L, 1303564715L, 1166702952L, 1110960718L, 1143571014L, 1047166746L, 1218637753L, 1188997171L});
        ECONOMY = new Topic("ECONOMY", 10, listOf9);
        listOf10 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1294914848L, 1163998765L, 1146850797L, 1183153058L, 1325361015L, 1272373434L, 1395173420L, 1065197642L, 1304163675L, 1135321588L, 1136220003L, 1321040185L, 1252669849L, 1282916719L, 1320728660L, 1413689264L, 1125558168L, 1095408240L, 1488785405L, 1147014976L, 1120411892L, 1145986097L, 1078211425L, 1011378925L, 1236700481L, 1126280702L, 1359172579L, 1143307401L, 1390290844L, 1257317172L, 1118821739L, 1191785727L, 1121473532L, 1072862972L, 1111300377L, 1393190436L, 1045499723L, 1410848204L, 1107516367L, 1149363840L, 1417019608L, 1342591957L, 1121725556L, 1119691518L, 1401748709L, 1137599299L, 1054347207L, 1160973737L, 1102638129L, 1118684998L, 1133948792L, 1214587723L, 1219088956L, 1144654571L, 1112435272L, 1016080357L, 1221565506L, 1154105269L, 1399132789L, 1403554585L, 1341579572L, 1471168939L, 1313274275L});
        EDUCATION = new Topic("EDUCATION", 11, listOf10);
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        FAMILY = new Topic("FAMILY", 12, emptyList3);
        listOf11 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1100510330L, 1496744952L, 1041599776L, 1258722946L, 1369810283L, 1110676282L, 1154997454L, 1058605663L, 1453061157L, 1280344495L, 1250007720L, 1187485926L, 1023670054L});
        FASHION = new Topic("FASHION", 13, listOf11);
        listOf12 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1314892558L, 1261851652L, 1093726574L, 1339467524L, 1105830685L, 1222986388L, 1289546762L, 1270981178L, 1311443564L, 1395767247L, 1135526961L, 1440245923L, 1342598447L, 1453941065L, 1374769183L, 1283201980L, 1122769133L, 1342924553L, 1224248842L, 1389820154L, 1319538335L, 1232603120L, 1457465174L, 1031616560L, 1444908829L, 1366309898L, 1220875479L, 1350466028L, 1180666671L, 1142733879L, 1351603062L, 1102483836L, 1305280087L, 1362773193L, 1393727077L, 1475826416L, 1078265711L, 1209379441L, 1054210809L, 1241166902L, 1057483214L});
        FILMS = new Topic("FILMS", 14, listOf12);
        listOf13 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1129147795L, 1391693910L, 1083446772L, 1460019255L, 1441771359L, 1456485840L, 1134310525L, 1179894789L, 1175674588L, 1120040286L, 1254066794L, 1445029950L, 1217123968L, 1361234927L, 1264546265L, 1115009000L, 1108760662L, 1136626166L});
        FINANCE = new Topic("FINANCE", 15, listOf13);
        listOf14 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1139778254L, 1136980189L, 1319127688L, 1138708425L, 1007984990L, 1107003170L, 1217554561L, 1424101090L, 1062917648L});
        FOOD = new Topic("FOOD", 16, listOf14);
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        FRIENDS = new Topic("FRIENDS", 17, emptyList4);
        listOf15 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1141818024L, 1138327678L, 1394640347L, 1323682527L, 1136693240L, 1132382176L, 1354415211L, 1096407797L, 1034113016L, 1212288167L, 1239977960L, 1301504897L, 1235436177L, 1224130899L, 1262049666L, 1258691467L, 1123045774L, 1249576973L, 1302415627L, 1304339713L, 1250162258L, 1311104733L});
        GAMES = new Topic("GAMES", 18, listOf15);
        listOf16 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1142309418L, 1485286551L, 1433719399L, 1314173635L, 1146137031L, 1148149369L});
        HOBBIES = new Topic("HOBBIES", 19, listOf16);
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        HOME = new Topic("HOME", 20, emptyList5);
        listOf17 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1449027517L, 1135818819L, 1061155820L, 1327815937L, 1089439106L, 1094341811L, 1034987004L, 1108334614L, 1124942588L, 1326291464L, 1245190412L, 1398033365L, 1414764357L, 1270741351L, 1093861231L, 1125815812L, 1239777290L, 1130825114L, 1273842851L, 1009232144L, 1121669217L, 1129882018L, 1057408216L, 1105827270L, 1313570489L, 1254949413L, 1384093069L, 1212123882L, 1330622187L, 1194171791L, 1099631339L, 1150304741L, 1453716282L, 1237647642L, 1131255104L, 1006147755L, 1242023813L, 1148218236L, 1224952888L, 1079091598L, 1131242036L, 1141264086L, 1114742039L, 1309199664L, 1132031660L, 1319343889L, 1131345028L, 1002142284L, 1252996692L, 1443413109L, 1009062025L, 1272180264L, 1120675372L, 1232759721L, 1073942389L, 1373477325L});
        HUMOR = new Topic("HUMOR", 21, listOf17);
        listOf18 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1199904131L, 1358482030L});
        f396IT = new Topic("IT", 22, listOf18);
        listOf19 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1308831836L, 1326019414L, 1242519382L, 1154390431L, 1455809420L, 1463579796L, 1173488347L, 1134819347L, 1361223275L, 1112941370L, 1143063102L, 1264059716L, 1193582142L, 1385274097L, 1248150333L, 1351676429L, 1295419722L, 1004621278L, 1069841224L, 1346191033L, 1327025635L, 1113237926L, 1050146446L});
        JOB = new Topic("JOB", 23, listOf19);
        listOf20 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1160344477L, 1396228601L, 1144412773L});
        LAWS = new Topic("LAWS", 24, listOf20);
        listOf21 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1000572198L, 1054538158L});
        LIFEHACK = new Topic("LIFEHACK", 25, listOf21);
        listOf22 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1141053281L, 1321298720L, 1136057546L, 1145166712L, 1395614033L, 1095856294L, 1483008006L, 1420224353L, 1166538284L, 1062743165L, 1468905582L, 1198294688L, 1006631316L, 1121236010L, 1178252797L, 1151260231L, 1334545362L, 1344209438L, 1133078562L, 1141301080L, 1095284018L, 1117049229L, 1392052351L, 1369541919L, 1123791135L, 1384350214L, 1039399273L, 1096245320L, 1110043285L, 1178346699L, 1303998210L});
        MARKETING = new Topic("MARKETING", 26, listOf22);
        listOf23 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1391366277L, 1374836870L, 1095760560L, 1076872676L, 1220684277L, 1090085443L, 1091278867L, 1269674834L, 1070554023L, 1019025346L, 1087609670L, 1155004784L, 1028607977L});
        MEDICINE = new Topic("MEDICINE", 27, listOf23);
        listOf24 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1494756739L, 1476714905L, 1461645936L, 1405531488L, 1472521895L, 1103683102L, 1113952696L, 1393790219L, 1255770177L, 1277443272L, 1369775253L, 1205247580L, 1120319413L, 1391378691L, 1303162959L, 1335358049L, 1012349516L, 1286211560L, 1254709987L, 1196126853L, 1294907068L, 1174194965L, 1251762106L, 1362802315L, 1242302086L, 1398202558L, 1226560173L, 1095436924L, 1104032258L, 1289339421L, 1299635377L, 1229205345L, 1084178071L, 1238953472L, 1031487831L, 1238468335L, 1255115352L, 1263767444L, 1350893871L, 1318834404L, 1243321287L, 1137754784L, 1338938858L, 1397000582L, 1368834083L, 1277510217L, 1141252496L, 1162049808L, 1305863624L, 1240454728L, 1151602155L, 1204033004L, 1311550843L, 1246184585L, 1219695015L, 1326818781L, 1274733318L, 1356769650L, 1369866839L, 1257799231L, 1279546702L, 1213849787L, 1173475194L, 1247843978L, 1157251850L, 1132132559L, 1208914424L, 1261501652L, 1398905547L, 1208753153L, 1169902213L, 1150411154L, 1179184720L, 1323985425L, 1265958036L, 1050809244L, 1242867533L, 1377237385L, 1372128999L, 1318962256L});
        MUSIC = new Topic("MUSIC", 28, listOf24);
        listOf25 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1215080922L, 1392414951L, 1413577689L, 1197868395L, 1252754045L, 1405269763L, 1455655840L, 1084609357L, 1117628569L, 1208327485L, 1064054370L, 1407784080L, 1038402501L, 1093593266L, 1059815658L, 1036240821L, 1003313758L, 1351251302L, 1243038268L, 1281115807L, 1211633455L, 1121658128L, 1145790104L, 1060302681L, 1286657470L, 1279038703L, 1058912111L, 1379461702L, 1001766948L, 1004770755L, 1138620944L});
        NEWS = new Topic("NEWS", 29, listOf25);
        listOf26 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1261568352L, 1188997171L, 1149975227L});
        POLITICS = new Topic("POLITICS", 30, listOf26);
        listOf27 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1400299435L, 1293638562L, 1372511708L, 1153054355L, 1211844482L, 1405903897L, 1370940804L, 1074907566L, 1411047797L, 1337657500L, 1007761545L, 1122442517L, 1218053489L, 1131884853L, 1166124316L});
        QUOTES = new Topic("QUOTES", 31, listOf27);
        listOf28 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1313143195L, 1347521037L, 1366329050L, 1498311237L});
        RELIGION = new Topic("RELIGION", 32, listOf28);
        listOf29 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1203903142L, 1311430273L, 1050905389L, 1237568377L, 1251557729L, 1156238611L, 1115480925L, 1234924931L, 1095227441L, 1141858640L, 1148071378L, 1136512589L, 1138895372L, 1144543810L, 1030352317L, 1303496338L, 1488088580L, 1492713247L, 1100124762L, 1416899099L, 1264507920L, 1324708741L});
        SALES = new Topic("SALES", 33, listOf29);
        listOf30 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1467247382L, 1196831061L, 1117279138L, 1421516984L, 1089723660L, 1496800149L, 1260710710L, 1328220770L, 1168747954L, 1286301762L, 1133453587L, 1062851458L, 1075490389L, 1463134923L, 1393313246L, 1134067984L, 1218991607L, 1229303339L, 1085193802L, 1380047610L, 1327911484L, 1319559819L, 1380701973L, 1031217018L, 1070726895L, 1311001479L, 1149710531L, 1387277572L, 1143580988L, 1481178982L});
        SCIENCE = new Topic("SCIENCE", 34, listOf30);
        listOf31 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1093458991L, 1205018042L, 1067244902L, 1052360315L, 1139803950L, 1441178577L, 1309881025L, 1185459478L, 1469180042L, 1193641244L, 1070632214L, 1378332932L, 1008302560L, 1125299368L, 1143763365L, 1490931926L, 1062711210L, 1141798681L});
        SPORT = new Topic("SPORT", 35, listOf31);
        listOf32 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1130296419L, 1134641116L, 1371064169L, 1251348363L, 1419583647L, 1454077785L, 1058316875L, 1319551528L, 1103688715L, 1356179422L, 1096298708L, 1362968257L, 1490840259L, 1293896605L, 1482107047L, 1172012191L, 1398845299L, 1032086354L, 1339976102L, 1225196088L, 1042258298L, 1087652560L, 1306120172L, 1257792678L, 1134108418L, 1291410252L, 1237116765L, 1176002007L, 1391615381L, 1392774665L, 1007347515L, 1046511458L, 1307778786L, 1072523372L, 1393203470L});
        TECHNOLOGY = new Topic("TECHNOLOGY", 36, listOf32);
        listOf33 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1060286110L, 1017361888L, 1147575896L, 1237207321L, 1246218756L, 1149241778L, 1381589236L, 1285572379L, 1045166094L, 1390648579L, 1103651390L, 1035969158L, 1008012764L, 1228999035L, 1055072698L, 1239127875L, 1043793945L, 1379984192L, 1364081847L, 1005640892L, 1082240507L, 1003307527L, 1220707278L, 1372083584L, 1483966120L, 1253838296L, 1462646461L, 1332673370L, 1068044868L, 1447480028L, 1298036336L, 1345911460L, 1040105943L, 1416855018L, 1233992278L, 1348298652L});
        TELEGRAM = new Topic("TELEGRAM", 37, listOf33);
        listOf34 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1106932612L, 1284590429L, 1345589348L, 1260152349L, 1284022251L, 1137709684L, 1345018363L, 1091993731L, 1338459557L, 1474596352L, 1450911590L, 1337903237L, 1249244178L, 1215922799L, 1069338771L, 1129643015L, 1123545954L, 1050649149L, 1285127473L, 1244799466L, 1052165575L, 1240241069L, 1274071103L, 1424704351L, 1164376141L, 1039128931L, 1124228639L});
        TRAVEL = new Topic("TRAVEL", 38, listOf34);
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        f397TV = new Topic("TV", 39, emptyList6);
        listOf35 = CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{1434960793L, 1382471238L, 1275786667L, 1230970218L});
        ADULTHOOD = new Topic("ADULTHOOD", 40, listOf35);
        BOT = new Topic("BOT", 41, null, 1, null);
        CALCULATOR = new Topic("CALCULATOR", 42, null, 1, null);
        BEARD = new Topic("BEARD", 43, null, 1, null);
        CHEF = new Topic("CHEF", 44, null, 1, null);
        CHESS = new Topic("CHESS", 45, null, 1, null);
        CLOCHE = new Topic("CLOCHE", 46, null, 1, null);
        COFFEE = new Topic("COFFEE", 47, null, 1, null);
        COLOSSEUM = new Topic("COLOSSEUM", 48, null, 1, null);
        CUBES = new Topic("CUBES", 49, null, 1, null);
        FLOWER = new Topic("FLOWER", 50, null, 1, null);
        FUNDS = new Topic("FUNDS", 51, null, 1, null);
        SHOE = new Topic("SHOE", 52, null, 1, null);
        PALM = new Topic("PALM", 53, null, 1, null);
        WAND = new Topic("WAND", 54, null, 1, null);
        MEDAL = new Topic("MEDAL", 55, null, 1, null);
        MISSION = new Topic("MISSION", 56, null, 1, null);
        PAGODA = new Topic("PAGODA", 57, null, 1, null);
        PILL = new Topic("PILL", 58, null, 1, null);
        PINGPONG = new Topic("PINGPONG", 59, null, 1, null);
        PIZZA = new Topic("PIZZA", 60, null, 1, null);
        ROCKET = new Topic("ROCKET", 61, null, 1, null);
        UFO = new Topic("UFO", 62, null, 1, null);
        DUCK = new Topic("DUCK", 63, null, 1, null);
        SCISSORS = new Topic("SCISSORS", 64, null, 1, null);
        MELON = new Topic("MELON", 65, null, 1, null);
        SUN = new Topic("SUN", 66, null, 1, null);
        DARTS = new Topic("DARTS", 67, null, 1, null);
        TROPHY = new Topic("TROPHY", 68, null, 1, null);
        UMBRELLA = new Topic("UMBRELLA", 69, null, 1, null);
        GLASSES = new Topic("GLASSES", 70, null, 1, null);
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        OTHER = new Topic("OTHER", 71, emptyList7);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: Topic.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<Topic> autoTopics() {
            Topic[] values = Topic.values();
            ArrayList arrayList = new ArrayList();
            for (Topic topic : values) {
                if (topic.getPresets() != null) {
                    arrayList.add(topic);
                }
            }
            return arrayList;
        }

        public final Topic map(String name) {
            Object obj;
            Intrinsics.checkNotNullParameter(name, "name");
            Iterator<T> it = autoTopics().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((Topic) obj).name(), name)) {
                    break;
                }
            }
            return (Topic) obj;
        }
    }
}
