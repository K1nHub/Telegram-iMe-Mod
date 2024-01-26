.class public final Lio/ktor/utils/io/core/StringsKt;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 3 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 11 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n1#1,461:1\n340#1:619\n340#1:620\n38#2:462\n843#3,8:463\n853#3,3:472\n857#3,11:553\n868#3,15:565\n815#3,6:580\n821#3,13:606\n815#3,6:637\n821#3,13:665\n843#3,8:678\n853#3,3:687\n857#3,11:770\n868#3,15:782\n843#3,8:797\n853#3,3:806\n857#3,11:887\n868#3,15:899\n66#4:471\n56#4:564\n66#4:643\n66#4:664\n66#4:686\n66#4:690\n66#4:769\n56#4:781\n66#4:805\n56#4:898\n121#5,5:475\n126#5,2:485\n128#5,61:489\n191#5:552\n9#5:586\n10#5,2:592\n12#5,7:596\n21#5:605\n9#5:644\n10#5,2:650\n12#5,7:654\n21#5:663\n121#5,5:691\n126#5,2:701\n128#5,61:705\n191#5:768\n121#5,5:809\n126#5,2:819\n128#5,61:823\n191#5:886\n365#6,5:480\n370#6,2:550\n365#6,5:587\n370#6,2:603\n365#6,5:645\n370#6,2:661\n365#6,5:696\n370#6,2:766\n365#6,5:814\n370#6,2:884\n81#7:487\n81#7:594\n81#7:652\n81#7:703\n81#7:821\n26#8:488\n26#8:595\n26#8:653\n26#8:704\n26#8:822\n1#9:621\n89#10,2:622\n488#11,13:624\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n152#1:619\n154#1:620\n30#1:462\n55#1:463,8\n55#1:472,3\n55#1:553,11\n55#1:565,15\n122#1:580,6\n122#1:606,13\n346#1:637,6\n346#1:665,13\n385#1:678,8\n385#1:687,3\n385#1:770,11\n385#1:782,15\n424#1:797,8\n424#1:806,3\n424#1:887,11\n424#1:899,15\n55#1:471\n55#1:564\n347#1:643\n360#1:664\n385#1:686\n386#1:690\n400#1:769\n385#1:781\n424#1:805\n424#1:898\n57#1:475,5\n57#1:485,2\n57#1:489,61\n57#1:552\n123#1:586\n123#1:592,2\n123#1:596,7\n123#1:605\n349#1:644\n349#1:650,2\n349#1:654,7\n349#1:663\n388#1:691,5\n388#1:701,2\n388#1:705,61\n388#1:768\n425#1:809,5\n425#1:819,2\n425#1:823,61\n425#1:886\n57#1:480,5\n57#1:550,2\n123#1:587,5\n123#1:603,2\n349#1:645,5\n349#1:661,2\n388#1:696,5\n388#1:766,2\n425#1:814,5\n425#1:884,2\n57#1:487\n123#1:594\n349#1:652\n388#1:703\n425#1:821\n57#1:488\n123#1:595\n349#1:653\n388#1:704\n425#1:822\n166#1:622,2\n319#1:624,13\n*E\n"
.end annotation


# direct methods
.method public static final prematureEndOfStream(I)Ljava/lang/Void;
    .locals 3

    .line 453
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 168
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    :goto_0
    return-object v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Input;)[B
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 180
    invoke-static {p0, v0, v0, v1, v2}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Input;I)[B
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {p0, p1, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf(Lio/ktor/utils/io/core/Input;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B
    .locals 2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 166
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    long-to-int p1, p1

    goto :goto_0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to convert to a ByteArray: packet is too big"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readBytesOf(Lio/ktor/utils/io/core/Input;II)[B
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    if-nez p1, :cond_0

    .line 187
    sget-object p0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 189
    new-array p2, p1, [B

    invoke-static {p0, p2, v0, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    move-object p0, p2

    goto :goto_1

    :cond_1
    int-to-long v1, p2

    .line 191
    invoke-static {p0}, Lio/ktor/utils/io/charsets/EncodingKt;->sizeEstimate(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    :cond_2
    :goto_0
    const-string v2, "copyOf(this, newSize)"

    if-ge v0, p2, :cond_3

    .line 195
    array-length v3, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v0

    .line 196
    invoke-static {p0, v1, v0, v3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[BII)I

    move-result v3

    if-lez v3, :cond_3

    add-int/2addr v0, v3

    .line 199
    array-length v3, v1

    if-ne v3, v0, :cond_2

    mul-int/lit8 v3, v0, 0x2

    .line 200
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-lt v0, p1, :cond_5

    .line 208
    array-length p0, v1

    if-ne v0, p0, :cond_4

    move-object p0, v1

    goto :goto_1

    :cond_4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    .line 205
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough bytes available to read "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more required"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic readBytesOf$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    .line 186
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf(Lio/ktor/utils/io/core/Input;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static final writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v0, :cond_0

    .line 295
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V

    return-void

    .line 298
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p4

    const-string v0, "charset.newEncoder()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    return-void
.end method

.method public static synthetic writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 291
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 292
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 288
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    return-void
.end method

.method private static final writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 320
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 321
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    .line 322
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 324
    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I

    move-result v2

    invoke-static {v2}, Lio/ktor/utils/io/core/internal/EncodeResult;->component1-Mh2AYeg(I)S

    move-result v3

    invoke-static {v2}, Lio/ktor/utils/io/core/internal/EncodeResult;->component2-Mh2AYeg(I)S

    move-result v2

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr p2, v3

    and-int/2addr v2, v4

    .line 327
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    if-nez v3, :cond_0

    if-ge p2, p3, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :cond_0
    if-ge p2, p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_2

    .line 495
    invoke-static {p0, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 498
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
.end method
