.class public final Lio/ktor/util/Base64Kt;
.super Ljava/lang/Object;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nio/ktor/util/Base64Kt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n+ 5 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,111:1\n107#1:123\n107#1:124\n110#1:157\n12#2,11:112\n12#2,7:132\n19#2,4:143\n12#2,7:147\n19#2,4:159\n1#3:125\n10#4,6:126\n384#5,4:139\n13097#6,3:154\n13100#6:158\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nio/ktor/util/Base64Kt\n*L\n45#1:123\n61#1:124\n96#1:157\n23#1:112,11\n82#1:132,7\n82#1:143,4\n89#1:147,7\n89#1:159,4\n77#1:126,6\n83#1:139,4\n95#1:154,3\n95#1:158\n*E\n"
.end annotation


# static fields
.field private static final BASE64_INVERSE_ALPHABET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-char v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 17
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    sput-object v1, Lio/ktor/util/Base64Kt;->BASE64_INVERSE_ALPHABET:[I

    return-void
.end method

.method public static final synthetic access$getBASE64_INVERSE_ALPHABET$p()[I
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/util/Base64Kt;->BASE64_INVERSE_ALPHABET:[I

    return-object v0
.end method

.method public static final decodeBase64Bytes(Lio/ktor/utils/io/core/ByteReadPacket;)Lio/ktor/utils/io/core/Input;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x4

    :try_start_0
    new-array v8, v1, [B

    .line 92
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    .line 93
    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_1

    .line 156
    aget-byte v6, v8, v3

    add-int/lit8 v7, v5, 0x1

    .line 110
    invoke-static {}, Lio/ktor/util/Base64Kt;->access$getBASE64_INVERSE_ALPHABET$p()[I

    move-result-object v9

    and-int/lit16 v6, v6, 0xff

    aget v6, v9, v6

    int-to-byte v6, v6

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    rsub-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x6

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    rsub-int/lit8 v2, v2, 0x4

    if-gt v2, v3, :cond_0

    :goto_1
    mul-int/lit8 v5, v3, 0x8

    shr-int v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 101
    invoke-virtual {v0, v5}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    if-eq v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p0
.end method

.method public static final decodeBase64Bytes(Ljava/lang/String;)[B
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 384
    :try_start_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_2

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    if-nez v3, :cond_1

    add-int/2addr v1, v2

    .line 386
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_2
    move-object v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    .line 83
    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {p0}, Lio/ktor/util/Base64Kt;->decodeBase64Bytes(Lio/ktor/utils/io/core/ByteReadPacket;)Lio/ktor/utils/io/core/Input;

    move-result-object p0

    invoke-static {p0}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/Input;)[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p0
.end method

.method public static final encodeBase64([B)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    add-int/lit8 v5, v3, 0x3

    .line 36
    array-length v6, p0

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    if-gt v5, v6, :cond_1

    .line 37
    aget-byte v6, p0, v3

    add-int/lit8 v8, v3, 0x1

    .line 38
    aget-byte v8, p0, v8

    add-int/lit8 v3, v3, 0x2

    .line 39
    aget-byte v3, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    move v6, v1

    :goto_1
    const/4 v8, -0x1

    if-ge v8, v6, :cond_0

    mul-int/lit8 v8, v6, 0x6

    shr-int v8, v3, v8

    and-int/lit8 v8, v8, 0x3f

    add-int/lit8 v9, v4, 0x1

    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v0, v4

    add-int/lit8 v6, v6, -0x1

    move v4, v9

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    .line 49
    :cond_1
    array-length v5, p0

    sub-int/2addr v5, v3

    if-nez v5, :cond_2

    .line 50
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 53
    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v2

    goto :goto_2

    .line 55
    :cond_3
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v3, v6

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v8

    :goto_2
    or-int/2addr p0, v2

    rsub-int/lit8 v3, v5, 0x3

    mul-int/lit8 v3, v3, 0x8

    .line 58
    div-int/lit8 v3, v3, 0x6

    if-gt v3, v1, :cond_5

    :goto_3
    mul-int/lit8 v5, v1, 0x6

    shr-int v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v6, v4, 0x1

    .line 107
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v4

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    move v4, v6

    goto :goto_3

    :cond_4
    move v4, v6

    :cond_5
    move p0, v2

    :goto_4
    if-ge p0, v3, :cond_6

    add-int/lit8 v1, v4, 0x1

    const/16 v5, 0x3d

    .line 64
    aput-char v5, v0, v4

    add-int/lit8 p0, p0, 0x1

    move v4, v1

    goto :goto_4

    .line 66
    :cond_6
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
