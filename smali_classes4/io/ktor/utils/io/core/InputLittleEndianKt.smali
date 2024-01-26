.class public final Lio/ktor/utils/io/core/InputLittleEndianKt;
.super Ljava/lang/Object;
.source "InputLittleEndian.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputLittleEndian.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputLittleEndian.kt\nio/ktor/utils/io/core/InputLittleEndianKt\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,302:1\n297#1,3:303\n297#1,3:307\n297#1,3:311\n297#1,3:315\n297#1,3:325\n289#1:335\n289#1:337\n289#1:339\n289#1:341\n289#1:349\n289#1:357\n289#1:359\n289#1:361\n289#1:363\n289#1:371\n9#2:306\n15#2:310\n21#2:314\n30#2:318\n29#2:319\n28#2,5:320\n41#2:328\n40#2:329\n39#2,5:330\n9#2:336\n15#2:338\n21#2:340\n30#2:342\n29#2:343\n28#2,5:344\n41#2:350\n40#2:351\n39#2,5:352\n9#2:358\n15#2:360\n21#2:362\n30#2:364\n29#2:365\n28#2,5:366\n41#2:372\n40#2:373\n39#2,5:374\n9#2:379\n15#2:380\n21#2:381\n30#2:382\n29#2:383\n28#2,5:384\n41#2:389\n40#2:390\n39#2,5:391\n9#2:396\n15#2:397\n21#2:398\n30#2:399\n29#2:400\n28#2,5:401\n41#2:406\n40#2:407\n39#2,5:408\n9#2:413\n15#2:414\n21#2:415\n30#2:416\n29#2:417\n28#2,5:418\n41#2:423\n40#2:424\n39#2,5:425\n9#2:430\n15#2:431\n21#2:432\n30#2:433\n29#2:434\n28#2,5:435\n41#2:440\n40#2:441\n39#2,5:442\n*S KotlinDebug\n*F\n+ 1 InputLittleEndian.kt\nio/ktor/utils/io/core/InputLittleEndianKt\n*L\n8#1:303,3\n11#1:307,3\n14#1:311,3\n17#1:315,3\n20#1:325,3\n22#1:335\n24#1:337\n26#1:339\n28#1:341\n30#1:349\n32#1:357\n34#1:359\n36#1:361\n38#1:363\n40#1:371\n8#1:306\n11#1:310\n14#1:314\n17#1:318\n17#1:319\n17#1:320,5\n20#1:328\n20#1:329\n20#1:330,5\n22#1:336\n24#1:338\n26#1:340\n28#1:342\n28#1:343\n28#1:344,5\n30#1:350\n30#1:351\n30#1:352,5\n32#1:358\n34#1:360\n36#1:362\n38#1:364\n38#1:365\n38#1:366,5\n40#1:372\n40#1:373\n40#1:374,5\n51#1:379\n64#1:380\n77#1:381\n85#1:382\n85#1:383\n85#1:384,5\n93#1:389\n93#1:390\n93#1:391,5\n107#1:396\n123#1:397\n139#1:398\n150#1:399\n150#1:400\n150#1:401,5\n161#1:406\n161#1:407\n161#1:408,5\n176#1:413\n189#1:414\n202#1:415\n210#1:416\n210#1:417\n210#1:418,5\n218#1:423\n218#1:424\n218#1:425,5\n231#1:430\n245#1:431\n260#1:432\n271#1:433\n271#1:434\n271#1:435,5\n282#1:440\n282#1:441\n282#1:442,5\n*E\n"
.end annotation


# direct methods
.method public static final readIntLittleEndian(Lio/ktor/utils/io/core/Input;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static final readLongLittleEndian(Lio/ktor/utils/io/core/Input;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method
