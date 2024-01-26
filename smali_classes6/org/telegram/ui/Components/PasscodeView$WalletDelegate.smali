.class public interface abstract Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;
.super Ljava/lang/Object;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WalletDelegate"
.end annotation


# virtual methods
.method public abstract onFingerPrintConfirmed(Ljavax/crypto/Cipher;)V
.end method

.method public abstract onForgotPinCodeClicked()V
.end method

.method public abstract onPinCodeEntered(Ljava/lang/String;)V
.end method
