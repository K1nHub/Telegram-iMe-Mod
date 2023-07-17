.class public interface abstract Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;
.super Ljava/lang/Object;
.source "CreateWalletIntroView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openAddWalletScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
.end method

.method public abstract openAddressScan(Ljava/lang/String;)V
.end method

.method public abstract openCreateWalletScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
.end method

.method public abstract openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setupScreenData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showCreateNewWalletConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract updateNextButtonLoadingState(Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
