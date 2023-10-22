.class final Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerGetMasterchainInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.getMasterchainInfo = liteServer.MasterchainInfo"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 17
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
