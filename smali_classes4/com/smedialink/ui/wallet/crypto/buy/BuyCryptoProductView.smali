.class public interface abstract Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;
.super Ljava/lang/Object;
.source "BuyCryptoProductView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openCustomPriceDialog(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V
.end method

.method public abstract showConfirmDialog(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;Lcom/smedialink/model/dialog/DialogModel;)V
.end method

.method public abstract showErrorPurchase(Ljava/lang/String;)V
.end method

.method public abstract showProcessingUrl(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showRefreshLoading(Z)V
.end method

.method public abstract showSuccessPurchase()V
.end method

.method public abstract showUiItems(Ljava/util/List;)V
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
