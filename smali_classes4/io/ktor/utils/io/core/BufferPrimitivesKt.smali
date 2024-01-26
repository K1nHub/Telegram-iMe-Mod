.class public final Lio/ktor/utils/io/core/BufferPrimitivesKt;
.super Ljava/lang/Object;
.source "BufferPrimitives.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 6 MemoryPrimitives.kt\nio/ktor/utils/io/bits/MemoryPrimitivesKt\n+ 7 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 9 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 10 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,721:1\n687#1,7:731\n694#1,5:743\n699#1:749\n702#1:752\n687#1,7:753\n694#1,5:765\n699#1:772\n702#1:775\n687#1,7:776\n694#1,5:788\n699#1:794\n702#1:797\n687#1,7:798\n694#1,5:810\n699#1:817\n702#1:820\n687#1,7:821\n694#1,5:833\n699#1:839\n702#1:842\n687#1,7:843\n694#1,5:855\n699#1:862\n702#1:865\n687#1,7:866\n694#1,5:878\n699#1:884\n702#1:887\n687#1,7:888\n694#1,5:900\n699#1:906\n702#1:909\n708#1,5:910\n713#1,5:920\n718#1:927\n720#1:930\n708#1,5:931\n713#1,5:941\n718#1:949\n720#1:952\n708#1,5:953\n713#1,5:963\n718#1:970\n720#1:973\n708#1,5:974\n713#1,5:984\n718#1:992\n720#1:995\n708#1,5:996\n713#1,5:1006\n718#1:1013\n720#1:1016\n708#1,5:1017\n713#1,5:1027\n718#1:1035\n720#1:1038\n708#1,5:1039\n713#1,5:1049\n718#1:1056\n720#1:1059\n708#1,5:1060\n713#1,5:1070\n718#1:1077\n720#1:1080\n687#1,7:1081\n694#1,5:1093\n699#1:1100\n702#1:1103\n708#1,5:1107\n713#1,5:1117\n718#1:1130\n720#1:1133\n687#1,7:1134\n694#1,6:1146\n702#1:1154\n708#1,5:1157\n713#1,6:1167\n720#1:1175\n687#1,7:1176\n694#1,6:1188\n702#1:1196\n708#1,5:1199\n713#1,6:1209\n720#1:1217\n687#1,7:1218\n694#1,6:1230\n702#1:1238\n708#1,5:1241\n713#1,6:1251\n720#1:1259\n687#1,7:1260\n694#1,6:1272\n702#1:1280\n708#1,5:1283\n713#1,6:1293\n720#1:1301\n687#1,7:1302\n694#1,6:1314\n702#1:1322\n708#1,5:1325\n713#1,6:1335\n720#1:1343\n687#1,7:1345\n694#1,6:1357\n702#1:1365\n687#1,7:1370\n694#1,6:1382\n702#1:1390\n708#1,5:1393\n713#1,6:1403\n720#1:1411\n708#1,5:1416\n713#1,6:1426\n720#1:1434\n365#2,5:722\n370#2,2:729\n365#2,5:738\n370#2,2:750\n365#2,5:760\n370#2,2:773\n365#2,5:783\n370#2,2:795\n365#2,5:805\n370#2,2:818\n365#2,5:828\n370#2,2:840\n365#2,5:850\n370#2,2:863\n365#2,5:873\n370#2,2:885\n365#2,5:895\n370#2,2:907\n382#2,5:915\n387#2,2:928\n382#2,5:936\n387#2,2:950\n382#2,5:958\n387#2,2:971\n382#2,5:979\n387#2,2:993\n382#2,5:1001\n387#2,2:1014\n382#2,5:1022\n387#2,2:1036\n382#2,5:1044\n387#2,2:1057\n382#2,5:1065\n387#2,2:1078\n365#2,5:1088\n370#2,2:1101\n350#2:1105\n382#2,5:1112\n387#2,2:1131\n365#2,5:1141\n370#2,2:1152\n350#2:1155\n382#2,5:1162\n387#2,2:1173\n365#2,5:1183\n370#2,2:1194\n350#2:1197\n382#2,5:1204\n387#2,2:1215\n365#2,5:1225\n370#2,2:1236\n350#2:1239\n382#2,5:1246\n387#2,2:1257\n365#2,5:1267\n370#2,2:1278\n350#2:1281\n382#2,5:1288\n387#2,2:1299\n365#2,5:1309\n370#2,2:1320\n350#2:1323\n382#2,5:1330\n387#2,2:1341\n365#2,5:1352\n370#2,2:1363\n350#2:1367\n365#2,5:1377\n370#2,2:1388\n382#2,5:1398\n387#2,2:1409\n382#2,5:1421\n387#2,2:1432\n365#2,7:1435\n382#2,7:1442\n81#3:727\n26#4:728\n8#5:748\n8#5:771\n16#5:793\n16#5:816\n24#5:838\n24#5:861\n32#5:883\n40#5:905\n65#5,2:925\n65#5,2:947\n51#5,2:968\n51#5,2:990\n79#5,2:1011\n79#5,2:1033\n93#5,2:1054\n107#5,2:1075\n28#6:770\n68#6:815\n108#6:860\n38#6:946\n78#6:989\n118#6:1032\n15#7,2:1098\n282#7:1122\n283#7,3:1127\n1#8:1104\n66#9:1106\n66#9:1156\n66#9:1198\n66#9:1240\n66#9:1282\n66#9:1324\n71#9:1344\n71#9:1366\n71#9:1368\n66#9:1369\n71#9:1391\n66#9:1392\n66#9:1412\n66#9:1413\n71#9:1414\n71#9:1415\n17#10,4:1123\n*S KotlinDebug\n*F\n+ 1 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n43#1:731,7\n43#1:743,5\n43#1:749\n43#1:752\n53#1:753,7\n53#1:765,5\n53#1:772\n53#1:775\n63#1:776,7\n63#1:788,5\n63#1:794\n63#1:797\n73#1:798,7\n73#1:810,5\n73#1:817\n73#1:820\n83#1:821,7\n83#1:833,5\n83#1:839\n83#1:842\n93#1:843,7\n93#1:855,5\n93#1:862\n93#1:865\n103#1:866,7\n103#1:878,5\n103#1:884\n103#1:887\n113#1:888,7\n113#1:900,5\n113#1:906\n113#1:909\n123#1:910,5\n123#1:920,5\n123#1:927\n123#1:930\n134#1:931,5\n134#1:941,5\n134#1:949\n134#1:952\n144#1:953,5\n144#1:963,5\n144#1:970\n144#1:973\n154#1:974,5\n154#1:984,5\n154#1:992\n154#1:995\n164#1:996,5\n164#1:1006,5\n164#1:1013\n164#1:1016\n174#1:1017,5\n174#1:1027,5\n174#1:1035\n174#1:1038\n185#1:1039,5\n185#1:1049,5\n185#1:1056\n185#1:1059\n199#1:1060,5\n199#1:1070,5\n199#1:1077\n199#1:1080\n212#1:1081,7\n212#1:1093,5\n212#1:1100\n212#1:1103\n280#1:1107,5\n280#1:1117,5\n280#1:1130\n280#1:1133\n302#1:1134,7\n302#1:1146,6\n302#1:1154\n364#1:1157,5\n364#1:1167,6\n364#1:1175\n383#1:1176,7\n383#1:1188,6\n383#1:1196\n437#1:1199,5\n437#1:1209,6\n437#1:1217\n456#1:1218,7\n456#1:1230,6\n456#1:1238\n514#1:1241,5\n514#1:1251,6\n514#1:1259\n533#1:1260,7\n533#1:1272,6\n533#1:1280\n569#1:1283,5\n569#1:1293,6\n569#1:1301\n579#1:1302,7\n579#1:1314,6\n579#1:1322\n615#1:1325,5\n615#1:1335,6\n615#1:1343\n628#1:1345,7\n628#1:1357,6\n628#1:1365\n645#1:1370,7\n645#1:1382,6\n645#1:1390\n659#1:1393,5\n659#1:1403,6\n659#1:1411\n678#1:1416,5\n678#1:1426,6\n678#1:1434\n13#1:722,5\n13#1:729,2\n43#1:738,5\n43#1:750,2\n53#1:760,5\n53#1:773,2\n63#1:783,5\n63#1:795,2\n73#1:805,5\n73#1:818,2\n83#1:828,5\n83#1:840,2\n93#1:850,5\n93#1:863,2\n103#1:873,5\n103#1:885,2\n113#1:895,5\n113#1:907,2\n123#1:915,5\n123#1:928,2\n134#1:936,5\n134#1:950,2\n144#1:958,5\n144#1:971,2\n154#1:979,5\n154#1:993,2\n164#1:1001,5\n164#1:1014,2\n174#1:1022,5\n174#1:1036,2\n185#1:1044,5\n185#1:1057,2\n199#1:1065,5\n199#1:1078,2\n212#1:1088,5\n212#1:1101,2\n247#1:1105\n280#1:1112,5\n280#1:1131,2\n302#1:1141,5\n302#1:1152,2\n336#1:1155\n364#1:1162,5\n364#1:1173,2\n383#1:1183,5\n383#1:1194,2\n413#1:1197\n437#1:1204,5\n437#1:1215,2\n456#1:1225,5\n456#1:1236,2\n486#1:1239\n514#1:1246,5\n514#1:1257,2\n533#1:1267,5\n533#1:1278,2\n558#1:1281\n569#1:1288,5\n569#1:1299,2\n579#1:1309,5\n579#1:1320,2\n604#1:1323\n615#1:1330,5\n615#1:1341,2\n628#1:1352,5\n628#1:1363,2\n641#1:1367\n645#1:1377,5\n645#1:1388,2\n659#1:1398,5\n659#1:1409,2\n678#1:1421,5\n678#1:1432,2\n693#1:1435,7\n712#1:1442,7\n15#1:727\n15#1:728\n44#1:748\n54#1:771\n64#1:793\n74#1:816\n84#1:838\n94#1:861\n104#1:883\n114#1:905\n124#1:925,2\n135#1:947,2\n145#1:968,2\n155#1:990,2\n165#1:1011,2\n175#1:1033,2\n186#1:1054,2\n200#1:1075,2\n54#1:770\n74#1:815\n94#1:860\n135#1:946\n155#1:989\n175#1:1032\n213#1:1098,2\n281#1:1122\n281#1:1127,3\n248#1:1106\n337#1:1156\n414#1:1198\n487#1:1240\n559#1:1282\n605#1:1324\n626#1:1344\n624#1:1366\n643#1:1368\n643#1:1369\n640#1:1391\n657#1:1392\n671#1:1412\n672#1:1413\n674#1:1414\n675#1:1415\n281#1:1123,4\n*E\n"
.end annotation


