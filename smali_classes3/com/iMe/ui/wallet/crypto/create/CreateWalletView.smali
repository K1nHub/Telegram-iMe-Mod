.class public interface abstract Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;
.super Ljava/lang/Object;
.source "CreateWalletView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract createNewWallet()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract createNewWalletWithPassword(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract onSuccessConfirmBackUp()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract onSuccessEnterSeed(Ljava/lang/String;)V
.end method

.method public abstract setWalletAddress(Ljava/lang/String;)V
.end method

.method public abstract showWordsSuggestions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
