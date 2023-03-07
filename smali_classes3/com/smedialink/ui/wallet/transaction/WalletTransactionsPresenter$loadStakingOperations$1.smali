.class final Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->loadStakingOperations(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isLoadMore:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->$isLoadMore:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 154
    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->invoke(Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;->getOperations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;->getOperations()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$mapStakingOperationsToGroups(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;->getNextCursor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$setStakingOperationsCursor$p(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/lang/String;)V

    .line 177
    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->$isLoadMore:Z

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v1, v0}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v1, v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;->renderItems(Ljava/util/List;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->$isLoadMore:Z

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    sget-object v1, Lcom/smedialink/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Common;

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$renderGlobalState(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/smedialink/model/state/GlobalState;)V

    .line 185
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/staking/StakingOperationsPaged;->getNextCursor()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    :cond_3
    return-void
.end method
