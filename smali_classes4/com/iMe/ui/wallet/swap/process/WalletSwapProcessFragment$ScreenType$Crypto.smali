.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;
.super Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crypto"
.end annotation


# instance fields
.field private final forcedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private final swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

.field private final toToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string/jumbo v0, "swapProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 458
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 459
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 460
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->toToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 461
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->forcedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 464
    sget-object p2, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 457
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method


# virtual methods
.method public final getForcedNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->forcedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getFromToken()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->fromToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public final getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getSwapProtocolInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->swapProtocolInfo:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    return-object v0
.end method

.method public final getToToken()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;->toToken:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method
