.class public interface abstract Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;
.super Ljava/lang/Object;
.source "TokenManagementView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract copyAddressToClipboard(Ljava/lang/String;)V
.end method

.method public abstract openBrowserUrl(Ljava/lang/String;)V
.end method

.method public abstract resetImportScreen()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setScannedAddressText(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupActionButtonState(ZZ)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupTokenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showDeleteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showEnableConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showTokensListsDialog(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateErrorTextVisibility(Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
