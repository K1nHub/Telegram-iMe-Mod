.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;->$args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$1$1$3;->$args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v1, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->access$startBinanceReceiveScreen(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    return-void
.end method
