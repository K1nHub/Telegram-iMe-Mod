.class public interface abstract Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;
.super Ljava/lang/Object;
.source "WalletAttachAlertView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;
.implements Lcom/iMe/ui/custom/state/GlobalStateView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract showBalances(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showTransactions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation
.end method
