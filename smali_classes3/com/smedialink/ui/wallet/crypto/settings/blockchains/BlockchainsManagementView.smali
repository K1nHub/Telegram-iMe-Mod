.class public interface abstract Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;
.super Ljava/lang/Object;
.source "BlockchainsManagementView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openBackupScreen(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setupWalletsItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showResetAllWalletsConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V
.end method

.method public abstract showWalletDetailsDialog(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/smedialink/model/dialog/DialogModel;)V
.end method

.method public abstract showWalletInfoDialog(Lcom/smedialink/model/dialog/DialogModel;)V
.end method
