.class public final Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerAccountState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/LiteServerAccountState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/LiteServerAccountState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteServerAccountState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteServerAccountState.kt\norg/ton/lite/api/liteserver/LiteServerAccountState$Companion\n+ 2 TlReader.kt\norg/ton/tl/TlReaderKt\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n*L\n1#1,66:1\n65#2:67\n65#2:68\n81#3,2:69\n81#3,2:71\n*S KotlinDebug\n*F\n+ 1 LiteServerAccountState.kt\norg/ton/lite/api/liteserver/LiteServerAccountState$Companion\n*L\n49#1:67\n50#1:68\n58#1:69,2\n59#1:71,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.accountState id:tonNode.blockIdExt shardblk:tonNode.blockIdExt shard_proof:bytes proof:bytes state:bytes = liteServer.AccountState"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 45
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerAccountState;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerAccountState;
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    move-object v3, v1

    check-cast v3, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    move-object v4, v0

    check-cast v4, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 51
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object v5

    .line 52
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object v7

    .line 54
    new-instance p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;[B[B[B)V

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerAccountState;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerAccountState;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerAccountState;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getShardProof()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    .line 61
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getProof()[B

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    .line 62
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->getState()[B

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/api/liteserver/LiteServerAccountState;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerAccountState$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerAccountState$$serializer;

    return-object v0
.end method
