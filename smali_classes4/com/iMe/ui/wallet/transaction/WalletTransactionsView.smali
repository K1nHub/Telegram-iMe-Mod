.class public interface abstract Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;
.super Ljava/lang/Object;
.source "WalletTransactionsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/LoadMoreView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;
.implements Lcom/iMe/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/base/BaseView;",
        "Lcom/iMe/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/iMe/ui/base/mvp/SwipeRefreshView;",
        "Lcom/iMe/ui/base/mvp/SwitchNetworkView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openCryptoBoxActionDetails(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V
.end method

.method public abstract openStakingOperationDetails(Lcom/iMe/model/wallet/transaction/StakingOperationItem;Lcom/iMe/storage/domain/model/crypto/Network;)V
.end method

.method public abstract renderInitialItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
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

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showChangeNetworkHint()V
.end method
