.class public interface abstract Lcom/iMe/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;
.super Ljava/lang/Object;
.source "BlockchainsManagementView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/manager/wallet/create/WalletCreateManagerView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openBackupScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;)V
.end method

.method public abstract setupWalletsItems(Ljava/util/List;)V
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

.method public abstract showResetAllWalletsConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showWalletDetailsDialog(Lcom/iMe/model/wallet/crypto/settings/BlockchainManagementItem$Wallet;Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showWalletInfoDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method
