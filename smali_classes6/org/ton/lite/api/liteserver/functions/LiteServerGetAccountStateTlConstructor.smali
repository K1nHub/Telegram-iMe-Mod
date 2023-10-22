.class final Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerGetAccountState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteServerGetAccountState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteServerGetAccountState.kt\norg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor\n+ 2 TlReader.kt\norg/ton/tl/TlReaderKt\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n*L\n1#1,37:1\n65#2:38\n65#2:39\n81#3,2:40\n81#3,2:42\n*S KotlinDebug\n*F\n+ 1 LiteServerGetAccountState.kt\norg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor\n*L\n27#1:38\n28#1:39\n33#1:40,2\n34#1:42,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.getAccountState id:tonNode.blockIdExt account:liteServer.accountId = liteServer.AccountState"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 23
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 28
    sget-object v1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;

    .line 65
    invoke-interface {v1, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    .line 29
    new-instance v1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;

    invoke-direct {v1, v0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/lite/api/liteserver/LiteServerAccountId;)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountStateTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;

    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->getAccount()Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    move-result-object p2

    .line 81
    invoke-interface {v0, p1, p2}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method
