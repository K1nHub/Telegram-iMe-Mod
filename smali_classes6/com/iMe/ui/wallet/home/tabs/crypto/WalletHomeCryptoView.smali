.class public interface abstract Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;
.super Ljava/lang/Object;
.source "WalletHomeCryptoView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;
.implements Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
.implements Lmoxy/MvpView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openHistoryScreen()V
.end method

.method public abstract openSendScreen()V
.end method

.method public abstract openTokenSettingsScreen(Ljava/lang/String;)V
.end method

.method public abstract renderNodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showAddressMismatchScreen()V
.end method

.method public abstract showChangeNetworkHint()V
.end method

.method public abstract showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;",
            "Lcom/iMe/model/wallet/home/NetworkChoosePurpose;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)V
.end method

.method public abstract showSelectTokensOrderTypeDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)V
.end method

.method public abstract showWalletAddressScan(Ljava/lang/String;)V
.end method
