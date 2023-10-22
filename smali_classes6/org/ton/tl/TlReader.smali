.class public final Lorg/ton/tl/TlReader;
.super Ljava/lang/Object;
.source "TlReader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlReader.kt\norg/ton/tl/TlReader\n+ 2 UnsignedTypes.kt\nio/ktor/utils/io/core/UnsignedTypesKt\n*L\n1#1,71:1\n6#2:72\n6#2:73\n6#2:74\n6#2:75\n6#2:76\n6#2:77\n6#2:78\n6#2:79\n6#2:80\n6#2:81\n6#2:82\n*S KotlinDebug\n*F\n+ 1 TlReader.kt\norg/ton/tl/TlReader\n*L\n23#1:72\n28#1:73\n29#1:74\n30#1:75\n33#1:76\n34#1:77\n35#1:78\n36#1:79\n37#1:80\n38#1:81\n39#1:82\n*E\n"
.end annotation


# instance fields
.field private final input:Lio/ktor/utils/io/core/Input;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/core/Input;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    return-void
.end method


# virtual methods
.method public final readByteString()Lorg/ton/tl/ByteString;
    .locals 2

    .line 19
    new-instance v0, Lorg/ton/tl/ByteString;

    invoke-virtual {p0}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ton/tl/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final readByteString(I)Lorg/ton/tl/ByteString;
    .locals 2

    .line 15
    new-instance v0, Lorg/ton/tl/ByteString;

    iget-object v1, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    invoke-static {v1, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/Input;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/tl/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final readBytes()[B
    .locals 8

    .line 23
    iget-object v0, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xfe

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 28
    iget-object v0, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 29
    iget-object v1, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v1

    invoke-static {v1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v1

    invoke-static {v1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x4

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    .line 34
    iget-object v6, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v6

    invoke-static {v6}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v0, v6

    .line 35
    iget-object v3, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v3

    invoke-static {v3}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    .line 36
    iget-object v2, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 37
    iget-object v2, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 38
    iget-object v2, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 39
    iget-object v2, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    .line 6
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v2

    invoke-static {v2}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x8

    .line 46
    :goto_0
    iget-object v2, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    invoke-static {v2, v0}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/Input;I)[B

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 47
    rem-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_4

    .line 48
    iget-object v1, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->readByte()B

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v0

    .line 41
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too big byte array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final readInt()I
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readIntLittleEndian(Lio/ktor/utils/io/core/Input;)I

    move-result v0

    return v0
.end method

.method public final readLong()J
    .locals 2

    .line 11
    iget-object v0, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readLongLittleEndian(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readRaw(I)[B
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/tl/TlReader;->input:Lio/ktor/utils/io/core/Input;

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/Input;I)[B

    move-result-object p1

    return-object p1
.end method

.method public final readString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readVector(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/ton/tl/TlReader;",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 58
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
