.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startBinanceReplenishScreen(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletTokenDetailsPresenter.kt\ncom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter\n*L\n1#1,132:1\n745#2,24:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $balanceDisposable$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $replenishNetworkId$inlined:Ljava/lang/String;

.field final synthetic $tokenBalance$inlined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->$balanceDisposable$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    iput-object p3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->$replenishNetworkId$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->$tokenBalance$inlined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->$balanceDisposable$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 136
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 137
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->$tokenBalance$inlined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 136
    :goto_0
    check-cast v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 142
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->binance_replenish_no_token_on_balance:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    .line 147
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->$replenishNetworkId$inlined:Ljava/lang/String;

    .line 145
    invoke-interface {p1, v1, v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;->openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$startBinanceReplenishScreen$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_5
    :goto_1
    return-void
.end method
