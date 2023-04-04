.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;
.super Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# instance fields
.field private final fromToken:Lcom/iMe/model/wallet/select/SelectableToken;

.field private final toToken:Lcom/iMe/model/wallet/select/SelectableToken;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/model/wallet/select/SelectableToken;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 469
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->fromToken:Lcom/iMe/model/wallet/select/SelectableToken;

    .line 470
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->toToken:Lcom/iMe/model/wallet/select/SelectableToken;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/model/wallet/select/SelectableToken;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 468
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/model/wallet/select/SelectableToken;)V

    return-void
.end method


# virtual methods
.method public final getFromToken()Lcom/iMe/model/wallet/select/SelectableToken;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->fromToken:Lcom/iMe/model/wallet/select/SelectableToken;

    return-object v0
.end method

.method public final getToToken()Lcom/iMe/model/wallet/select/SelectableToken;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;->toToken:Lcom/iMe/model/wallet/select/SelectableToken;

    return-object v0
.end method
