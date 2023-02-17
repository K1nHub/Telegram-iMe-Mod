.class public final Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;
.super Ljava/lang/Object;
.source "EnterWalletPinFragment.kt"

# interfaces
.implements Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupPasscodeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerPrintConfirmed(Ljavax/crypto/Cipher;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->unlockWithFingerprint(Ljavax/crypto/Cipher;)V

    return-void
.end method

.method public onForgotPinCodeClicked()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$onForgotPinClick(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    return-void
.end method

.method public onPinCodeEntered(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;)V

    return-void
.end method
