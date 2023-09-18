.class public interface abstract Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;
.super Ljava/lang/Object;
.source "EnterWalletPinView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onDeleteWalletSuccess()V
.end method

.method public abstract onPinCodeErrorShake()V
.end method

.method public abstract onSuccessEnterPinCode(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openPasswordEnterScreen()V
.end method

.method public abstract openRestoreWalletScreen(Ljava/lang/String;)V
.end method

.method public abstract showDeleteWalletDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showForgotPasswordOptionsDialog()V
.end method

.method public abstract updateLoadingState(ZZ)V
.end method
