.class Lorg/telegram/ui/Components/PasscodeView$10;
.super Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1555
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1556
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1559
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1561
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$2102(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_1

    .line 1562
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2200(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 1563
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$2300(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 1574
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    sget v1, Lorg/telegram/messenger/R$string;->FingerprintNotRecognized:I

    const-string v2, "FingerprintNotRecognized"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$2300(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1569
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$2300(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    .line 1580
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1584
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1586
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$2102(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1600(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2400(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2400(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;->onFingerPrintConfirmed(Ljavax/crypto/Cipher;)V

    goto :goto_1

    .line 1591
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$10;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;Z)V

    :goto_1
    return-void
.end method
