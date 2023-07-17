.class public final Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;
.super Ljava/lang/Object;
.source "EnterWalletPinFragment.kt"

# interfaces
.implements Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupPasscodeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerPrintConfirmed(Ljavax/crypto/Cipher;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->unlockWithFingerprint(Ljavax/crypto/Cipher;)V

    return-void
.end method

.method public onForgotPinCodeClicked()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->onForgotPinClick()V

    return-void
.end method

.method public onPinCodeEntered(Ljava/lang/String;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;Z)V

    return-void
.end method
