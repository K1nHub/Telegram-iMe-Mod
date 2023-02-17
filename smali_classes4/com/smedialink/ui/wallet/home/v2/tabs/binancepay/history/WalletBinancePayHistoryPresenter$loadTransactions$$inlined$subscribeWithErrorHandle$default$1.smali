.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->loadTransactions(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletBinancePayHistoryPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter\n*L\n1#1,111:1\n59#2,20:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $forceUpdate$inlined:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->$forceUpdate$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->access$filterTransactionsByTypeIfNeeded(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->access$mapTransactionsToGroups(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;->onLoadedTransactions(Ljava/util/List;)V

    goto :goto_1

    .line 119
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_3

    .line 120
    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->$forceUpdate$inlined:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_1

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onLoadingState()V

    goto :goto_1

    .line 123
    :cond_3
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 124
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {v0}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {v0}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
