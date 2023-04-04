.class public final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->loadMoreTransactions(Ljava/lang/String;)V
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
        "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletBinancePayHistoryPresenter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter\n*L\n1#1,111:1\n91#2,15:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->access$filterTransactionsByTypeIfNeeded(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->access$mapTransactionsToGroups(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 120
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    .line 122
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
