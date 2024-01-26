.class public final Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;
.super Lcom/iMe/model/wallet/swap/WalletSwapScreenType;
.source "WalletSwapScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/swap/WalletSwapScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crypto"
.end annotation


# instance fields
.field private final forcedNetworkId:Ljava/lang/String;

.field private final fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private final swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

.field private final toToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V
    .locals 1

    const-string v0, "swapProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput-object p1, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 10
    iput-object p2, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 11
    iput-object p3, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->toToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 12
    iput-object p4, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->forcedNetworkId:Ljava/lang/String;

    .line 15
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getForcedNetworkId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->forcedNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getSwapProtocolInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    return-object v0
.end method

.method public final getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;->toToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method
