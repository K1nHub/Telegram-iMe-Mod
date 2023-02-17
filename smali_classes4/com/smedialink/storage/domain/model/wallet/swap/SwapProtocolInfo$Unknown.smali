.class public final Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;
.super Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 63
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 68
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 62
    invoke-direct/range {v0 .. v7}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
