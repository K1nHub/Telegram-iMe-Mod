.class public final Lio/ktor/utils/io/charsets/EncodingKt;
.super Ljava/lang/Object;
.source "Encoding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n1#1,212:1\n12#2,11:213\n12#2,11:224\n12#2,11:256\n488#3,13:235\n470#3,4:267\n474#3,6:273\n488#3,6:279\n494#3,7:287\n66#4:248\n71#4:271\n71#4:272\n71#4:285\n71#4:286\n217#5,7:249\n*S KotlinDebug\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n*L\n61#1:213,11\n65#1:224,11\n152#1:256,11\n73#1:235,13\n170#1:267,4\n170#1:273,6\n195#1:279,6\n195#1:287,7\n147#1:248\n171#1:271\n177#1:272\n196#1:285\n200#1:286\n148#1:249,7\n*E\n"
.end annotation


# direct methods
.method private static final encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    invoke-static {p1, v0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    .line 71
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 172
    invoke-static {p0, v1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeComplete(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Buffer;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    .line 71
    :goto_1
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v6

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    if-lez v3, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_2

    .line 474
    invoke-static {p1, v0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    return v4

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method public static final encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-lt p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 488
    invoke-static {p1, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    move v3, v0

    .line 71
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 197
    invoke-static {p0, p2, p3, p4, v1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Buffer;)I

    move-result v5

    if-ltz v5, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    if-eqz v6, :cond_5

    add-int/2addr p3, v5

    .line 71
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v6

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    if-lt p3, p4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    if-nez v5, :cond_3

    const/16 v4, 0x8

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-lez v4, :cond_4

    .line 495
    invoke-static {p1, v4, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 498
    :cond_4
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 209
    invoke-static {p0, p1}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I

    move-result p0

    add-int/2addr v3, p0

    return v3

    :cond_5
    :try_start_1
    const-string p0, "Check failed."

    .line 198
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 498
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p0
.end method

.method public static final sizeEstimate(Lio/ktor/utils/io/core/Input;)J
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    instance-of v0, p0, Lio/ktor/utils/io/core/ByteReadPacket;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
