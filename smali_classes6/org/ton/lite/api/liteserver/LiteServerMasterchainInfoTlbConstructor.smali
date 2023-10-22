.class final Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerMasterchainInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteServerMasterchainInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteServerMasterchainInfo.kt\norg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor\n+ 2 TlReader.kt\norg/ton/tl/TlReaderKt\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n*L\n1#1,60:1\n65#2:61\n65#2:62\n81#3,2:63\n81#3,2:65\n*S KotlinDebug\n*F\n+ 1 LiteServerMasterchainInfo.kt\norg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor\n*L\n48#1:61\n50#1:62\n55#1:63,2\n57#1:65,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.masterchainInfo last:tonNode.blockIdExt state_root_hash:int256 init:tonNode.zeroStateIdExt = liteServer.MasterchainInfo"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 44
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/16 v1, 0x20

    .line 49
    invoke-virtual {p1, v1}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v1

    .line 50
    sget-object v2, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;

    .line 65
    invoke-interface {v2, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    check-cast p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    .line 51
    new-instance v2, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V

    return-object v2
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoTlbConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->getLast()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->getStateRootHash()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    .line 57
    sget-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->getInit()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object p2

    .line 81
    invoke-interface {v0, p1, p2}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method
