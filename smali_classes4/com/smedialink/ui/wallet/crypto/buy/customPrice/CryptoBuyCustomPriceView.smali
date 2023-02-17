.class public interface abstract Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;
.super Ljava/lang/Object;
.source "CryptoBuyCustomPriceView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
.end method

.method public abstract resetInputError()V
.end method

.method public abstract showConfirmDialog(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract showExchangedValue(F)V
.end method

.method public abstract showInputError(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method
