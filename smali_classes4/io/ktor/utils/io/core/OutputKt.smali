.class public final Lio/ktor/utils/io/core/OutputKt;
.super Ljava/lang/Object;
.source "Output.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,554:1\n507#1,4:555\n470#1,4:559\n511#1:563\n512#1,4:565\n474#1,6:569\n517#1:575\n543#1,4:576\n488#1,6:580\n547#1:586\n548#1,4:588\n494#1,7:592\n553#1:599\n543#1,4:600\n488#1,6:604\n547#1:610\n548#1,4:612\n494#1,7:616\n553#1:623\n543#1,4:624\n488#1,6:628\n547#1:634\n548#1,4:636\n494#1,7:640\n553#1:647\n543#1,4:648\n488#1,6:652\n547#1:658\n548#1,4:660\n494#1,7:664\n553#1:671\n543#1,4:672\n488#1,6:676\n547#1:682\n548#1,4:684\n494#1,7:688\n553#1:695\n507#1,4:696\n470#1,4:700\n511#1:704\n512#1,4:706\n474#1,6:710\n517#1:716\n524#1,4:718\n470#1,4:722\n528#1:726\n529#1,5:728\n474#1,6:733\n535#1:739\n470#1,4:740\n474#1,6:745\n470#1,4:751\n474#1,6:756\n470#1,4:762\n474#1,6:767\n488#1,6:773\n494#1,7:780\n71#2:564\n71#2:587\n71#2:611\n71#2:635\n71#2:659\n71#2:683\n71#2:705\n66#2:717\n71#2:727\n71#2:744\n71#2:755\n71#2:766\n71#2:779\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n403#1:555,4\n403#1:559,4\n403#1:563\n403#1:565,4\n403#1:569,6\n403#1:575\n409#1:576,4\n409#1:580,6\n409#1:586\n409#1:588,4\n409#1:592,7\n409#1:599\n415#1:600,4\n415#1:604,6\n415#1:610\n415#1:612,4\n415#1:616,7\n415#1:623\n421#1:624,4\n421#1:628,6\n421#1:634\n421#1:636,4\n421#1:640,7\n421#1:647\n427#1:648,4\n427#1:652,6\n427#1:658\n427#1:660,4\n427#1:664,7\n427#1:671\n433#1:672,4\n433#1:676,6\n433#1:682\n433#1:684,4\n433#1:688,7\n433#1:695\n439#1:696,4\n439#1:700,4\n439#1:704\n439#1:706,4\n439#1:710,6\n439#1:716\n449#1:718,4\n449#1:722,4\n449#1:726\n449#1:728,5\n449#1:733,6\n449#1:739\n456#1:740,4\n456#1:745,6\n510#1:751,4\n510#1:756,6\n527#1:762,4\n527#1:767,6\n546#1:773,6\n546#1:780,7\n403#1:564\n409#1:587\n415#1:611\n421#1:635\n427#1:659\n433#1:683\n439#1:705\n438#1:717\n449#1:727\n457#1:744\n511#1:755\n528#1:766\n547#1:779\n*E\n"
.end annotation


# direct methods
.method public static final writeFully(Lio/ktor/utils/io/core/Output;[BII)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 71
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 511
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 404
    invoke-static {v1, p1, p2, v2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    if-lez p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 474
    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 402
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    return-void
.end method
