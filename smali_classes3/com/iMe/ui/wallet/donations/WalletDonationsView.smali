.class public interface abstract Lcom/iMe/ui/wallet/donations/WalletDonationsView;
.super Ljava/lang/Object;
.source "WalletDonationsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onDonationsAddressLoaded(Ljava/lang/String;)V
.end method

.method public abstract onDonationsTransactionsLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract updateScreenAfterLoad()V
.end method
