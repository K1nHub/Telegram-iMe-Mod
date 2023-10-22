.class public interface abstract Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;
.super Ljava/lang/Object;
.source "CreateWalletView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract addNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
.end method

.method public abstract createNewWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
.end method

.method public abstract fillEditTexts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract generateAndOpenPdf(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccessConfirmBackUp()V
.end method

.method public abstract onSuccessEnterSeed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWordsCountSelected(I)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showActionError(Ljava/lang/String;)V
.end method

.method public abstract showSelectWordsCountDialog(Lcom/iMe/model/dialog/RadioCellsListDialogModel;)V
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

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract updateLoadingState(Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
