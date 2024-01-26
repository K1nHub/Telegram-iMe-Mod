.class public final Lorg/ton/block/AddrStd$Companion;
.super Ljava/lang/Object;
.source "AddrStd.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/AddrStd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/AddrStd;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddrStd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddrStd.kt\norg/ton/block/AddrStd$Companion\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 MemoryPrimitives.kt\nio/ktor/utils/io/bits/MemoryPrimitivesKt\n+ 6 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n*L\n1#1,200:1\n12#2,11:201\n17#3,4:212\n26#4:216\n26#4:217\n28#5:218\n8#6:219\n*S KotlinDebug\n*F\n+ 1 AddrStd.kt\norg/ton/block/AddrStd$Companion\n*L\n88#1:201,11\n145#1:212,4\n146#1:216\n151#1:217\n153#1:218\n153#1:219\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/AddrStdTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/AddrStdTlbConstructor;->INSTANCE:Lorg/ton/block/AddrStdTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/AddrStd$Companion;->$$delegate_0:Lorg/ton/block/AddrStdTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/AddrStd$Companion;-><init>()V

    return-void
.end method

.method private final checksum(BI[B)I
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [[B

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    aput-object v0, v1, v2

    aput-object p3, v1, p2

    .line 168
    invoke-static {v1}, Lorg/ton/crypto/Crc16Kt;->crc16([[B)I

    move-result p1

    return p1
.end method

.method private final tag(ZZ)B
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, -0x80

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/16 p2, 0x11

    goto :goto_1

    :cond_1
    const/16 p2, 0x51

    :goto_1
    or-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrStd$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/AddrStd;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrStd$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrStd;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/AddrStd;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AddrStd$Companion;->$$delegate_0:Lorg/ton/block/AddrStdTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/AddrStd;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrStd;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AddrStd$Companion;->$$delegate_0:Lorg/ton/block/AddrStdTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/AddrStdTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrStd;

    move-result-object p1

    return-object p1
.end method

.method public final parse(Ljava/lang/String;)Lorg/ton/block/AddrStd;
    .locals 4

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 107
    :try_start_0
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrStd$Companion;->parseRaw(Ljava/lang/String;)Lorg/ton/block/AddrStd;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrStd$Companion;->parseUserFriendly(Ljava/lang/String;)Lorg/ton/block/AddrStd;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final parseRaw(Ljava/lang/String;)Lorg/ton/block/AddrStd;
    .locals 7

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 118
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "Failed requirement."

    if-eqz v4, :cond_2

    .line 120
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x40

    if-ne v4, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lorg/ton/block/AddrStd;

    .line 123
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    .line 124
    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/crypto/HexKt;->hex(Ljava/lang/String;)[B

    move-result-object p1

    .line 121
    invoke-direct {v1, v4, p1}, Lorg/ton/block/AddrStd;-><init>(I[B)V

    return-object v1

    .line 120
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parseUserFriendly(Ljava/lang/String;)Lorg/ton/block/AddrStd;
    .locals 12

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x24

    new-array v9, v0, [B

    .line 133
    :try_start_0
    sget-object v1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    invoke-virtual {v1}, Lkotlin/io/encoding/Base64$Default;->getUrlSafe()Lkotlin/io/encoding/Base64;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;[BIIIILjava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    :try_start_1
    sget-object v1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;[BIIIILjava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/16 p1, 0x20

    new-array v2, p1, [B

    const/4 p1, 0x0

    .line 20
    invoke-static {v9, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v1, v8, 0x7f

    int-to-byte v1, v1

    const/16 v3, 0x11

    const/4 v10, 0x1

    if-ne v1, v3, :cond_0

    move v3, v10

    goto :goto_1

    :cond_0
    move v3, p1

    :goto_1
    const/16 v4, 0x51

    if-ne v1, v4, :cond_1

    move v1, v10

    goto :goto_2

    :cond_1
    move v1, p1

    :goto_2
    or-int/2addr v1, v3

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x22

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v9

    .line 152
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    move-result-object v1

    const/16 v2, 0x22

    .line 8
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 28
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 156
    invoke-direct {p0, v8, v11, v1}, Lorg/ton/block/AddrStd$Companion;->checksum(BI[B)I

    move-result v2

    if-ne v0, v2, :cond_2

    move p1, v10

    :cond_2
    if-eqz p1, :cond_3

    .line 161
    new-instance p1, Lorg/ton/block/AddrStd;

    invoke-direct {p1, v11, v1}, Lorg/ton/block/AddrStd;-><init>(I[B)V

    return-object p1

    .line 157
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CRC check failed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown address tag"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/AddrStd;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Lorg/ton/block/AddrStd;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AddrStd$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrStd;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrStd;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AddrStd$Companion;->$$delegate_0:Lorg/ton/block/AddrStdTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/AddrStdTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrStd;)V

    return-void
.end method

.method public final tlbCodec()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/AddrStd;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lorg/ton/block/AddrStdTlbConstructor;->INSTANCE:Lorg/ton/block/AddrStdTlbConstructor;

    return-object v0
.end method

.method public final toString(Lorg/ton/block/AddrStd;ZZZZ)Ljava/lang/String;
    .locals 9

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 83
    invoke-direct {p0, p4, p5}, Lorg/ton/block/AddrStd$Companion;->tag(ZZ)B

    move-result p2

    .line 84
    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->workchainId()I

    move-result p4

    .line 85
    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object p1

    const/4 p5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p5, v0, v1}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object v3

    .line 86
    invoke-direct {p0, p2, p4, v3}, Lorg/ton/block/AddrStd$Companion;->checksum(BI[B)I

    move-result p1

    .line 16
    new-instance v8, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v8, v1, v0, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    :try_start_0
    invoke-virtual {v8, p2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    int-to-byte p2, p4

    .line 90
    invoke-virtual {v8, p2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    .line 91
    invoke-static/range {v2 .. v7}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    int-to-short p1, p1

    .line 92
    invoke-static {v8, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    .line 19
    invoke-virtual {v8}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {p1, p5, v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v3

    if-eqz p3, :cond_0

    .line 96
    sget-object p1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    invoke-virtual {p1}, Lkotlin/io/encoding/Base64$Default;->getUrlSafe()Lkotlin/io/encoding/Base64;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    sget-object v2, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p1

    .line 101
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->workchainId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->toHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
