.class public interface abstract Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;
.super Ljava/lang/Object;
.source "EnterWalletPasswordView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onCodeErrorShake()V
.end method

.method public abstract onSuccessDeleteWallet()V
.end method

.method public abstract onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showDeleteWalletDialog(Lcom/smedialink/model/dialog/DialogModel;)V
.end method

.method public abstract showRestoreWalletScreen(Ljava/lang/String;)V
.end method
