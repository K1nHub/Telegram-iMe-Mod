.class public interface abstract Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;
.super Ljava/lang/Object;
.source "WalletAirdropDialogView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract configureDialogState(ZZLcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;I)V
.end method

.method public abstract onAcceptAirdrop()V
.end method

.method public abstract onSuccessClaimAirdrop(Ljava/lang/String;Ljava/lang/String;)V
.end method
