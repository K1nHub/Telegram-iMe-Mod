.class public interface abstract Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;
.super Ljava/lang/Object;
.source "WalletTransactionsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/LoadMoreView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;
.implements Lcom/smedialink/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;",
        "Lcom/smedialink/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/smedialink/ui/base/mvp/SwipeRefreshView;",
        "Lcom/smedialink/ui/base/mvp/SwitchNetworkView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract openStakingOperationDetails(Lcom/smedialink/model/wallet/transaction/StakingOperationItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract renderItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showChangeNetworkHint()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