# direct methods
.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v2, p3, :cond_0

    .line 15
    invoke-static {v0, p1, v1, p3, p2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 214
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 370
    invoke-virtual {p0, p3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    return-void

    .line 695
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not enough bytes to read a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "byte array"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " of size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readInt(Lio/ktor/utils/io/core/Buffer;)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 370
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 702
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 695
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough bytes to read a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "regular integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readLong(Lio/ktor/utils/io/core/Buffer;)J
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 370
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 702
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 695
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough bytes to read a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "long integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readShort(Lio/ktor/utils/io/core/Buffer;)S
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 370
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 702
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    .line 695
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough bytes to read a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "short integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v2, p3, :cond_0

    .line 20
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string/jumbo p2, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    .line 283
    invoke-static {p1, v0, p2, p3, v1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 387
    invoke-virtual {p0, p3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return-void

    .line 715
    :cond_0
    new-instance p0, Lio/ktor/utils/io/core/InsufficientSpaceException;

    const-string p1, "byte array"

    invoke-direct {p0, p1, p3, v2}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method public static final writeInt(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 51
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return-void

    .line 715
    :cond_0
    new-instance p0, Lio/ktor/utils/io/core/InsufficientSpaceException;

    const-string/jumbo p1, "regular integer"

    invoke-direct {p0, p1, v3, v2}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method public static final writeLong(Lio/ktor/utils/io/core/Buffer;J)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 79
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return-void

    .line 715
    :cond_0
    new-instance p0, Lio/ktor/utils/io/core/InsufficientSpaceException;

    const-string/jumbo p1, "long integer"

    invoke-direct {p0, p1, v3, v2}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw p0
.end method

.method public static final writeShort(Lio/ktor/utils/io/core/Buffer;S)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 65
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {p0, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    return-void

    .line 715
    :cond_0
    new-instance p0, Lio/ktor/utils/io/core/InsufficientSpaceException;

    const-string/jumbo p1, "short integer"

    invoke-direct {p0, p1, v3, v2}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw p0
.end method
