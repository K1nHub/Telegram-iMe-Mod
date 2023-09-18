.class public interface abstract Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;
.super Ljava/lang/Object;
.source "CreateWalletPinView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onWalletCreateSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V
.end method

.method public abstract onWalletImportSuccess()V
.end method

.method public abstract onWalletPinCodeChangeSuccess()V
.end method

.method public abstract onWalletPinCodeError()V
.end method
