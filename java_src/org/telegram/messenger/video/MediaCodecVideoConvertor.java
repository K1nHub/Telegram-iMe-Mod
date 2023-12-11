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

    /* JADX WARN: Can't wrap try/catch for region: R(11:1095|1096|(9:1098|(5:(1:1103)|(1:1130)(1:1107)|1108|(1:1129)(3:1112|(1:1114)|1115)|1116)(2:1131|(7:1133|(3:1137|(2:1143|(2:1145|1146)(1:1153))|1154)|1159|1147|(1:1150)|1151|1152))|1117|1118|(1:1120)(1:1123)|1121|1122|(3:1080|1081|1082)(6:892|(7:894|895|896|(1:898)(2:903|(26:905|(3:1060|1061|(1:1063))(1:(21:908|909|(1:911)(1:1050)|912|913|(1:1049)(2:917|918)|919|(4:921|922|923|(3:925|926|(14:928|(2:930|931)(3:1037|1038|1039)|932|933|(3:1024|1025|(9:1030|937|(1:939)(1:1023)|940|(2:944|(4:950|951|(1:953)|954)(3:946|(1:948)|949))|(1:963)(4:1016|(1:1020)|1021|1022)|(8:975|976|(3:978|979|980)(1:1010)|982|983|984|(4:986|987|988|989)(1:1001)|990)(1:965)|966|(4:968|(1:970)|971|972)(4:973|974|900|901)))(1:935)|936|937|(0)(0)|940|(3:942|944|(0)(0))|(0)(0)|(0)(0)|966|(0)(0))(13:1040|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))))(1:1048)|1042|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))(4:1056|1057|1058|1059))|958|692|693|(2:695|(20:697|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(1:716)|718))(1:753)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718))|899|900|901)|1079|974|900|901)|902)(1:1162)|1161|1117|1118|(0)(0)|1121|1122|(0)(0)|902) */
    /* JADX WARN: Can't wrap try/catch for region: R(23:(2:13|(1:15)(2:601|(1:603)(1:604)))(1:(1:606))|(3:17|18|19)(1:600)|(9:581|582|583|(4:585|(1:587)|588|589)|590|(4:592|(1:594)|595|596)|21|(1:23)|25)|(11:201|202|203|204|205|206|207|208|209|210|(2:212|213))|(3:542|543|(18:545|216|217|218|219|220|221|(2:530|531)(1:223)|224|(4:226|227|228|229)(1:528)|230|(2:(5:235|236|(2:504|505)|238|(1:(10:243|244|245|(1:247)(1:498)|248|249|250|(1:252)(3:283|(6:471|472|473|(2:476|477)|475|450)(2:285|(7:425|426|(1:428)|429|(1:468)(7:432|433|434|435|(3:437|438|(7:440|441|442|(1:444)(1:452)|(1:446)(1:451)|447|448)(1:458))(1:460)|459|448)|449|450)(2:287|(5:289|290|291|(1:293)(1:414)|(10:295|296|(4:314|315|316|(14:(1:369)(3:321|322|323)|(2:327|328)|329|330|331|332|333|(1:349)(5:337|338|339|(1:341)|342)|300|301|302|(1:304)(1:308)|305|306)(2:370|(2:372|(6:374|(3:378|(2:384|(2:386|387)(1:393))|394)|399|388|(1:391)|392)(1:401))(1:405)))(1:298)|299|300|301|302|(0)(0)|305|306)(3:411|412|413))(3:422|423|424)))|307)|(2:254|255)(3:(6:261|262|263|264|265|(1:267))(1:258)|259|260)|256)))(2:233|234)|242)|(2:174|175)|(1:52)|(1:54)|(1:56)|57|58))|215|216|217|218|219|220|221|(0)(0)|224|(0)(0)|230|(7:(0)|235|236|(0)|238|(11:(0)|243|244|245|(0)(0)|248|249|250|(0)(0)|(0)(0)|256)|242)|(0)|(0)|(0)|(0)|57|58) */
    /* JADX WARN: Can't wrap try/catch for region: R(31:(2:13|(1:15)(2:601|(1:603)(1:604)))(1:(1:606))|(3:17|18|19)(1:600)|581|582|583|(4:585|(1:587)|588|589)|590|(4:592|(1:594)|595|596)|21|(1:23)|25|(11:201|202|203|204|205|206|207|208|209|210|(2:212|213))|(3:542|543|(18:545|216|217|218|219|220|221|(2:530|531)(1:223)|224|(4:226|227|228|229)(1:528)|230|(2:(5:235|236|(2:504|505)|238|(1:(10:243|244|245|(1:247)(1:498)|248|249|250|(1:252)(3:283|(6:471|472|473|(2:476|477)|475|450)(2:285|(7:425|426|(1:428)|429|(1:468)(7:432|433|434|435|(3:437|438|(7:440|441|442|(1:444)(1:452)|(1:446)(1:451)|447|448)(1:458))(1:460)|459|448)|449|450)(2:287|(5:289|290|291|(1:293)(1:414)|(10:295|296|(4:314|315|316|(14:(1:369)(3:321|322|323)|(2:327|328)|329|330|331|332|333|(1:349)(5:337|338|339|(1:341)|342)|300|301|302|(1:304)(1:308)|305|306)(2:370|(2:372|(6:374|(3:378|(2:384|(2:386|387)(1:393))|394)|399|388|(1:391)|392)(1:401))(1:405)))(1:298)|299|300|301|302|(0)(0)|305|306)(3:411|412|413))(3:422|423|424)))|307)|(2:254|255)(3:(6:261|262|263|264|265|(1:267))(1:258)|259|260)|256)))(2:233|234)|242)|(2:174|175)|(1:52)|(1:54)|(1:56)|57|58))|215|216|217|218|219|220|221|(0)(0)|224|(0)(0)|230|(7:(0)|235|236|(0)|238|(11:(0)|243|244|245|(0)(0)|248|249|250|(0)(0)|(0)(0)|256)|242)|(0)|(0)|(0)|(0)|57|58) */
    /* JADX WARN: Can't wrap try/catch for region: R(50:(1:669)(2:1506|(2:1508|1509)(55:1510|1511|(1:1505)(4:674|(2:679|680)|1504|680)|(52:1500|1501|(2:684|685)|761|762|(3:764|765|766)(1:1494)|767|768|(1:772)|773|774|(9:1466|1467|(2:1469|1470)(1:1487)|1471|(1:1473)(1:1486)|1474|(1:1476)|1477|(1:1484)(1:1481))(1:776)|777|(2:779|(3:782|(1:784)|785))(1:1465)|792|793|794|796|797|798|799|801|802|803|804|805|(3:1426|1427|(26:1430|(1:1432)(1:1434)|808|(3:811|812|(2:814|(23:816|817|818|819|820|821|822|823|824|(2:1380|1381)(1:826)|827|828|(13:1323|1324|1325|1326|(2:1328|1329)(1:1369)|1362|(6:1364|1332|(1:1334)|(1:(8:1337|1338|1339|(1:1341)|1342|(1:1344)(1:1347)|1345|1346)(6:1352|(1:1354)|1355|(1:1357)|1358|1359))(1:1361)|1360|1346)|1331|1332|(0)|(0)(0)|1360|1346)(4:830|831|(3:833|834|835)(1:1321)|836)|(1:838)(1:1320)|839|840|841|(2:(7:848|849|(2:1302|1303)(1:851)|(6:853|854|855|856|(5:858|859|860|(4:862|(1:864)(1:1248)|865|(1:867)(1:1247))(1:1249)|868)(5:1257|(2:1259|(1:(11:1262|(2:1264|(1:1266))(1:1291)|1267|(1:1269)|1270|(1:1272)(1:1290)|1273|(2:1279|(5:1283|(1:1285)|1286|1287|1288))|1289|1287|1288))(3:1292|(1:1294)|1288))|1295|(0)|1288)|(4:872|873|874|(1:(12:879|880|881|(1:883)(1:1240)|884|885|886|887|(1:889)(3:1083|(4:1222|1223|(1:1225)|1226)(27:1085|(4:1173|1174|(1:1218)(10:1177|1178|1179|1180|1181|1182|1183|(3:1185|1186|(7:1188|1189|1190|(1:1192)(1:1200)|(1:1194)(1:1199)|1195|1196))(1:1209)|1208|1196)|1197)(2:1087|(5:1089|1090|1091|(1:1093)(1:1166)|(11:1095|1096|(9:1098|(5:(1:1103)|(1:1130)(1:1107)|1108|(1:1129)(3:1112|(1:1114)|1115)|1116)(2:1131|(7:1133|(3:1137|(2:1143|(2:1145|1146)(1:1153))|1154)|1159|1147|(1:1150)|1151|1152))|1117|1118|(1:1120)(1:1123)|1121|1122|(3:1080|1081|1082)(6:892|(7:894|895|896|(1:898)(2:903|(26:905|(3:1060|1061|(1:1063))(1:(21:908|909|(1:911)(1:1050)|912|913|(1:1049)(2:917|918)|919|(4:921|922|923|(3:925|926|(14:928|(2:930|931)(3:1037|1038|1039)|932|933|(3:1024|1025|(9:1030|937|(1:939)(1:1023)|940|(2:944|(4:950|951|(1:953)|954)(3:946|(1:948)|949))|(1:963)(4:1016|(1:1020)|1021|1022)|(8:975|976|(3:978|979|980)(1:1010)|982|983|984|(4:986|987|988|989)(1:1001)|990)(1:965)|966|(4:968|(1:970)|971|972)(4:973|974|900|901)))(1:935)|936|937|(0)(0)|940|(3:942|944|(0)(0))|(0)(0)|(0)(0)|966|(0)(0))(13:1040|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))))(1:1048)|1042|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))(4:1056|1057|1058|1059))|958|692|693|(2:695|(20:697|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(1:716)|718))(1:753)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718))|899|900|901)|1079|974|900|901)|902)(1:1162)|1161|1117|1118|(0)(0)|1121|1122|(0)(0)|902)(3:1163|1164|1165))(3:1170|1171|1172))|995|996|692|693|(0)(0)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718)|1198)|890|(0)(0)|902))))(1:1301)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902))|878)|846|713|714|(0)|718)))|1404|(4:1406|1407|1408|(5:1410|(1:1412)(1:1419)|1413|(1:1415)(1:1418)|1416))(1:1425)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718))|807|808|(3:811|812|(0))|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718)|682|(0)|761|762|(0)(0)|767|768|(2:770|772)|773|774|(0)(0)|777|(0)(0)|792|793|794|796|797|798|799|801|802|803|804|805|(0)|807|808|(0)|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718))|761|762|(0)(0)|767|768|(0)|773|774|(0)(0)|777|(0)(0)|792|793|794|796|797|798|799|801|802|803|804|805|(0)|807|808|(0)|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718) */
    /* JADX WARN: Can't wrap try/catch for region: R(58:642|(12:643|644|645|(3:647|648|649)(2:1550|1551)|650|651|(6:653|(1:655)(2:1537|(1:1539)(1:1540))|656|657|(2:659|660)(1:1536)|661)(3:1541|(1:1543)(1:1545)|1544)|(2:1529|1530)|663|(1:665)(1:1528)|666|667)|(1:669)(2:1506|(2:1508|1509)(55:1510|1511|(1:1505)(4:674|(2:679|680)|1504|680)|(52:1500|1501|(2:684|685)|761|762|(3:764|765|766)(1:1494)|767|768|(1:772)|773|774|(9:1466|1467|(2:1469|1470)(1:1487)|1471|(1:1473)(1:1486)|1474|(1:1476)|1477|(1:1484)(1:1481))(1:776)|777|(2:779|(3:782|(1:784)|785))(1:1465)|792|793|794|796|797|798|799|801|802|803|804|805|(3:1426|1427|(26:1430|(1:1432)(1:1434)|808|(3:811|812|(2:814|(23:816|817|818|819|820|821|822|823|824|(2:1380|1381)(1:826)|827|828|(13:1323|1324|1325|1326|(2:1328|1329)(1:1369)|1362|(6:1364|1332|(1:1334)|(1:(8:1337|1338|1339|(1:1341)|1342|(1:1344)(1:1347)|1345|1346)(6:1352|(1:1354)|1355|(1:1357)|1358|1359))(1:1361)|1360|1346)|1331|1332|(0)|(0)(0)|1360|1346)(4:830|831|(3:833|834|835)(1:1321)|836)|(1:838)(1:1320)|839|840|841|(2:(7:848|849|(2:1302|1303)(1:851)|(6:853|854|855|856|(5:858|859|860|(4:862|(1:864)(1:1248)|865|(1:867)(1:1247))(1:1249)|868)(5:1257|(2:1259|(1:(11:1262|(2:1264|(1:1266))(1:1291)|1267|(1:1269)|1270|(1:1272)(1:1290)|1273|(2:1279|(5:1283|(1:1285)|1286|1287|1288))|1289|1287|1288))(3:1292|(1:1294)|1288))|1295|(0)|1288)|(4:872|873|874|(1:(12:879|880|881|(1:883)(1:1240)|884|885|886|887|(1:889)(3:1083|(4:1222|1223|(1:1225)|1226)(27:1085|(4:1173|1174|(1:1218)(10:1177|1178|1179|1180|1181|1182|1183|(3:1185|1186|(7:1188|1189|1190|(1:1192)(1:1200)|(1:1194)(1:1199)|1195|1196))(1:1209)|1208|1196)|1197)(2:1087|(5:1089|1090|1091|(1:1093)(1:1166)|(11:1095|1096|(9:1098|(5:(1:1103)|(1:1130)(1:1107)|1108|(1:1129)(3:1112|(1:1114)|1115)|1116)(2:1131|(7:1133|(3:1137|(2:1143|(2:1145|1146)(1:1153))|1154)|1159|1147|(1:1150)|1151|1152))|1117|1118|(1:1120)(1:1123)|1121|1122|(3:1080|1081|1082)(6:892|(7:894|895|896|(1:898)(2:903|(26:905|(3:1060|1061|(1:1063))(1:(21:908|909|(1:911)(1:1050)|912|913|(1:1049)(2:917|918)|919|(4:921|922|923|(3:925|926|(14:928|(2:930|931)(3:1037|1038|1039)|932|933|(3:1024|1025|(9:1030|937|(1:939)(1:1023)|940|(2:944|(4:950|951|(1:953)|954)(3:946|(1:948)|949))|(1:963)(4:1016|(1:1020)|1021|1022)|(8:975|976|(3:978|979|980)(1:1010)|982|983|984|(4:986|987|988|989)(1:1001)|990)(1:965)|966|(4:968|(1:970)|971|972)(4:973|974|900|901)))(1:935)|936|937|(0)(0)|940|(3:942|944|(0)(0))|(0)(0)|(0)(0)|966|(0)(0))(13:1040|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))))(1:1048)|1042|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))(4:1056|1057|1058|1059))|958|692|693|(2:695|(20:697|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(1:716)|718))(1:753)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718))|899|900|901)|1079|974|900|901)|902)(1:1162)|1161|1117|1118|(0)(0)|1121|1122|(0)(0)|902)(3:1163|1164|1165))(3:1170|1171|1172))|995|996|692|693|(0)(0)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718)|1198)|890|(0)(0)|902))))(1:1301)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902))|878)|846|713|714|(0)|718)))|1404|(4:1406|1407|1408|(5:1410|(1:1412)(1:1419)|1413|(1:1415)(1:1418)|1416))(1:1425)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718))|807|808|(3:811|812|(0))|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718)|682|(0)|761|762|(0)(0)|767|768|(2:770|772)|773|774|(0)(0)|777|(0)(0)|792|793|794|796|797|798|799|801|802|803|804|805|(0)|807|808|(0)|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718))|670|(1:672)|1505|(0)|682|(0)|761|762|(0)(0)|767|768|(0)|773|774|(0)(0)|777|(0)(0)|792|793|794|796|797|798|799|801|802|803|804|805|(0)|807|808|(0)|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718) */
    /* JADX WARN: Can't wrap try/catch for region: R(69:642|643|644|645|(3:647|648|649)(2:1550|1551)|650|651|(6:653|(1:655)(2:1537|(1:1539)(1:1540))|656|657|(2:659|660)(1:1536)|661)(3:1541|(1:1543)(1:1545)|1544)|(2:1529|1530)|663|(1:665)(1:1528)|666|667|(1:669)(2:1506|(2:1508|1509)(55:1510|1511|(1:1505)(4:674|(2:679|680)|1504|680)|(52:1500|1501|(2:684|685)|761|762|(3:764|765|766)(1:1494)|767|768|(1:772)|773|774|(9:1466|1467|(2:1469|1470)(1:1487)|1471|(1:1473)(1:1486)|1474|(1:1476)|1477|(1:1484)(1:1481))(1:776)|777|(2:779|(3:782|(1:784)|785))(1:1465)|792|793|794|796|797|798|799|801|802|803|804|805|(3:1426|1427|(26:1430|(1:1432)(1:1434)|808|(3:811|812|(2:814|(23:816|817|818|819|820|821|822|823|824|(2:1380|1381)(1:826)|827|828|(13:1323|1324|1325|1326|(2:1328|1329)(1:1369)|1362|(6:1364|1332|(1:1334)|(1:(8:1337|1338|1339|(1:1341)|1342|(1:1344)(1:1347)|1345|1346)(6:1352|(1:1354)|1355|(1:1357)|1358|1359))(1:1361)|1360|1346)|1331|1332|(0)|(0)(0)|1360|1346)(4:830|831|(3:833|834|835)(1:1321)|836)|(1:838)(1:1320)|839|840|841|(2:(7:848|849|(2:1302|1303)(1:851)|(6:853|854|855|856|(5:858|859|860|(4:862|(1:864)(1:1248)|865|(1:867)(1:1247))(1:1249)|868)(5:1257|(2:1259|(1:(11:1262|(2:1264|(1:1266))(1:1291)|1267|(1:1269)|1270|(1:1272)(1:1290)|1273|(2:1279|(5:1283|(1:1285)|1286|1287|1288))|1289|1287|1288))(3:1292|(1:1294)|1288))|1295|(0)|1288)|(4:872|873|874|(1:(12:879|880|881|(1:883)(1:1240)|884|885|886|887|(1:889)(3:1083|(4:1222|1223|(1:1225)|1226)(27:1085|(4:1173|1174|(1:1218)(10:1177|1178|1179|1180|1181|1182|1183|(3:1185|1186|(7:1188|1189|1190|(1:1192)(1:1200)|(1:1194)(1:1199)|1195|1196))(1:1209)|1208|1196)|1197)(2:1087|(5:1089|1090|1091|(1:1093)(1:1166)|(11:1095|1096|(9:1098|(5:(1:1103)|(1:1130)(1:1107)|1108|(1:1129)(3:1112|(1:1114)|1115)|1116)(2:1131|(7:1133|(3:1137|(2:1143|(2:1145|1146)(1:1153))|1154)|1159|1147|(1:1150)|1151|1152))|1117|1118|(1:1120)(1:1123)|1121|1122|(3:1080|1081|1082)(6:892|(7:894|895|896|(1:898)(2:903|(26:905|(3:1060|1061|(1:1063))(1:(21:908|909|(1:911)(1:1050)|912|913|(1:1049)(2:917|918)|919|(4:921|922|923|(3:925|926|(14:928|(2:930|931)(3:1037|1038|1039)|932|933|(3:1024|1025|(9:1030|937|(1:939)(1:1023)|940|(2:944|(4:950|951|(1:953)|954)(3:946|(1:948)|949))|(1:963)(4:1016|(1:1020)|1021|1022)|(8:975|976|(3:978|979|980)(1:1010)|982|983|984|(4:986|987|988|989)(1:1001)|990)(1:965)|966|(4:968|(1:970)|971|972)(4:973|974|900|901)))(1:935)|936|937|(0)(0)|940|(3:942|944|(0)(0))|(0)(0)|(0)(0)|966|(0)(0))(13:1040|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))))(1:1048)|1042|1041|933|(0)(0)|936|937|(0)(0)|940|(0)|(0)(0)|(0)(0)|966|(0)(0))(4:1056|1057|1058|1059))|958|692|693|(2:695|(20:697|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(1:716)|718))(1:753)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718))|899|900|901)|1079|974|900|901)|902)(1:1162)|1161|1117|1118|(0)(0)|1121|1122|(0)(0)|902)(3:1163|1164|1165))(3:1170|1171|1172))|995|996|692|693|(0)(0)|752|698|699|700|701|702|703|704|705|706|707|708|709|710|711|712|713|714|(0)|718)|1198)|890|(0)(0)|902))))(1:1301)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902))|878)|846|713|714|(0)|718)))|1404|(4:1406|1407|1408|(5:1410|(1:1412)(1:1419)|1413|(1:1415)(1:1418)|1416))(1:1425)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718))|807|808|(3:811|812|(0))|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718)|682|(0)|761|762|(0)(0)|767|768|(2:770|772)|773|774|(0)(0)|777|(0)(0)|792|793|794|796|797|798|799|801|802|803|804|805|(0)|807|808|(0)|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718))|670|(1:672)|1505|(0)|682|(0)|761|762|(0)(0)|767|768|(0)|773|774|(0)(0)|777|(0)(0)|792|793|794|796|797|798|799|801|802|803|804|805|(0)|807|808|(0)|1404|(0)(0)|1420|820|821|822|823|824|(0)(0)|827|828|(0)(0)|(0)(0)|839|840|841|(9:(0)|848|849|(0)(0)|(0)(0)|1246|874|(13:(0)|879|880|881|(0)(0)|884|885|886|887|(0)(0)|890|(0)(0)|902)|878)|846|713|714|(0)|718) */
    /* JADX WARN: Code restructure failed: missing block: B:1127:0x163f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1128:0x1640, code lost:
        r1 = r4;
        r4 = r0;
        r48 = r1;
        r1 = r14;
        r8 = r28;
        r7 = r32;
        r12 = r7;
        r11 = "x";
        r6 = r80;
        r45 = false;
        r14 = r10;
        r10 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1129:0x1657, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1160:0x1720, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1161:0x1721, code lost:
        r28 = r1;
        r58 = r8;
        r14 = r12;
        r27 = r50;
        r50 = r13;
        r6 = r80;
        r10 = -5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1165:0x174e, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1166:0x174f, code lost:
        r28 = r1;
        r14 = r12;
        r27 = r50;
        r50 = r13;
        r6 = r80;
        r10 = -5;
        r58 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1168:0x1761, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1169:0x1762, code lost:
        r28 = r1;
        r50 = r13;
        r4 = r0;
        r10 = r18;
        r1 = r12;
        r8 = r28;
        r7 = r32;
        r12 = r7;
        r11 = "x";
        r6 = r80;
        r14 = -5;
        r45 = false;
        r48 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1170:0x177c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1171:0x177d, code lost:
        r28 = r1;
        r14 = r12;
        r27 = r50;
        r50 = r13;
        r1 = r0;
        r6 = r80;
        r4 = null;
        r10 = -5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1172:0x178d, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1173:0x178e, code lost:
        r2 = r93;
        r3 = r6;
        r21 = r8;
        r28 = r8;
        r14 = r82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1174:0x1798, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1175:0x1799, code lost:
        r2 = r93;
        r3 = r6;
        r21 = r8;
        r32 = r5;
        r28 = r8;
        r27 = r50;
        r14 = r82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1176:0x17a7, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1177:0x17a8, code lost:
        r2 = r93;
        r14 = r5;
        r3 = r6;
        r21 = r8;
        r28 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1178:0x17b0, code lost:
        r4 = r0;
        r10 = r3;
        r1 = r14;
        r7 = r5;
        r8 = r28;
        r12 = r7;
        r11 = "x";
        r6 = r80;
        r14 = -5;
        r45 = false;
        r48 = null;
        r50 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1180:0x17c7, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1181:0x17c8, code lost:
        r2 = r93;
        r14 = r5;
        r3 = r6;
        r21 = r8;
        r32 = r5;
        r28 = r8;
        r27 = r50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1182:0x17d4, code lost:
        r1 = r0;
        r18 = r3;
        r6 = r80;
        r4 = null;
        r10 = -5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1183:0x17dc, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1184:0x17dd, code lost:
        r2 = r93;
        r21 = r8;
        r3 = r95;
        r4 = r0;
        r1 = r5;
        r7 = r5;
        r8 = r8;
        r12 = r7;
        r11 = "x";
        r6 = r80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1185:0x17f3, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1186:0x17f4, code lost:
        r2 = r93;
        r14 = r5;
        r21 = r8;
        r32 = r5;
        r28 = r8;
        r27 = r50;
        r1 = r0;
        r6 = r80;
        r4 = null;
        r10 = -5;
        r18 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1187:0x1806, code lost:
        r50 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1188:0x1808, code lost:
        r58 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1189:0x180c, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1190:0x180d, code lost:
        r2 = r93;
        r21 = r8;
        r3 = r95;
        r4 = r0;
        r1 = r5;
        r7 = r5;
        r8 = r8;
        r12 = r7;
        r11 = "x";
        r6 = r80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1191:0x1823, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1192:0x1824, code lost:
        r2 = r93;
        r14 = r5;
        r21 = r8;
        r32 = r5;
        r28 = r8;
        r27 = r50;
        r1 = r0;
        r6 = r80;
        r4 = null;
        r10 = -5;
        r18 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1193:0x1838, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1194:0x1839, code lost:
        r2 = r93;
        r3 = r95;
        r4 = r0;
        r1 = r5;
        r7 = r5;
        r8 = r8;
        r12 = r7;
        r11 = "x";
        r6 = r80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1195:0x184d, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1196:0x184e, code lost:
        r2 = r93;
        r14 = r5;
        r32 = r5;
        r28 = r8;
        r27 = r50;
        r1 = r0;
        r6 = r80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1197:0x185b, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1198:0x185c, code lost:
        r14 = r5;
        r2 = r93;
        r32 = r5;
        r28 = r8;
        r27 = r50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1202:0x1877, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1203:0x1878, code lost:
        r27 = r2;
        r14 = r5;
        r2 = r93;
        r32 = r5;
        r28 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1204:0x1880, code lost:
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x055c, code lost:
        throw new java.lang.RuntimeException("unsupported!!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0116, code lost:
        if (r15.useMatrix == null) goto L581;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x06bc, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x06bd, code lost:
        r3 = r95;
        r4 = r0;
        r10 = r2;
        r2 = r93;
        r50 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x06da, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x06db, code lost:
        r32 = r12;
        r3 = r0;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x06e7, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x06e8, code lost:
        r3 = r95;
        r4 = r0;
        r10 = r2;
        r2 = r93;
        r66 = r12;
        r21 = r11;
        r81 = r38;
        r6 = r39;
        r46 = r11;
        r11 = "x";
        r14 = -5;
        r45 = false;
        r48 = null;
        r50 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0709, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x070a, code lost:
        r32 = r12;
        r3 = r0;
        r2 = r2;
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:683:0x0e54, code lost:
        if (r5.getString(r6).equals("audio/mp4a-latm") == false) goto L1362;
     */
    /* JADX WARN: Code restructure failed: missing block: B:720:0x0f10, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:733:0x0f58, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:734:0x0f59, code lost:
        r28 = r1;
        r58 = r3;
        r14 = r12;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1037:0x14d7  */
    /* JADX WARN: Removed duplicated region for block: B:1041:0x14e3  */
    /* JADX WARN: Removed duplicated region for block: B:1042:0x14e6  */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x14eb  */
    /* JADX WARN: Removed duplicated region for block: B:1053:0x1517 A[Catch: all -> 0x1525, Exception -> 0x153c, TryCatch #184 {Exception -> 0x153c, all -> 0x1525, blocks: (B:1049:0x14f3, B:1051:0x14f7, B:1053:0x1517, B:1055:0x1520, B:1067:0x1557), top: B:1484:0x14f3 }] */
    /* JADX WARN: Removed duplicated region for block: B:1062:0x1546  */
    /* JADX WARN: Removed duplicated region for block: B:1063:0x154d  */
    /* JADX WARN: Removed duplicated region for block: B:1092:0x15a0  */
    /* JADX WARN: Removed duplicated region for block: B:1095:0x15aa A[Catch: all -> 0x15c0, Exception -> 0x15c2, TryCatch #134 {Exception -> 0x15c2, all -> 0x15c0, blocks: (B:1089:0x1594, B:1093:0x15a4, B:1095:0x15aa, B:1097:0x15ae, B:1098:0x15b3), top: B:1582:0x1594 }] */
    /* JADX WARN: Removed duplicated region for block: B:1100:0x15bb  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:1221:0x18c5  */
    /* JADX WARN: Removed duplicated region for block: B:1224:0x18cb  */
    /* JADX WARN: Removed duplicated region for block: B:1238:0x1914 A[Catch: all -> 0x1920, TRY_LEAVE, TryCatch #0 {all -> 0x1920, blocks: (B:1236:0x190b, B:1238:0x1914), top: B:1365:0x190b }] */
    /* JADX WARN: Removed duplicated region for block: B:1258:0x195d  */
    /* JADX WARN: Removed duplicated region for block: B:1264:0x1992 A[Catch: all -> 0x1981, TryCatch #68 {all -> 0x1981, blocks: (B:1260:0x197c, B:1264:0x1992, B:1266:0x1999, B:1268:0x19a2, B:1269:0x19a5), top: B:1417:0x197c }] */
    /* JADX WARN: Removed duplicated region for block: B:1266:0x1999 A[Catch: all -> 0x1981, TryCatch #68 {all -> 0x1981, blocks: (B:1260:0x197c, B:1264:0x1992, B:1266:0x1999, B:1268:0x19a2, B:1269:0x19a5), top: B:1417:0x197c }] */
    /* JADX WARN: Removed duplicated region for block: B:1268:0x19a2 A[Catch: all -> 0x1981, TryCatch #68 {all -> 0x1981, blocks: (B:1260:0x197c, B:1264:0x1992, B:1266:0x1999, B:1268:0x19a2, B:1269:0x19a5), top: B:1417:0x197c }] */
    /* JADX WARN: Removed duplicated region for block: B:1273:0x19b5  */
    /* JADX WARN: Removed duplicated region for block: B:1303:0x1a4b  */
    /* JADX WARN: Removed duplicated region for block: B:1320:0x1a81  */
    /* JADX WARN: Removed duplicated region for block: B:1322:0x1a8d  */
    /* JADX WARN: Removed duplicated region for block: B:1377:0x082d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1381:0x19d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1385:0x19de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1388:0x0b00 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1394:0x0df4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1396:0x0af8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1400:0x1a52 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1405:0x0262 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1417:0x197c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1421:0x19d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1423:0x19cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1431:0x1a6a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1434:0x1a74 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1436:0x1a6f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1442:0x1a65 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1450:0x19bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1484:0x14f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1516:0x0e38 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1529:0x02f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1558:0x0c61 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1564:0x0fae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1568:0x1564 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1572:0x0b8f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1574:0x14c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1614:0x13b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1615:0x139a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x07ee A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x084d A[Catch: all -> 0x0832, TryCatch #11 {all -> 0x0832, blocks: (B:395:0x082d, B:399:0x084d, B:401:0x0853, B:403:0x085c, B:404:0x085f), top: B:1377:0x082d }] */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0853 A[Catch: all -> 0x0832, TryCatch #11 {all -> 0x0832, blocks: (B:395:0x082d, B:399:0x084d, B:401:0x0853, B:403:0x085c, B:404:0x085f), top: B:1377:0x082d }] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x085c A[Catch: all -> 0x0832, TryCatch #11 {all -> 0x0832, blocks: (B:395:0x082d, B:399:0x084d, B:401:0x0853, B:403:0x085c, B:404:0x085f), top: B:1377:0x082d }] */
    /* JADX WARN: Removed duplicated region for block: B:455:0x09e6  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0b20  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0b6c A[Catch: all -> 0x0b05, Exception -> 0x0b47, TRY_ENTER, TryCatch #167 {all -> 0x0b05, blocks: (B:534:0x0b00, B:544:0x0b22, B:552:0x0b6c, B:554:0x0b72, B:560:0x0b97, B:565:0x0bab), top: B:1388:0x0b00 }] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0bdf  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0bea A[Catch: all -> 0x0bcf, Exception -> 0x0bd8, TryCatch #139 {Exception -> 0x0bd8, all -> 0x0bcf, blocks: (B:558:0x0b8f, B:563:0x0ba3, B:568:0x0bb3, B:570:0x0bbb, B:586:0x0bea, B:592:0x0bfc), top: B:1572:0x0b8f }] */
    /* JADX WARN: Removed duplicated region for block: B:594:0x0c02  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x0cb9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:621:0x0cc1 A[Catch: all -> 0x0d15, Exception -> 0x0d32, TRY_LEAVE, TryCatch #131 {Exception -> 0x0d32, all -> 0x0d15, blocks: (B:619:0x0cbb, B:621:0x0cc1), top: B:1588:0x0cbb }] */
    /* JADX WARN: Removed duplicated region for block: B:638:0x0d71  */
    /* JADX WARN: Removed duplicated region for block: B:660:0x0ddd  */
    /* JADX WARN: Removed duplicated region for block: B:674:0x0e1d  */
    /* JADX WARN: Removed duplicated region for block: B:692:0x0e74  */
    /* JADX WARN: Removed duplicated region for block: B:694:0x0e77  */
    /* JADX WARN: Removed duplicated region for block: B:717:0x0f01  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x0f26  */
    /* JADX WARN: Removed duplicated region for block: B:738:0x0f69  */
    /* JADX WARN: Removed duplicated region for block: B:739:0x0f6b  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x0f8e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:756:0x0fda  */
    /* JADX WARN: Removed duplicated region for block: B:758:0x0fde  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:816:0x110e  */
    /* JADX WARN: Removed duplicated region for block: B:829:0x1159  */
    /* JADX WARN: Removed duplicated region for block: B:833:0x1179 A[ADDED_TO_REGION, EDGE_INSN: B:833:0x1179->B:1613:0x117c ?: BREAK  ] */
    /* JADX WARN: Removed duplicated region for block: B:839:0x11a0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x029a A[Catch: all -> 0x0267, Exception -> 0x0271, TRY_ENTER, TRY_LEAVE, TryCatch #53 {all -> 0x0267, blocks: (B:74:0x0262, B:83:0x029a, B:84:0x02b1), top: B:1405:0x0262 }] */
    /* JADX WARN: Removed duplicated region for block: B:840:0x11af  */
    /* JADX WARN: Removed duplicated region for block: B:844:0x11c0  */
    /* JADX WARN: Removed duplicated region for block: B:846:0x11d5  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:960:0x138f  */
    /* JADX WARN: Removed duplicated region for block: B:961:0x1391  */
    /* JADX WARN: Type inference failed for: r1v114, types: [org.telegram.messenger.video.MP4Builder] */
    /* JADX WARN: Type inference failed for: r1v122 */
    /* JADX WARN: Type inference failed for: r1v126 */
    /* JADX WARN: Type inference failed for: r1v246 */
    /* JADX WARN: Type inference failed for: r1v247 */
    /* JADX WARN: Type inference failed for: r1v77 */
    /* JADX WARN: Type inference failed for: r1v83 */
    /* JADX WARN: Type inference failed for: r3v1, types: [long] */
    /* JADX WARN: Type inference failed for: r3v103 */
    /* JADX WARN: Type inference failed for: r3v125 */
    /* JADX WARN: Type inference failed for: r3v126 */
    /* JADX WARN: Type inference failed for: r3v130 */
    /* JADX WARN: Type inference failed for: r3v95 */
    /* JADX WARN: Type inference failed for: r3v96, types: [int] */
    /* JADX WARN: Type inference failed for: r3v97 */
    /* JADX WARN: Type inference failed for: r3v99 */
    /* JADX WARN: Type inference failed for: r58v17 */
    /* JADX WARN: Type inference failed for: r58v18 */
    /* JADX WARN: Type inference failed for: r58v31 */
    /* JADX WARN: Type inference failed for: r5v42, types: [android.media.MediaExtractor] */
    /* JADX WARN: Type inference failed for: r5v46, types: [float] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean convertVideoInternal(org.telegram.messenger.video.MediaCodecVideoConvertor.ConvertVideoParams r94, boolean r95, int r96) {
        /*
            Method dump skipped, instructions count: 6956
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
        FileLog.m102d("source size " + i + "x" + i2 + "    dest size " + i3 + i4 + "   kernelRadius " + min);
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
        long avatarStartTime;
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
        boolean isPhoto;
        boolean isRound;
        boolean isSecret;
        boolean isStory;
        ArrayList<VideoEditedInfo.MediaEntity> mediaEntities;
        boolean muted;
        boolean needCompress;
        int originalBitrate;
        int originalHeight;
        int originalWidth;
        String paintPath;
        ArrayList<StoryEntry.Part> parts;
        int resultHeight;
        int resultWidth;
        int rotationValue;
        MediaController.SavedFilterState savedFilterState;
        public ArrayList<MixedSoundInfo> soundInfos = new ArrayList<>();
        long startTime;
        String videoPath;

        private ConvertVideoParams() {
        }

        /* renamed from: of */
        public static ConvertVideoParams m78of(String str, File file, int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j, long j2, long j3, boolean z2, long j4, MediaController.SavedFilterState savedFilterState, String str2, String str3, ArrayList<VideoEditedInfo.MediaEntity> arrayList, boolean z3, MediaController.CropState cropState, boolean z4, MediaController.VideoConvertorListener videoConvertorListener, Integer num, Integer num2, boolean z5, boolean z6, StoryEntry.HDRInfo hDRInfo, ArrayList<StoryEntry.Part> arrayList2) {
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
            convertVideoParams.savedFilterState = savedFilterState;
            convertVideoParams.paintPath = str2;
            convertVideoParams.blurPath = str3;
            convertVideoParams.mediaEntities = arrayList;
            convertVideoParams.isPhoto = z3;
            convertVideoParams.cropState = cropState;
            convertVideoParams.isRound = z4;
            convertVideoParams.callback = videoConvertorListener;
            convertVideoParams.gradientTopColor = num;
            convertVideoParams.gradientBottomColor = num2;
            convertVideoParams.muted = z5;
            convertVideoParams.isStory = z6;
            convertVideoParams.hdrInfo = hDRInfo;
            convertVideoParams.parts = arrayList2;
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
