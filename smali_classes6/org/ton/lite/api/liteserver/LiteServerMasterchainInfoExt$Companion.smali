.class public final Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerMasterchainInfoExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteServerMasterchainInfoExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteServerMasterchainInfoExt.kt\norg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion\n+ 2 TlReader.kt\norg/ton/tl/TlReaderKt\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n*L\n1#1,85:1\n65#2:86\n65#2:87\n81#3,2:88\n81#3,2:90\n*S KotlinDebug\n*F\n+ 1 LiteServerMasterchainInfoExt.kt\norg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion\n*L\n56#1:86\n60#1:87\n77#1:88,2\n81#1:90,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.masterchainInfoExt mode:# version:int capabilities:long last:tonNode.blockIdExt last_utime:int now:int state_root_hash:int256 init:tonNode.zeroStateIdExt = liteServer.MasterchainInfoExt"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 49
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;
    .locals 11

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v2

    .line 54
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v3

    .line 55
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readLong()J

    move-result-wide v4

    .line 56
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    move-object v6, v0

    check-cast v6, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 57
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v7

    .line 58
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v8

    const/16 v0, 0x20

    .line 59
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v9

    .line 60
    sget-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    .line 60
    move-object v10, p1

    check-cast v10, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    .line 61
    new-instance p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;-><init>(IIJLorg/ton/api/tonnode/TonNodeBlockIdExt;II[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 75
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 76
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getCapabilities()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/ton/tl/TlWriter;->writeLong(J)V

    .line 77
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getLast()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getLastUtime()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 79
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getNow()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 80
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getStateRootHash()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    .line 81
    sget-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->getInit()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object p2

    .line 81
    invoke-interface {v0, p1, p2}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$$serializer;

    return-object v0
.end method
