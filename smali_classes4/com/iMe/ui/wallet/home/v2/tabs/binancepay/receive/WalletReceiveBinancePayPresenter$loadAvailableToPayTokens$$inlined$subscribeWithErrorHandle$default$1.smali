.class public final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->loadAvailableToPayTokens(ZLkotlin/jvm/functions/Function0;)V
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
        "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletReceiveBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter\n*L\n1#1,111:1\n174#2,15:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $endAction$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $withProgress$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->$endAction$inlined:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->$withProgress$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->setAvailablePaymentTokens(Ljava/util/List;)V

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->getAvailablePaymentTokens()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->setSelectableAvailablePaymentTokens(Ljava/util/List;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->$endAction$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 119
    :cond_1
    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_2

    .line 120
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->$withProgress$inlined:Z

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$loadAvailableToPayTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    const-string/jumbo v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
