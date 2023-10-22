.class final Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "TonNodeBlockIdExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-direct {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tonNode.blockIdExt workchain:int shard:long seqno:int root_hash:int256 file_hash:int256 = tonNode.BlockIdExt"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 103
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v2

    .line 108
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readLong()J

    move-result-wide v3

    .line 109
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v5

    const/16 v0, 0x20

    .line 110
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v6

    .line 111
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v7

    .line 112
    new-instance p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(IJI[B[B)V

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 117
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/ton/tl/TlWriter;->writeLong(J)V

    .line 118
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 119
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash()Lorg/ton/tl/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    .line 120
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash()Lorg/ton/tl/ByteString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    return-void
.end method
