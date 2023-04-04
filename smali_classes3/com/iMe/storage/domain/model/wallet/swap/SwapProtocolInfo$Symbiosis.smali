.class public final Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;
.super Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Symbiosis"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 54
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 55
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_symdiosis_92:I

    .line 56
    sget v3, Lcom/iMe/storage/R$string;->wallet_swap_protocols_symbiosis_name:I

    .line 57
    sget v4, Lcom/iMe/storage/R$string;->wallet_swap_protocols_symbiosis_description:I

    .line 58
    sget v5, Lcom/iMe/storage/R$string;->wallet_swap_protocols_symbiosis_long_description:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 59
    sget-object v6, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    sget-object v6, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x1

    aput-object v6, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 53
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
