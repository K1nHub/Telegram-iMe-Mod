package org.telegram.messenger.video;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.messenger.video.audio_input.AudioInput;
import org.telegram.messenger.video.audio_input.GeneralAudioInput;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
/* loaded from: classes4.dex */
public class MediaCodecVideoConvertor {
    private static final int MEDIACODEC_TIMEOUT_DEFAULT = 2500;
    private static final int MEDIACODEC_TIMEOUT_INCREASED = 22000;
    private static final int PROCESSOR_TYPE_INTEL = 2;
    private static final int PROCESSOR_TYPE_MTK = 3;
    private static final int PROCESSOR_TYPE_OTHER = 0;
    private static final int PROCESSOR_TYPE_QCOM = 1;
    private static final int PROCESSOR_TYPE_SEC = 4;
    private static final int PROCESSOR_TYPE_TI = 5;
    private MediaController.VideoConvertorListener callback;
    private long endPresentationTime;
    private MediaExtractor extractor;
    private MP4Builder mediaMuxer;
    private String outputMimeType;

    public boolean convertVideo(ConvertVideoParams convertVideoParams) {
        this.callback = convertVideoParams.callback;
        return convertVideoInternal(convertVideoParams, false, 0);
    }

    public long getLastFrameTimestamp() {
        return this.endPresentationTime;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(24:650|(8:651|652|653|654|655|656|(1:1542)(6:659|660|661|662|663|664)|665)|(2:667|(3:669|670|(18:686|(64:688|689|690|691|(3:693|694|695)(2:1524|1525)|696|697|(5:699|(1:701)(2:1511|(1:1513)(1:1514))|702|(1:704)(1:1510)|705)(3:1515|(1:1517)(1:1519)|1518)|(2:1505|1506)|707|(1:709)(1:1504)|710|(1:712)(2:1491|(2:1493|1494)(51:1495|1496|(1:1490)(4:717|(2:722|723)|1489|723)|(48:1482|1483|(2:727|728)|803|804|(1:806)(1:1477)|807|(1:811)|812|813|(9:1454|1455|(2:1457|1458)(1:1475)|1459|(1:1461)(1:1474)|1462|(1:1464)|1465|(1:1472)(1:1469))(1:815)|816|(2:818|(3:821|(1:823)|824))(1:1453)|828|829|830|831|832|834|835|836|837|838|839|840|(3:1413|1414|(23:1417|(1:1419)(1:1421)|843|(3:846|847|(2:849|(19:851|852|853|854|855|856|857|858|859|860|(2:1353|1354)(1:862)|863|864|(13:1298|1299|1300|1301|(8:1303|(1:1305)|1339|1309|(1:1311)|(1:(8:1314|1315|1316|(1:1318)|1319|(1:1321)(1:1324)|1322|1323)(6:1329|(1:1331)|1332|(1:1334)|1335|1336))(1:1338)|1337|1323)(1:1340)|1306|(6:1308|1309|(0)|(0)(0)|1337|1323)|1339|1309|(0)|(0)(0)|1337|1323)(4:866|867|(3:869|870|871)(1:1296)|872)|(1:874)(1:1295)|875|876|877|(2:(6:884|885|(2:1280|1281)(1:887)|(7:889|890|891|892|(5:894|895|896|(4:898|(1:900)(1:1231)|901|(1:903)(1:1230))(1:1232)|904)(4:1238|(2:1240|(1:(10:1243|(2:1245|(1:1247))(1:1271)|1248|(1:1250)|1251|(1:1253)(1:1270)|1254|(2:1260|(4:1264|(1:1266)|1267|1268))|1269|1268))(2:1272|(2:1274|(2:909|910))))|1275|(0))|905|(3:907|909|910))(1:1279)|911|(1:(10:916|917|918|(1:920)(1:1224)|921|922|923|(1:925)(4:1082|(4:1210|1211|(1:1213)|1214)(2:1084|(3:1086|(1:1127)(7:1089|1090|1091|1092|(3:1094|1095|(7:1097|1098|1099|(1:1101)(1:1110)|(1:1103)(1:1109)|1104|1105))(1:1120)|1119|1105)|1106)(2:1128|(4:1130|1131|(1:1133)(1:1206)|(9:1135|1136|(9:1146|1147|1148|(4:(1:1167)(2:1153|1154)|(1:1158)|1159|(3:1163|(1:1165)|1166))(2:1168|(11:1170|(3:1174|(2:1180|(2:1182|1183)(1:1190))|1191)|1196|1184|(1:1187)|1188|1189|1141|(1:1143)(1:1145)|1144|1108))|1140|1141|(0)(0)|1144|1108)(1:1138)|1139|1140|1141|(0)(0)|1144|1108)(3:1203|1204|1205))(3:1207|1208|1209)))|1107|1108)|(2:927|928)(5:(7:935|936|937|(1:939)(2:941|(2:943|(3:1065|1066|(1:1068))(1:(23:946|(1:948)(1:1061)|949|950|(2:954|955)|956|(3:1041|1042|(3:1044|1045|(17:1047|(2:1049|1050)(4:1053|1054|1055|1056)|1051|960|(3:1032|1033|(1:1038))(1:962)|963|(1:965)(1:1031)|966|(2:970|(11:976|977|(1:979)|980|(1:982)(3:1019|(1:1023)|1024)|(8:984|985|(1:987)(1:1017)|988|989|990|(4:992|993|994|995)(1:1012)|996)(1:1018)|997|(3:999|(1:1001)|1002)|932|933|934)(3:972|(1:974)|975))|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)(16:1057|959|960|(0)(0)|963|(0)(0)|966|(3:968|970|(0)(0))|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)))|958|959|960|(0)(0)|963|(0)(0)|966|(0)|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)(3:1062|1063|1064))))|940|933|934)|931|932|933|934)|929)))|915))))|1384|(4:1386|1387|1388|(24:1390|(1:1392)(1:1406)|1393|(1:1395)(1:1405)|1396|1397|1398|1399|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))(1:1412)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))|842|843|(3:846|847|(0))|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915))|725|(0)|803|804|(0)(0)|807|(2:809|811)|812|813|(0)(0)|816|(0)(0)|828|829|830|831|832|834|835|836|837|838|839|840|(0)|842|843|(0)|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))|713|(1:715)|1490|(0)|725|(0)|803|804|(0)(0)|807|(0)|812|813|(0)(0)|816|(0)(0)|828|829|830|831|832|834|835|836|837|838|839|840|(0)|842|843|(0)|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915))(1:1530)|(2:775|776)|(1:765)|(1:767)|(1:769)|770|771|72|(1:74)|75|(2:113|114)|(2:109|110)|(2:105|106)|(2:101|102)|(2:97|98)|81|(0)(0))(18:673|674|675|(1:682)(1:678)|679|680|681|71|72|(0)|75|(0)|(0)|(0)|(0)|(0)|81|(0)(0))))(1:1535)|1533|670|(0)|686|(0)(0)|(0)|(0)|(0)|(0)|770|771|72|(0)|75|(0)|(0)|(0)|(0)|(0)|81|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(29:688|(11:689|690|691|(3:693|694|695)(2:1524|1525)|696|697|(5:699|(1:701)(2:1511|(1:1513)(1:1514))|702|(1:704)(1:1510)|705)(3:1515|(1:1517)(1:1519)|1518)|(2:1505|1506)|707|(1:709)(1:1504)|710)|(26:(1:712)(2:1491|(2:1493|1494)(51:1495|1496|(1:1490)(4:717|(2:722|723)|1489|723)|(48:1482|1483|(2:727|728)|803|804|(1:806)(1:1477)|807|(1:811)|812|813|(9:1454|1455|(2:1457|1458)(1:1475)|1459|(1:1461)(1:1474)|1462|(1:1464)|1465|(1:1472)(1:1469))(1:815)|816|(2:818|(3:821|(1:823)|824))(1:1453)|828|829|830|831|832|834|835|836|837|838|839|840|(3:1413|1414|(23:1417|(1:1419)(1:1421)|843|(3:846|847|(2:849|(19:851|852|853|854|855|856|857|858|859|860|(2:1353|1354)(1:862)|863|864|(13:1298|1299|1300|1301|(8:1303|(1:1305)|1339|1309|(1:1311)|(1:(8:1314|1315|1316|(1:1318)|1319|(1:1321)(1:1324)|1322|1323)(6:1329|(1:1331)|1332|(1:1334)|1335|1336))(1:1338)|1337|1323)(1:1340)|1306|(6:1308|1309|(0)|(0)(0)|1337|1323)|1339|1309|(0)|(0)(0)|1337|1323)(4:866|867|(3:869|870|871)(1:1296)|872)|(1:874)(1:1295)|875|876|877|(2:(6:884|885|(2:1280|1281)(1:887)|(7:889|890|891|892|(5:894|895|896|(4:898|(1:900)(1:1231)|901|(1:903)(1:1230))(1:1232)|904)(4:1238|(2:1240|(1:(10:1243|(2:1245|(1:1247))(1:1271)|1248|(1:1250)|1251|(1:1253)(1:1270)|1254|(2:1260|(4:1264|(1:1266)|1267|1268))|1269|1268))(2:1272|(2:1274|(2:909|910))))|1275|(0))|905|(3:907|909|910))(1:1279)|911|(1:(10:916|917|918|(1:920)(1:1224)|921|922|923|(1:925)(4:1082|(4:1210|1211|(1:1213)|1214)(2:1084|(3:1086|(1:1127)(7:1089|1090|1091|1092|(3:1094|1095|(7:1097|1098|1099|(1:1101)(1:1110)|(1:1103)(1:1109)|1104|1105))(1:1120)|1119|1105)|1106)(2:1128|(4:1130|1131|(1:1133)(1:1206)|(9:1135|1136|(9:1146|1147|1148|(4:(1:1167)(2:1153|1154)|(1:1158)|1159|(3:1163|(1:1165)|1166))(2:1168|(11:1170|(3:1174|(2:1180|(2:1182|1183)(1:1190))|1191)|1196|1184|(1:1187)|1188|1189|1141|(1:1143)(1:1145)|1144|1108))|1140|1141|(0)(0)|1144|1108)(1:1138)|1139|1140|1141|(0)(0)|1144|1108)(3:1203|1204|1205))(3:1207|1208|1209)))|1107|1108)|(2:927|928)(5:(7:935|936|937|(1:939)(2:941|(2:943|(3:1065|1066|(1:1068))(1:(23:946|(1:948)(1:1061)|949|950|(2:954|955)|956|(3:1041|1042|(3:1044|1045|(17:1047|(2:1049|1050)(4:1053|1054|1055|1056)|1051|960|(3:1032|1033|(1:1038))(1:962)|963|(1:965)(1:1031)|966|(2:970|(11:976|977|(1:979)|980|(1:982)(3:1019|(1:1023)|1024)|(8:984|985|(1:987)(1:1017)|988|989|990|(4:992|993|994|995)(1:1012)|996)(1:1018)|997|(3:999|(1:1001)|1002)|932|933|934)(3:972|(1:974)|975))|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)(16:1057|959|960|(0)(0)|963|(0)(0)|966|(3:968|970|(0)(0))|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)))|958|959|960|(0)(0)|963|(0)(0)|966|(0)|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)(3:1062|1063|1064))))|940|933|934)|931|932|933|934)|929)))|915))))|1384|(4:1386|1387|1388|(24:1390|(1:1392)(1:1406)|1393|(1:1395)(1:1405)|1396|1397|1398|1399|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))(1:1412)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))|842|843|(3:846|847|(0))|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915))|725|(0)|803|804|(0)(0)|807|(2:809|811)|812|813|(0)(0)|816|(0)(0)|828|829|830|831|832|834|835|836|837|838|839|840|(0)|842|843|(0)|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))|839|840|(0)|842|843|(0)|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915))|713|(1:715)|1490|(0)|725|(0)|803|804|(0)(0)|807|(0)|812|813|(0)(0)|816|(0)(0)|828|829|830|831|832|834|835|836|837|838) */
    /* JADX WARN: Can't wrap try/catch for region: R(37:(2:13|(1:15)(2:644|(1:646)(1:647)))(1:(1:649))|(4:17|18|19|(30:21|22|23|24|(2:598|599)|26|28|29|30|31|32|33|34|35|36|38|39|(3:558|559|(12:561|42|43|44|46|47|48|(2:546|547)(1:50)|51|(4:53|54|55|56)(1:544)|57|(2:(5:191|192|(2:522|523)|194|(1:(9:199|200|(1:202)(1:516)|203|204|205|(1:207)(3:281|(4:500|501|(1:503)|504)(15:283|(6:445|446|(4:448|449|450|451)(1:496)|452|(1:489)(7:455|456|457|458|(2:460|(8:462|463|464|465|(1:467)(1:475)|(1:469)(1:474)|470|471))(1:483)|482|471)|472)(2:285|(5:287|288|289|(1:291)(1:435)|(11:293|294|(5:319|320|321|(8:(1:375)(3:326|327|328)|(2:332|333)|334|335|336|337|338|(1:356)(5:342|343|344|(1:346)|347))(2:376|(3:378|379|(10:381|382|(3:386|(2:392|(2:394|395)(1:410))|411)|416|396|397|398|399|(1:402)|403)(1:418)))|348)(1:296)|297|298|299|(1:301)(1:313)|302|303|304|305)(3:432|433|434))(3:442|443|444))|374|123|124|125|(1:127)|128|(2:151|152)|(2:147|148)|(2:143|144)|(2:139|140)|(2:135|136)|134|(2:83|84)(2:86|(3:93|(1:95)|96)(2:91|92)))|473)|(3:278|279|280)(4:209|(7:211|212|213|214|215|216|(1:218))(1:277)|219|220)|221)))(2:60|61)|198)))|41|42|43|44|46|47|48|(0)(0)|51|(0)(0)|57|(7:(0)|191|192|(0)|194|(10:(0)|199|200|(0)(0)|203|204|205|(0)(0)|(0)(0)|221)|198)))(1:643)|615|616|617|(4:619|(1:621)(1:633)|622|623)(1:634)|624|(4:626|(1:628)|629|630)|22|23|24|(0)|26|28|29|30|31|32|33|34|35|36|38|39|(0)|41|42|43|44|46|47|48|(0)(0)|51|(0)(0)|57|(7:(0)|191|192|(0)|194|(10:(0)|199|200|(0)(0)|203|204|205|(0)(0)|(0)(0)|221)|198)) */
    /* JADX WARN: Can't wrap try/catch for region: R(39:688|689|690|691|(3:693|694|695)(2:1524|1525)|696|697|(5:699|(1:701)(2:1511|(1:1513)(1:1514))|702|(1:704)(1:1510)|705)(3:1515|(1:1517)(1:1519)|1518)|(2:1505|1506)|707|(1:709)(1:1504)|710|(26:(1:712)(2:1491|(2:1493|1494)(51:1495|1496|(1:1490)(4:717|(2:722|723)|1489|723)|(48:1482|1483|(2:727|728)|803|804|(1:806)(1:1477)|807|(1:811)|812|813|(9:1454|1455|(2:1457|1458)(1:1475)|1459|(1:1461)(1:1474)|1462|(1:1464)|1465|(1:1472)(1:1469))(1:815)|816|(2:818|(3:821|(1:823)|824))(1:1453)|828|829|830|831|832|834|835|836|837|838|839|840|(3:1413|1414|(23:1417|(1:1419)(1:1421)|843|(3:846|847|(2:849|(19:851|852|853|854|855|856|857|858|859|860|(2:1353|1354)(1:862)|863|864|(13:1298|1299|1300|1301|(8:1303|(1:1305)|1339|1309|(1:1311)|(1:(8:1314|1315|1316|(1:1318)|1319|(1:1321)(1:1324)|1322|1323)(6:1329|(1:1331)|1332|(1:1334)|1335|1336))(1:1338)|1337|1323)(1:1340)|1306|(6:1308|1309|(0)|(0)(0)|1337|1323)|1339|1309|(0)|(0)(0)|1337|1323)(4:866|867|(3:869|870|871)(1:1296)|872)|(1:874)(1:1295)|875|876|877|(2:(6:884|885|(2:1280|1281)(1:887)|(7:889|890|891|892|(5:894|895|896|(4:898|(1:900)(1:1231)|901|(1:903)(1:1230))(1:1232)|904)(4:1238|(2:1240|(1:(10:1243|(2:1245|(1:1247))(1:1271)|1248|(1:1250)|1251|(1:1253)(1:1270)|1254|(2:1260|(4:1264|(1:1266)|1267|1268))|1269|1268))(2:1272|(2:1274|(2:909|910))))|1275|(0))|905|(3:907|909|910))(1:1279)|911|(1:(10:916|917|918|(1:920)(1:1224)|921|922|923|(1:925)(4:1082|(4:1210|1211|(1:1213)|1214)(2:1084|(3:1086|(1:1127)(7:1089|1090|1091|1092|(3:1094|1095|(7:1097|1098|1099|(1:1101)(1:1110)|(1:1103)(1:1109)|1104|1105))(1:1120)|1119|1105)|1106)(2:1128|(4:1130|1131|(1:1133)(1:1206)|(9:1135|1136|(9:1146|1147|1148|(4:(1:1167)(2:1153|1154)|(1:1158)|1159|(3:1163|(1:1165)|1166))(2:1168|(11:1170|(3:1174|(2:1180|(2:1182|1183)(1:1190))|1191)|1196|1184|(1:1187)|1188|1189|1141|(1:1143)(1:1145)|1144|1108))|1140|1141|(0)(0)|1144|1108)(1:1138)|1139|1140|1141|(0)(0)|1144|1108)(3:1203|1204|1205))(3:1207|1208|1209)))|1107|1108)|(2:927|928)(5:(7:935|936|937|(1:939)(2:941|(2:943|(3:1065|1066|(1:1068))(1:(23:946|(1:948)(1:1061)|949|950|(2:954|955)|956|(3:1041|1042|(3:1044|1045|(17:1047|(2:1049|1050)(4:1053|1054|1055|1056)|1051|960|(3:1032|1033|(1:1038))(1:962)|963|(1:965)(1:1031)|966|(2:970|(11:976|977|(1:979)|980|(1:982)(3:1019|(1:1023)|1024)|(8:984|985|(1:987)(1:1017)|988|989|990|(4:992|993|994|995)(1:1012)|996)(1:1018)|997|(3:999|(1:1001)|1002)|932|933|934)(3:972|(1:974)|975))|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)(16:1057|959|960|(0)(0)|963|(0)(0)|966|(3:968|970|(0)(0))|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)))|958|959|960|(0)(0)|963|(0)(0)|966|(0)|1030|(0)(0)|(0)(0)|997|(0)|932|933|934)(3:1062|1063|1064))))|940|933|934)|931|932|933|934)|929)))|915))))|1384|(4:1386|1387|1388|(24:1390|(1:1392)(1:1406)|1393|(1:1395)(1:1405)|1396|1397|1398|1399|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))(1:1412)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))|842|843|(3:846|847|(0))|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915))|725|(0)|803|804|(0)(0)|807|(2:809|811)|812|813|(0)(0)|816|(0)(0)|828|829|830|831|832|834|835|836|837|838|839|840|(0)|842|843|(0)|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915)))|839|840|(0)|842|843|(0)|1384|(0)(0)|1407|1400|855|856|857|858|859|860|(0)(0)|863|864|(0)(0)|(0)(0)|875|876|877|(8:(0)|884|885|(0)(0)|(0)(0)|911|(11:(0)|916|917|918|(0)(0)|921|922|923|(0)(0)|(0)(0)|929)|915))|713|(1:715)|1490|(0)|725|(0)|803|804|(0)(0)|807|(0)|812|813|(0)(0)|816|(0)(0)|828|829|830|831|832|834|835|836|837|838) */
    /* JADX WARN: Code restructure failed: missing block: B:1167:0x17c9, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1168:0x17ca, code lost:
        r13 = r91;
        r6 = r8;
        r21 = r9;
        r2 = r89;
        r1 = r0;
        r44 = r2;
        r4 = r15;
        r14 = r46;
        r9 = r53;
        r15 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1170:0x17e1, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1171:0x17e2, code lost:
        r13 = r91;
        r21 = r9;
        r80 = r15;
        r79 = r17;
        r2 = r0;
        r1 = r8;
        r44 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1173:0x17f5, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1174:0x17f6, code lost:
        r13 = r91;
        r6 = r8;
        r21 = r9;
        r2 = r89;
        r1 = r0;
        r4 = r15;
        r14 = r46;
        r9 = r53;
        r15 = r17;
        r5 = -5;
        r8 = null;
        r44 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1176:0x180f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1177:0x1810, code lost:
        r13 = r91;
        r21 = r9;
        r80 = r15;
        r79 = r17;
        r2 = r0;
        r1 = r8;
        r6 = r56;
        r8 = -5;
        r15 = null;
        r44 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1179:0x1825, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1180:0x1826, code lost:
        r13 = r91;
        r6 = r8;
        r21 = r9;
        r2 = r89;
        r1 = r0;
        r4 = r15;
        r14 = r46;
        r9 = r53;
        r15 = r17;
        r5 = -5;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1181:0x183a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1182:0x183b, code lost:
        r13 = r91;
        r21 = r9;
        r80 = r15;
        r79 = r17;
        r2 = r0;
        r1 = r8;
        r6 = r56;
        r8 = -5;
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1183:0x184c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1184:0x184d, code lost:
        r13 = r91;
        r6 = r8;
        r2 = r89;
        r1 = r0;
        r4 = r15;
        r14 = r46;
        r9 = r53;
        r15 = r17;
        r5 = -5;
        r8 = null;
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1185:0x1860, code lost:
        r44 = null;
        r47 = null;
        r78 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1188:0x186e, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1189:0x186f, code lost:
        r13 = r91;
        r80 = r15;
        r79 = r17;
        r2 = r0;
        r1 = r8;
        r6 = r56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1190:0x187c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1191:0x187d, code lost:
        r13 = r91;
        r5 = r6;
        r6 = r8;
        r2 = r89;
        r1 = r0;
        r4 = r15;
        r14 = r46;
        r9 = r53;
        r15 = r17;
        r8 = null;
        r21 = null;
        r44 = null;
        r47 = null;
        r78 = false;
        r81 = 0;
        r46 = r6;
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1192:0x189d, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1193:0x189e, code lost:
        r13 = r91;
        r80 = r15;
        r79 = r17;
        r2 = r0;
        r1 = r8;
        r8 = -5;
        r15 = null;
        r21 = null;
        r44 = null;
        r45 = null;
        r78 = false;
        r84 = null;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0609, code lost:
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0613, code lost:
        throw new java.lang.RuntimeException("unsupported!!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x07b6, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x07b7, code lost:
        r44 = r2;
        r46 = r1;
        r14 = r10;
        r4 = r6;
        r2 = r89;
        r8 = r11;
        r62 = r9;
        r21 = r35;
        r78 = r36;
        r6 = r37;
        r32 = r10;
        r9 = r53;
        r5 = -5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x07d5, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x07d6, code lost:
        r27 = r6;
        r2 = r1;
        r1 = r2;
        r14 = r10;
        r30 = r11;
        r8 = -5;
        r22 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x07e9, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x07ea, code lost:
        r44 = r2;
        r46 = r1;
        r14 = r10;
        r4 = r6;
        r15 = r12;
        r2 = r89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x07f9, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x07fa, code lost:
        r27 = r6;
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x07fe, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x07ff, code lost:
        r35 = r15;
        r44 = r2;
        r46 = r1;
        r14 = r10;
        r15 = r12;
        r2 = r89;
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x0812, code lost:
        r62 = r9;
        r21 = r35;
        r78 = r36;
        r6 = r37;
        r32 = r10;
        r9 = r53;
        r5 = -5;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0822, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0823, code lost:
        r3 = r10;
        r27 = r5;
        r35 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0828, code lost:
        r2 = r1;
        r1 = r2;
        r14 = r3;
        r15 = r12;
        r8 = -5;
        r22 = null;
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x083c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x083d, code lost:
        r1 = r0;
        r46 = r1;
        r14 = r10;
        r15 = r12;
        r2 = r89;
        r4 = r5;
        r62 = r9;
        r21 = r15;
        r78 = r36;
        r6 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0854, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0857, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0858, code lost:
        r1 = r0;
        r46 = r1;
        r14 = r10;
        r15 = r12;
        r2 = r89;
        r4 = r5;
        r62 = r9;
        r21 = r15;
        r78 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x086e, code lost:
        r32 = r10;
        r9 = r53;
        r5 = -5;
        r8 = null;
        r44 = null;
        r47 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x087a, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x087b, code lost:
        r37 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x087e, code lost:
        r27 = r5;
        r35 = r15;
        r14 = r10;
        r15 = r12;
        r2 = null;
        r8 = -5;
        r22 = null;
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x088d, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x088e, code lost:
        r1 = r0;
        r46 = r1;
        r14 = r10;
        r15 = r12;
        r2 = r89;
        r4 = r5;
        r62 = r9;
        r21 = r15;
        r32 = r10;
        r9 = r53;
        r5 = -5;
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x08a9, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x08aa, code lost:
        r37 = r6;
        r27 = r5;
        r35 = r15;
        r14 = r10;
        r15 = r12;
        r2 = null;
        r8 = -5;
        r22 = null;
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x08bb, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x08bc, code lost:
        r1 = r0;
        r46 = r1;
        r14 = r10;
        r15 = r12;
        r2 = r89;
        r62 = r9;
        r4 = r5;
        r32 = r10;
        r9 = r53;
        r5 = -5;
        r8 = null;
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x08d2, code lost:
        r44 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x08d5, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x08d6, code lost:
        r37 = r6;
        r27 = r5;
        r14 = r10;
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x08df, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x08e0, code lost:
        r1 = r0;
        r14 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x08e7, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x08e8, code lost:
        r37 = r6;
        r27 = r5;
        r14 = r10;
        r15 = r12;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x08f0, code lost:
        r2 = null;
        r8 = -5;
        r22 = null;
        r30 = null;
        r35 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x08f8, code lost:
        r36 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x08fc, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x091b, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x091c, code lost:
        r37 = r6;
        r27 = r5;
        r3 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0b3d, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:511:0x0b3e, code lost:
        r1 = r0;
        r2 = r89;
        r6 = r14;
        r17 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x10c7, code lost:
        r13 = r91;
        r2 = r4;
        r45 = r5;
        r6 = r56;
        r9 = r53;
        r10 = r79;
        r4 = r80;
        r7 = false;
        r81 = 0;
        r5 = r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x032d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1058:0x1591  */
    /* JADX WARN: Removed duplicated region for block: B:1061:0x1599  */
    /* JADX WARN: Removed duplicated region for block: B:1062:0x159c  */
    /* JADX WARN: Removed duplicated region for block: B:1065:0x15a2  */
    /* JADX WARN: Removed duplicated region for block: B:1073:0x15ce A[Catch: Exception -> 0x14e1, all -> 0x15dc, TryCatch #20 {Exception -> 0x14e1, blocks: (B:1006:0x14bd, B:1008:0x14c5, B:1024:0x14fb, B:1028:0x150c, B:1030:0x1512, B:1035:0x1529, B:1041:0x1543, B:1050:0x157c, B:1052:0x1586, B:1069:0x15aa, B:1071:0x15ae, B:1092:0x1603, B:1086:0x15f2, B:1073:0x15ce, B:1075:0x15d7, B:1038:0x153b, B:1040:0x1540, B:943:0x13a0, B:946:0x13af, B:948:0x13b3, B:949:0x13ba, B:951:0x13c7, B:953:0x13cb, B:955:0x13d5, B:956:0x13d7, B:960:0x13f0, B:964:0x1409, B:966:0x140d, B:968:0x1413, B:970:0x1419, B:972:0x141f, B:975:0x1443, B:978:0x1451, B:979:0x1459, B:973:0x143d), top: B:1358:0x14bd }] */
    /* JADX WARN: Removed duplicated region for block: B:1081:0x15e3  */
    /* JADX WARN: Removed duplicated region for block: B:1082:0x15e8  */
    /* JADX WARN: Removed duplicated region for block: B:1089:0x15fd A[Catch: all -> 0x1668, Exception -> 0x166b, TRY_LEAVE, TryCatch #146 {Exception -> 0x166b, all -> 0x1668, blocks: (B:996:0x149f, B:1015:0x14e6, B:1019:0x14ef, B:1089:0x15fd, B:1101:0x1616, B:1099:0x1610, B:1087:0x15f8, B:987:0x1470, B:991:0x1479, B:1095:0x1609), top: B:1530:0x149f, inners: #25 }] */
    /* JADX WARN: Removed duplicated region for block: B:1106:0x1633  */
    /* JADX WARN: Removed duplicated region for block: B:1109:0x163e A[Catch: all -> 0x16c7, Exception -> 0x16d0, TryCatch #140 {Exception -> 0x16d0, all -> 0x16c7, blocks: (B:1103:0x1627, B:1107:0x1638, B:1109:0x163e, B:1111:0x1642, B:1112:0x1647, B:1113:0x164e, B:1114:0x1667, B:1122:0x1687, B:1123:0x16a8, B:1124:0x16a9, B:1125:0x16c6), top: B:1542:0x1627 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0382 A[ADDED_TO_REGION, EDGE_INSN: B:118:0x0382->B:1578:0x0385 ?: BREAK  ] */
    /* JADX WARN: Removed duplicated region for block: B:1210:0x1906 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:1225:0x1954 A[Catch: all -> 0x1962, TRY_LEAVE, TryCatch #48 {all -> 0x1962, blocks: (B:1223:0x194b, B:1225:0x1954), top: B:1382:0x194b }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:1246:0x19ae  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:1252:0x19de A[Catch: all -> 0x19d1, TryCatch #120 {all -> 0x19d1, blocks: (B:1248:0x19cc, B:1252:0x19de, B:1254:0x19e5, B:1256:0x19ef, B:1257:0x19f2), top: B:1435:0x19cc }] */
    /* JADX WARN: Removed duplicated region for block: B:1254:0x19e5 A[Catch: all -> 0x19d1, TryCatch #120 {all -> 0x19d1, blocks: (B:1248:0x19cc, B:1252:0x19de, B:1254:0x19e5, B:1256:0x19ef, B:1257:0x19f2), top: B:1435:0x19cc }] */
    /* JADX WARN: Removed duplicated region for block: B:1256:0x19ef A[Catch: all -> 0x19d1, TryCatch #120 {all -> 0x19d1, blocks: (B:1248:0x19cc, B:1252:0x19de, B:1254:0x19e5, B:1256:0x19ef, B:1257:0x19f2), top: B:1435:0x19cc }] */
    /* JADX WARN: Removed duplicated region for block: B:1261:0x1a03  */
    /* JADX WARN: Removed duplicated region for block: B:1288:0x1a9b A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:1305:0x1acf  */
    /* JADX WARN: Removed duplicated region for block: B:1307:0x1ada  */
    /* JADX WARN: Removed duplicated region for block: B:1350:0x0c21 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1376:0x10df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1389:0x1ab5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1393:0x0297 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1401:0x0972 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1405:0x157c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1407:0x1aba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1413:0x1ac4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1415:0x1abf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1424:0x1aa2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1435:0x19cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1443:0x15aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1445:0x1a2c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1447:0x1a27 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1449:0x1a1d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1451:0x0c19 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1452:0x0cb4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1456:0x1a22 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1465:0x1a0a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1477:0x0f57 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1486:0x0233 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1508:0x0343 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1545:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1553:0x0d9f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1561:0x0f10 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1577:0x067f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1579:0x066b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0930 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0993 A[Catch: all -> 0x0977, TryCatch #62 {all -> 0x0977, blocks: (B:434:0x0972, B:438:0x0993, B:440:0x0999, B:442:0x09a2, B:443:0x09a5), top: B:1401:0x0972 }] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0999 A[Catch: all -> 0x0977, TryCatch #62 {all -> 0x0977, blocks: (B:434:0x0972, B:438:0x0993, B:440:0x0999, B:442:0x09a2, B:443:0x09a5), top: B:1401:0x0972 }] */
    /* JADX WARN: Removed duplicated region for block: B:442:0x09a2 A[Catch: all -> 0x0977, TryCatch #62 {all -> 0x0977, blocks: (B:434:0x0972, B:438:0x0993, B:440:0x0999, B:442:0x09a2, B:443:0x09a5), top: B:1401:0x0972 }] */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0b23  */
    /* JADX WARN: Removed duplicated region for block: B:582:0x0c51 A[Catch: all -> 0x0c26, Exception -> 0x0c42, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0c26, blocks: (B:573:0x0c21, B:582:0x0c51, B:587:0x0c91, B:589:0x0c97, B:595:0x0cbc, B:600:0x0cd0), top: B:1350:0x0c21 }] */
    /* JADX WARN: Removed duplicated region for block: B:584:0x0c78  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x0c91 A[Catch: all -> 0x0c26, Exception -> 0x0c42, TRY_ENTER, TryCatch #3 {all -> 0x0c26, blocks: (B:573:0x0c21, B:582:0x0c51, B:587:0x0c91, B:589:0x0c97, B:595:0x0cbc, B:600:0x0cd0), top: B:1350:0x0c21 }] */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0d10  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x0d1b A[Catch: Exception -> 0x0c42, all -> 0x0cf6, TryCatch #148 {all -> 0x0cf6, blocks: (B:593:0x0cb4, B:598:0x0cc8, B:603:0x0cd8, B:605:0x0ce0, B:619:0x0d1b, B:625:0x0d2d), top: B:1452:0x0cb4 }] */
    /* JADX WARN: Removed duplicated region for block: B:627:0x0d33  */
    /* JADX WARN: Removed duplicated region for block: B:653:0x0def A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:656:0x0df7 A[Catch: all -> 0x0e50, Exception -> 0x0e60, TRY_LEAVE, TryCatch #154 {Exception -> 0x0e60, all -> 0x0e50, blocks: (B:654:0x0df1, B:656:0x0df7), top: B:1514:0x0df1 }] */
    /* JADX WARN: Removed duplicated region for block: B:672:0x0e84  */
    /* JADX WARN: Removed duplicated region for block: B:695:0x0ef6  */
    /* JADX WARN: Removed duplicated region for block: B:710:0x0f3c  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x0f93  */
    /* JADX WARN: Removed duplicated region for block: B:729:0x0f96  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x101d  */
    /* JADX WARN: Removed duplicated region for block: B:765:0x1057  */
    /* JADX WARN: Removed duplicated region for block: B:776:0x109b  */
    /* JADX WARN: Removed duplicated region for block: B:777:0x109d  */
    /* JADX WARN: Removed duplicated region for block: B:781:0x10c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:795:0x110b  */
    /* JADX WARN: Removed duplicated region for block: B:797:0x110f  */
    /* JADX WARN: Removed duplicated region for block: B:853:0x122c  */
    /* JADX WARN: Removed duplicated region for block: B:862:0x124f  */
    /* JADX WARN: Removed duplicated region for block: B:865:0x126b A[ADDED_TO_REGION, EDGE_INSN: B:865:0x126b->B:1595:0x126e ?: BREAK  ] */
    /* JADX WARN: Removed duplicated region for block: B:871:0x128b  */
    /* JADX WARN: Removed duplicated region for block: B:872:0x129a  */
    /* JADX WARN: Removed duplicated region for block: B:876:0x12ab  */
    /* JADX WARN: Removed duplicated region for block: B:877:0x12bf  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02e5 A[Catch: all -> 0x029c, Exception -> 0x02b5, TRY_ENTER, TRY_LEAVE, TryCatch #56 {Exception -> 0x02b5, blocks: (B:86:0x0297, B:95:0x02e5), top: B:1393:0x0297 }] */
    /* JADX WARN: Removed duplicated region for block: B:989:0x1476  */
    /* JADX WARN: Removed duplicated region for block: B:990:0x1478  */
    /* JADX WARN: Removed duplicated region for block: B:993:0x1483  */
    /* JADX WARN: Removed duplicated region for block: B:995:0x149d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean convertVideoInternal(org.telegram.messenger.video.MediaCodecVideoConvertor.ConvertVideoParams r90, boolean r91, int r92) {
        /*
            Method dump skipped, instructions count: 7032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.video.MediaCodecVideoConvertor.convertVideoInternal(org.telegram.messenger.video.MediaCodecVideoConvertor$ConvertVideoParams, boolean, int):boolean");
    }

    private static void applyAudioInputs(ArrayList<MixedSoundInfo> arrayList, ArrayList<AudioInput> arrayList2) throws IOException {
        for (int i = 0; i < arrayList.size(); i++) {
            MixedSoundInfo mixedSoundInfo = arrayList.get(i);
            GeneralAudioInput generalAudioInput = new GeneralAudioInput(mixedSoundInfo.audioFile);
            generalAudioInput.setVolume(mixedSoundInfo.volume);
            long j = mixedSoundInfo.startTime;
            if (j > 0) {
                generalAudioInput.setStartOffsetUs(j);
            }
            long j2 = mixedSoundInfo.audioOffset;
            if (j2 > 0) {
                generalAudioInput.setStartTimeUs(j2);
            } else {
                j2 = 0;
            }
            long j3 = mixedSoundInfo.duration;
            if (j3 > 0) {
                generalAudioInput.setEndTimeUs(j2 + j3);
            }
            arrayList2.add(generalAudioInput);
        }
    }

    private MediaCodec createEncoderForMimeType() throws IOException {
        MediaCodec createEncoderByType;
        if (this.outputMimeType.equals(MimeTypes.VIDEO_H265) && Build.VERSION.SDK_INT >= 29) {
            String findGoodHevcEncoder = SharedConfig.findGoodHevcEncoder();
            createEncoderByType = findGoodHevcEncoder != null ? MediaCodec.createByCodecName(findGoodHevcEncoder) : null;
        } else {
            this.outputMimeType = "video/avc";
            createEncoderByType = MediaCodec.createEncoderByType("video/avc");
        }
        if (createEncoderByType == null && this.outputMimeType.equals(MimeTypes.VIDEO_H265)) {
            this.outputMimeType = "video/avc";
            return MediaCodec.createEncoderByType("video/avc");
        }
        return createEncoderByType;
    }

    public static void cutOfNalData(String str, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        int i = str.equals(MimeTypes.VIDEO_H265) ? 3 : 1;
        if (bufferInfo.size > 100) {
            byteBuffer.position(bufferInfo.offset);
            byte[] bArr = new byte[100];
            byteBuffer.get(bArr);
            int i2 = 0;
            for (int i3 = 0; i3 < 96; i3++) {
                if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 0 && bArr[i3 + 3] == 1 && (i2 = i2 + 1) > i) {
                    bufferInfo.offset += i3;
                    bufferInfo.size -= i3;
                    return;
                }
            }
        }
    }

    private boolean isMediatekAvcEncoder(MediaCodec mediaCodec) {
        return mediaCodec.getName().equals("c2.mtk.avc.encoder");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0125, code lost:
        if (r9[r6 + 3] != 1) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long readAndWriteTracks(android.media.MediaExtractor r29, org.telegram.messenger.video.MP4Builder r30, android.media.MediaCodec.BufferInfo r31, long r32, long r34, long r36, java.io.File r38, boolean r39) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.video.MediaCodecVideoConvertor.readAndWriteTracks(android.media.MediaExtractor, org.telegram.messenger.video.MP4Builder, android.media.MediaCodec$BufferInfo, long, long, long, java.io.File, boolean):long");
    }

    private void checkConversionCanceled() {
        MediaController.VideoConvertorListener videoConvertorListener = this.callback;
        if (videoConvertorListener != null && videoConvertorListener.checkConversionCanceled()) {
            throw new ConversionCanceledException();
        }
    }

    private static String hdrFragmentShader(int i, int i2, int i3, int i4, boolean z, StoryEntry.HDRInfo hDRInfo) {
        String readRes;
        if (z) {
            if (hDRInfo.getHDRType() == 1) {
                readRes = RLottieDrawable.readRes(null, C3632R.raw.yuv_hlg2rgb);
            } else {
                readRes = RLottieDrawable.readRes(null, C3632R.raw.yuv_pq2rgb);
            }
            String replace = readRes.replace("$dstWidth", i3 + ".0");
            String replace2 = replace.replace("$dstHeight", i4 + ".0");
            return replace2 + "\nin vec2 vTextureCoord;\nout vec4 fragColor;\nvoid main() {\n    fragColor = TEX(vTextureCoord);\n}";
        }
        return "#version 320 es\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nout vec4 fragColor;\nvoid main() {\nfragColor = texture(sTexture, vTextureCoord);\n}\n";
    }

    private static String createFragmentShader(int i, int i2, int i3, int i4, boolean z, int i5) {
        int clamp = (int) Utilities.clamp((Math.max(i, i2) / Math.max(i4, i3)) * 0.8f, 2.0f, 1.0f);
        if (clamp > 1 && SharedConfig.deviceIsAverage()) {
            clamp = 1;
        }
        int min = Math.min(i5, clamp);
        FileLog.m105d("source size " + i + "x" + i2 + "    dest size " + i3 + i4 + "   kernelRadius " + min);
        if (z) {
            return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = " + min + ".0;\nconst float pixelSizeX = 1.0 / " + i + ".0;\nconst float pixelSizeY = 1.0 / " + i2 + ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n";
        }
        return "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = " + min + ".0;\nconst float pixelSizeX = 1.0 / " + i2 + ".0;\nconst float pixelSizeY = 1.0 / " + i + ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n";
    }

    /* loaded from: classes4.dex */
    public class ConversionCanceledException extends RuntimeException {
        public ConversionCanceledException() {
            super("canceled conversion");
        }
    }

    private MediaCodec getDecoderByFormat(MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            throw new RuntimeException("getDecoderByFormat: format is null");
        }
        ArrayList arrayList = new ArrayList();
        String string = mediaFormat.getString("mime");
        arrayList.add(string);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(string)) {
            arrayList.add(MimeTypes.VIDEO_H265);
            arrayList.add("video/avc");
        }
        Exception exc = null;
        while (!arrayList.isEmpty()) {
            try {
                String str = (String) arrayList.remove(0);
                mediaFormat.setString("mime", str);
                return MediaCodec.createDecoderByType(str);
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        throw new RuntimeException(exc);
    }

    /* loaded from: classes4.dex */
    public static class ConvertVideoParams {
        int account;
        long avatarStartTime;
        String backgroundPath;
        int bitrate;
        String blurPath;
        File cacheFile;
        MediaController.VideoConvertorListener callback;
        MediaController.CropState cropState;
        long duration;
        long endTime;
        int framerate;
        Integer gradientBottomColor;
        Integer gradientTopColor;
        StoryEntry.HDRInfo hdrInfo;
        boolean isDark;
        boolean isPhoto;
        boolean isRound;
        boolean isSecret;
        boolean isStory;
        ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        String messagePath;
        String messageVideoMaskPath;
        boolean muted;
        boolean needCompress;
        int originalBitrate;
        int originalHeight;
        int originalWidth;
        String paintPath;
        int resultHeight;
        int resultWidth;
        int rotationValue;
        MediaController.SavedFilterState savedFilterState;
        public ArrayList<MixedSoundInfo> soundInfos = new ArrayList<>();
        long startTime;
        String videoPath;
        long wallpaperPeerId;

        private ConvertVideoParams() {
        }

        /* renamed from: of */
        public static ConvertVideoParams m81of(String str, File file, int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, long j2, long j3, boolean z2, long j4, MediaController.VideoConvertorListener videoConvertorListener, VideoEditedInfo videoEditedInfo) {
            ConvertVideoParams convertVideoParams = new ConvertVideoParams();
            convertVideoParams.videoPath = str;
            convertVideoParams.cacheFile = file;
            convertVideoParams.rotationValue = i;
            convertVideoParams.isSecret = z;
            convertVideoParams.originalWidth = i2;
            convertVideoParams.originalHeight = i3;
            convertVideoParams.resultWidth = i4;
            convertVideoParams.resultHeight = i5;
            convertVideoParams.framerate = i6;
            convertVideoParams.bitrate = i7;
            convertVideoParams.originalBitrate = i8;
            convertVideoParams.startTime = j;
            convertVideoParams.endTime = j2;
            convertVideoParams.avatarStartTime = j3;
            convertVideoParams.needCompress = z2;
            convertVideoParams.duration = j4;
            convertVideoParams.savedFilterState = videoEditedInfo.filterState;
            convertVideoParams.paintPath = videoEditedInfo.paintPath;
            convertVideoParams.blurPath = videoEditedInfo.blurPath;
            convertVideoParams.mediaEntities = videoEditedInfo.mediaEntities;
            convertVideoParams.isPhoto = videoEditedInfo.isPhoto;
            convertVideoParams.cropState = videoEditedInfo.cropState;
            convertVideoParams.isRound = videoEditedInfo.roundVideo;
            convertVideoParams.callback = videoConvertorListener;
            convertVideoParams.gradientTopColor = videoEditedInfo.gradientTopColor;
            convertVideoParams.gradientBottomColor = videoEditedInfo.gradientBottomColor;
            convertVideoParams.muted = videoEditedInfo.muted;
            convertVideoParams.isStory = videoEditedInfo.isStory;
            convertVideoParams.hdrInfo = videoEditedInfo.hdrInfo;
            convertVideoParams.isDark = videoEditedInfo.isDark;
            convertVideoParams.wallpaperPeerId = videoEditedInfo.wallpaperPeerId;
            convertVideoParams.account = videoEditedInfo.account;
            convertVideoParams.messagePath = videoEditedInfo.messagePath;
            convertVideoParams.messageVideoMaskPath = videoEditedInfo.messageVideoMaskPath;
            convertVideoParams.backgroundPath = videoEditedInfo.backgroundPath;
            return convertVideoParams;
        }
    }

    /* loaded from: classes4.dex */
    public static class MixedSoundInfo {
        final String audioFile;
        public long audioOffset;
        public long duration;
        public long startTime;
        public float volume = 1.0f;

        public MixedSoundInfo(String str) {
            this.audioFile = str;
        }
    }
}
